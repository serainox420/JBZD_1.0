package okhttp3.internal.connection;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import okhttp3.Address;
import okhttp3.HttpUrl;
import okhttp3.Route;
import okhttp3.internal.Util;
/* loaded from: classes3.dex */
public final class RouteSelector {
    private final Address address;
    private InetSocketAddress lastInetSocketAddress;
    private Proxy lastProxy;
    private int nextInetSocketAddressIndex;
    private int nextProxyIndex;
    private final RouteDatabase routeDatabase;
    private List<Proxy> proxies = Collections.emptyList();
    private List<InetSocketAddress> inetSocketAddresses = Collections.emptyList();
    private final List<Route> postponedRoutes = new ArrayList();

    public RouteSelector(Address address, RouteDatabase routeDatabase) {
        this.address = address;
        this.routeDatabase = routeDatabase;
        resetNextProxy(address.url(), address.proxy());
    }

    public boolean hasNext() {
        return hasNextInetSocketAddress() || hasNextProxy() || hasNextPostponed();
    }

    public Route next() throws IOException {
        if (!hasNextInetSocketAddress()) {
            if (!hasNextProxy()) {
                if (!hasNextPostponed()) {
                    throw new NoSuchElementException();
                }
                return nextPostponed();
            }
            this.lastProxy = nextProxy();
        }
        this.lastInetSocketAddress = nextInetSocketAddress();
        Route route = new Route(this.address, this.lastProxy, this.lastInetSocketAddress);
        if (this.routeDatabase.shouldPostpone(route)) {
            this.postponedRoutes.add(route);
            return next();
        }
        return route;
    }

    public void connectFailed(Route route, IOException iOException) {
        if (route.proxy().type() != Proxy.Type.DIRECT && this.address.proxySelector() != null) {
            this.address.proxySelector().connectFailed(this.address.url().uri(), route.proxy().address(), iOException);
        }
        this.routeDatabase.failed(route);
    }

    private void resetNextProxy(HttpUrl httpUrl, Proxy proxy) {
        List<Proxy> immutableList;
        if (proxy != null) {
            this.proxies = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.address.proxySelector().select(httpUrl.uri());
            if (select != null && !select.isEmpty()) {
                immutableList = Util.immutableList(select);
            } else {
                immutableList = Util.immutableList(Proxy.NO_PROXY);
            }
            this.proxies = immutableList;
        }
        this.nextProxyIndex = 0;
    }

    private boolean hasNextProxy() {
        return this.nextProxyIndex < this.proxies.size();
    }

    private Proxy nextProxy() throws IOException {
        if (!hasNextProxy()) {
            throw new SocketException("No route to " + this.address.url().host() + "; exhausted proxy configurations: " + this.proxies);
        }
        List<Proxy> list = this.proxies;
        int i = this.nextProxyIndex;
        this.nextProxyIndex = i + 1;
        Proxy proxy = list.get(i);
        resetNextInetSocketAddress(proxy);
        return proxy;
    }

    private void resetNextInetSocketAddress(Proxy proxy) throws IOException {
        int port;
        String str;
        this.inetSocketAddresses = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            String host = this.address.url().host();
            port = this.address.url().port();
            str = host;
        } else {
            SocketAddress address = proxy.address();
            if (!(address instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
            String hostString = getHostString(inetSocketAddress);
            port = inetSocketAddress.getPort();
            str = hostString;
        }
        if (port < 1 || port > 65535) {
            throw new SocketException("No route to " + str + ":" + port + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.inetSocketAddresses.add(InetSocketAddress.createUnresolved(str, port));
        } else {
            List<InetAddress> lookup = this.address.dns().lookup(str);
            int size = lookup.size();
            for (int i = 0; i < size; i++) {
                this.inetSocketAddresses.add(new InetSocketAddress(lookup.get(i), port));
            }
        }
        this.nextInetSocketAddressIndex = 0;
    }

    static String getHostString(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    private boolean hasNextInetSocketAddress() {
        return this.nextInetSocketAddressIndex < this.inetSocketAddresses.size();
    }

    private InetSocketAddress nextInetSocketAddress() throws IOException {
        if (!hasNextInetSocketAddress()) {
            throw new SocketException("No route to " + this.address.url().host() + "; exhausted inet socket addresses: " + this.inetSocketAddresses);
        }
        List<InetSocketAddress> list = this.inetSocketAddresses;
        int i = this.nextInetSocketAddressIndex;
        this.nextInetSocketAddressIndex = i + 1;
        return list.get(i);
    }

    private boolean hasNextPostponed() {
        return !this.postponedRoutes.isEmpty();
    }

    private Route nextPostponed() {
        return this.postponedRoutes.remove(0);
    }
}
