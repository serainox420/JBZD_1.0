package com.flurry.sdk;

import com.flurry.sdk.ip;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.net.SocketTimeoutException;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class io extends kx<ip> {

    /* renamed from: a  reason: collision with root package name */
    public static long f2855a;
    private static final String e = io.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v26, types: [byte[], RequestObjectType] */
    @Override // com.flurry.sdk.kx
    public final /* synthetic */ void a(ip ipVar) {
        final ip ipVar2 = ipVar;
        km.a(3, e, "Sending next pulse report to " + ipVar2.k + " at: " + ipVar2.r);
        jk.a();
        long c = jk.c();
        if (c == 0) {
            c = f2855a;
        }
        jk.a();
        long f = jk.f();
        if (f == 0) {
            f = System.currentTimeMillis() - c;
        }
        final iq iqVar = new iq(ipVar2, c, f, ipVar2.p);
        ks ksVar = new ks();
        ksVar.f = ipVar2.r;
        ksVar.w = 100000;
        if (ipVar2.e.equals(iw.POST)) {
            ksVar.c = new lc();
            if (ipVar2.j != null) {
                ksVar.b = ipVar2.j.getBytes();
            }
            ksVar.g = ku.a.kPost;
        } else {
            ksVar.g = ku.a.kGet;
        }
        ksVar.h = ipVar2.h * 1000;
        ksVar.i = ipVar2.i * 1000;
        ksVar.l = true;
        ksVar.r = true;
        ksVar.s = (ipVar2.h + ipVar2.i) * 1000;
        Map<String, String> map = ipVar2.f;
        if (map != null) {
            for (String str : ipVar2.f.keySet()) {
                ksVar.a(str, map.get(str));
            }
        }
        ksVar.j = false;
        ksVar.f2978a = new ks.a<byte[], String>() { // from class: com.flurry.sdk.io.2
            @Override // com.flurry.sdk.ks.a
            public final /* synthetic */ void a(ks<byte[], String> ksVar2, String str2) {
                boolean z = false;
                String str3 = str2;
                km.a(3, io.e, "Pulse report to " + ipVar2.k + " for " + ipVar2.m.c + ", HTTP status code is: " + ksVar2.p);
                int i = ksVar2.p;
                iq iqVar2 = iqVar;
                int i2 = (int) ksVar2.n;
                if (i2 < 0) {
                    if (iqVar2.k <= 0) {
                        iqVar2.k = 0L;
                    }
                } else {
                    iqVar2.k = i2 + iqVar2.k;
                }
                iqVar.e = i;
                if (ksVar2.c()) {
                    if (i >= 200 && i < 300) {
                        io.b(io.this, iqVar, ipVar2);
                        return;
                    } else if (i >= 300 && i < 400) {
                        io.a(io.this, iqVar, ipVar2, ksVar2);
                        return;
                    } else {
                        km.a(3, io.e, ipVar2.m.c + " report failed sending to : " + ipVar2.k);
                        io.a(io.this, iqVar, ipVar2, str3);
                        return;
                    }
                }
                Exception exc = ksVar2.o;
                boolean z2 = ksVar2.o != null && (ksVar2.o instanceof SocketTimeoutException);
                if (ksVar2.t || z2) {
                    z = true;
                }
                if (z) {
                    if (ksVar2.e()) {
                        km.a(3, io.e, "Timeout occured when trying to connect to: " + ipVar2.k + ". Exception: " + ksVar2.o.getMessage());
                    } else {
                        km.a(3, io.e, "Manually managed http request timeout occured for: " + ipVar2.k);
                    }
                    io.a(io.this, iqVar, ipVar2);
                    return;
                }
                km.a(3, io.e, "Error occured when trying to connect to: " + ipVar2.k + ". Exception: " + exc.getMessage());
                io.a(io.this, iqVar, ipVar2, str3);
            }
        };
        jw.a().a((Object) this, (io) ksVar);
    }

    public io() {
        kx.b = NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;
        this.d = kx.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.kx
    public final kf<List<ip>> a() {
        return new kf<>(jy.a().f2947a.getFileStreamPath(".yflurryanpulsecallbackreporter"), ".yflurryanpulsecallbackreporter", 2, new lj<List<ip>>() { // from class: com.flurry.sdk.io.1
            @Override // com.flurry.sdk.lj
            public final lg<List<ip>> a(int i) {
                return new lf(new ip.a());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.kx
    public final synchronized void a(List<ip> list) {
        is.a().c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.kx
    public final synchronized void b(List<ip> list) {
        is.a();
        List<it> d = is.d();
        if (d != null && d.size() != 0) {
            km.a(3, e, "Restoring " + d.size() + " from report queue.");
            for (it itVar : d) {
                is.a().b(itVar);
            }
            is.a();
            for (it itVar2 : is.b()) {
                for (ip ipVar : itVar2.a()) {
                    if (!ipVar.l) {
                        km.a(3, e, "Callback for " + ipVar.m.c + " to " + ipVar.k + " not completed.  Adding to reporter queue.");
                        list.add(ipVar);
                    }
                }
            }
        }
    }

    static /* synthetic */ void a(io ioVar, iq iqVar, ip ipVar) {
        is.a().b(iqVar);
        ioVar.c((io) ipVar);
    }

    static /* synthetic */ void a(io ioVar, iq iqVar, ip ipVar, String str) {
        boolean b = is.a().b(iqVar, str);
        km.a(3, e, "Failed report retrying: " + b);
        if (b) {
            ioVar.d(ipVar);
        } else {
            ioVar.c((io) ipVar);
        }
    }

    static /* synthetic */ void b(io ioVar, iq iqVar, ip ipVar) {
        km.a(3, e, ipVar.m.c + " report sent successfully to : " + ipVar.k);
        is.a().a(iqVar);
        ioVar.c((io) ipVar);
    }

    static /* synthetic */ void a(io ioVar, iq iqVar, ip ipVar, ks ksVar) {
        String str = null;
        List<String> a2 = ksVar.a("Location");
        if (a2 != null && a2.size() > 0) {
            str = mc.b(a2.get(0), ipVar.q);
        }
        boolean a3 = is.a().a(iqVar, str);
        if (a3) {
            km.a(3, e, "Received redirect url. Retrying: " + str);
        } else {
            km.a(3, e, "Received redirect url. Retrying: false");
        }
        if (!a3) {
            ioVar.c((io) ipVar);
            return;
        }
        ipVar.r = str;
        ksVar.f = str;
        if (ksVar.q != null && ksVar.q.f2959a.containsKey("Location")) {
            ksVar.q.b("Location");
        }
        jw.a().a((Object) ioVar, (io) ksVar);
    }
}
