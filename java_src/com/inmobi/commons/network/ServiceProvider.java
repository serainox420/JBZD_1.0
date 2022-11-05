package com.inmobi.commons.network;

import com.inmobi.commons.network.abstraction.INetworkListener;
import com.inmobi.commons.network.abstraction.INetworkServiceProvider;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public class ServiceProvider implements INetworkServiceProvider {

    /* renamed from: a  reason: collision with root package name */
    private static ServiceProvider f3817a;
    private ExecutorService b = Executors.newFixedThreadPool(15);

    private ServiceProvider() {
    }

    public static ServiceProvider getInstance() {
        if (f3817a == null) {
            synchronized (ServiceProvider.class) {
                if (f3817a == null) {
                    f3817a = new ServiceProvider();
                }
            }
        }
        return f3817a;
    }

    @Override // com.inmobi.commons.network.abstraction.INetworkServiceProvider
    public void executeTask(Request request, INetworkListener iNetworkListener) {
        this.b.execute(new NetworkRequestTask(request, iNetworkListener));
    }
}
