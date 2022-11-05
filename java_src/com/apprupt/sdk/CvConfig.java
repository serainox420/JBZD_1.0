package com.apprupt.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.Q;
import com.apprupt.sdk.URLRequest;
import io.fabric.sdk.android.services.b.b;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class CvConfig {
    private static final Logger.log j = Logger.a("Q");

    /* renamed from: a  reason: collision with root package name */
    final String f1756a;
    private final Logger.log i = Logger.a("CvConfig");
    private final Handler k = new Handler(Looper.getMainLooper());
    private final SerialExecutor l = new SerialExecutor();
    private final Queue<Runnable> m = new ArrayDeque();
    private final List<Listener> n = new ArrayList();
    private final List<PropertiesProvider> o = new ArrayList();
    private volatile Q p = null;
    private Context q = null;
    private volatile long r = 0;
    private volatile long s = 0;
    private volatile int t = 0;
    private volatile SimpleJSON u = new SimpleJSON();
    private volatile String v = null;
    final Q.Task b = new Q.Task() { // from class: com.apprupt.sdk.CvConfig.7
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, final Q.Resolver resolver) throws Exception {
            boolean z;
            boolean z2 = false;
            CvConfig.this.i.a("Preparing params");
            CvUnderscore a2 = CvUnderscore.b().a("sdkVersion", CvConfig.this.f1756a).a("bundle", String.format("android.%s", CvConfig.this.c()));
            Q a3 = Q.a(a2);
            Iterator it = CvConfig.this.o.iterator();
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                Q.Task a4 = ((PropertiesProvider) it.next()).a();
                if (a4 != null) {
                    a3.b(a4);
                    z2 = true;
                } else {
                    z2 = z;
                }
            }
            if (z) {
                a3.a(new Q.SuccessHandler() { // from class: com.apprupt.sdk.CvConfig.7.2
                    @Override // com.apprupt.sdk.Q.SuccessHandler
                    public void a(Object obj2) {
                        resolver.a(obj2);
                    }
                }).a(new Q.FailureHandler() { // from class: com.apprupt.sdk.CvConfig.7.1
                    @Override // com.apprupt.sdk.Q.FailureHandler
                    public void a(Throwable th, Object obj2) {
                        resolver.a(th, obj2);
                    }
                });
            } else {
                resolver.a(a2);
            }
        }
    };
    final Q.Task c = new Q.Task() { // from class: com.apprupt.sdk.CvConfig.8
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            CvConfig.this.i.a("Requesting config");
            CvConfig.j.a("Resolve: load config, result: <URLRequest>");
            resolver.a(URLRequest.b(CvUrl.a("/mCfg")).a(b.ROLL_OVER_FILE_NAME_SEPARATOR, (Object) ((CvUnderscore) obj).toString()).c());
        }
    };
    final Q.Task d = new Q.Task() { // from class: com.apprupt.sdk.CvConfig.9
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            CvConfig.this.i.a("Config decode");
            URLRequest.URLResponse uRLResponse = (URLRequest.URLResponse) obj;
            CvConfig.this.i.d("Decoding response data", Integer.valueOf(uRLResponse.c.length()), uRLResponse.c);
            byte[] a2 = CvCrypto.a(uRLResponse.c);
            if (a2 == null || a2.length == 0) {
                throw new Exception("Cannot decode response data");
            }
            String str = new String(a2);
            if (str.length() == 0) {
                throw new Exception("Cannot decode response data!");
            }
            CvConfig.this.i.a("Resolve: decode config:", str);
            resolver.a(str);
        }
    };
    final Q.Task e = new Q.Task() { // from class: com.apprupt.sdk.CvConfig.10
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            CvConfig.this.i.a("Parsing config...");
            String str = (String) obj;
            if (str.equals("null") || !str.startsWith("{") || !str.endsWith("}")) {
                throw new Exception("Cannot parse response - invalid JSON string");
            }
            SimpleJSON simpleJSON = new SimpleJSON(new JSONObject(str));
            SimpleJSON a2 = simpleJSON.a("mediation", new SimpleJSON("{\"dummy\":true}"));
            if (a2 == null || a2.a("dummy", false) || !a2.f("adapters")) {
                SimpleJSON simpleJSON2 = new SimpleJSON();
                simpleJSON2.a("mediation", simpleJSON.f1969a);
                simpleJSON = simpleJSON2;
            }
            CvConfig.this.i.a("Resolve: parse config:", simpleJSON);
            resolver.a(simpleJSON);
        }
    };
    final Q.Task f = new Q.Task() { // from class: com.apprupt.sdk.CvConfig.11
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            SimpleJSON simpleJSON = (SimpleJSON) obj;
            try {
                FileOutputStream openFileOutput = CvConfig.this.q.openFileOutput(CvConfig.this.a(), 0);
                openFileOutput.write(simpleJSON.toString().getBytes());
                openFileOutput.close();
            } catch (Exception e) {
                CvConfig.this.i.d("Cannot write config file, skipping");
            }
            resolver.a(simpleJSON);
        }
    };
    final Q.Task g = new Q.Task() { // from class: com.apprupt.sdk.CvConfig.12
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            FileInputStream openFileInput = CvConfig.this.q.openFileInput(CvConfig.this.a());
            StringBuilder sb = new StringBuilder();
            while (true) {
                int read = openFileInput.read();
                if (read != -1) {
                    sb.append((char) read);
                } else {
                    openFileInput.close();
                    resolver.a(sb.toString());
                    return;
                }
            }
        }
    };
    final Q.SuccessHandler h = new Q.SuccessHandler() { // from class: com.apprupt.sdk.CvConfig.14
        @Override // com.apprupt.sdk.Q.SuccessHandler
        public void a(final Object obj) {
            CvConfig.this.l.execute(new Runnable() { // from class: com.apprupt.sdk.CvConfig.14.1
                @Override // java.lang.Runnable
                public void run() {
                    CvConfig.this.u = (SimpleJSON) obj;
                    CvConfig.this.p = null;
                    CvConfig.this.i.a("Calling listeners");
                    for (Listener listener : CvConfig.this.n) {
                        CvConfig.this.i.a("Calling listener...");
                        CvConfig.this.b(listener);
                    }
                    CvConfig.this.i.a("Calling waiting objects");
                    while (CvConfig.this.m.size() > 0) {
                        CvConfig.this.i.a("Calling waiting  object...");
                        CvConfig.this.k.post((Runnable) CvConfig.this.m.poll());
                    }
                    CvConfig.this.i.b("Config done! next reload:", Long.valueOf(CvConfig.this.s));
                }
            });
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface Listener {
        void a(CvConfig cvConfig);
    }

    /* loaded from: classes.dex */
    interface PropertiesProvider {
        Q.Task a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvConfig(String str) {
        this.f1756a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final Context context) {
        this.i.a("Initializing config...");
        this.l.execute(new Runnable() { // from class: com.apprupt.sdk.CvConfig.1
            @Override // java.lang.Runnable
            public void run() {
                CvConfig.this.i.b("Config initialized");
                CvConfig.this.q = context.getApplicationContext();
                CvConfig.this.a((Runnable) null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final Listener listener) {
        this.l.execute(new Runnable() { // from class: com.apprupt.sdk.CvConfig.2
            @Override // java.lang.Runnable
            public void run() {
                CvConfig.this.n.add(listener);
                final int i = CvConfig.this.t + 0;
                if (CvConfig.this.p == null) {
                    CvConfig.this.a(new Runnable() { // from class: com.apprupt.sdk.CvConfig.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (CvConfig.this.t == i) {
                                listener.a(CvConfig.this);
                            }
                        }
                    });
                }
            }
        });
    }

    /* renamed from: com.apprupt.sdk.CvConfig$3  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Listener f1766a;
        final /* synthetic */ CvConfig b;

        @Override // java.lang.Runnable
        public void run() {
            this.b.n.remove(this.f1766a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final Runnable runnable) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.apprupt.sdk.CvConfig.4
            @Override // java.lang.Runnable
            public void run() {
                boolean z = true;
                synchronized (CvConfig.this) {
                    CvConfig.this.i.a("do check...");
                    if (CvConfig.this.s > System.currentTimeMillis()) {
                        z = false;
                    }
                    if (CvConfig.this.p == null && !z) {
                        if (runnable != null) {
                            CvConfig.this.k.post(runnable);
                        }
                        return;
                    }
                    if (runnable != null) {
                        CvConfig.this.m.offer(runnable);
                    }
                    if (CvConfig.this.q != null && CvConfig.this.p == null && z) {
                        CvConfig.this.e();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() {
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        this.i.a("Creating q..." + this.p);
        this.p = new Q();
        this.i.a("Adding steps:");
        this.i.a(" - prepare params");
        this.p.b(this.b);
        this.i.a(" - request config");
        this.p.b(this.c);
        this.i.a(" - decode data");
        this.p.b(this.d);
        this.i.a(" - parse data");
        this.p.b(this.e);
        this.i.a(" - save data to files");
        this.p.b(this.f);
        this.i.a("Add error handler");
        this.p.a(new Q.FailureHandler() { // from class: com.apprupt.sdk.CvConfig.5
            @Override // com.apprupt.sdk.Q.FailureHandler
            public void a(Throwable th, Object obj) {
                CvConfig.this.i.b(th, "Cannot load mCfg");
                CvConfig.this.s = System.currentTimeMillis() + 1800000;
                Q.a(CvConfig.this.g).b(CvConfig.this.e).a(new Q.FailureHandler() { // from class: com.apprupt.sdk.CvConfig.5.1
                    @Override // com.apprupt.sdk.Q.FailureHandler
                    public void a(Throwable th2, Object obj2) {
                        CvConfig.this.i.b(th2, "Cannot restore mCfg");
                        CvConfig.this.h.a(new SimpleJSON());
                    }
                }).a(CvConfig.this.h);
            }
        });
        this.i.a("Add success handler");
        this.p.a(new Q.SuccessHandler() { // from class: com.apprupt.sdk.CvConfig.6
            @Override // com.apprupt.sdk.Q.SuccessHandler
            public void a(Object obj) {
                CvConfig.this.i.b("Config loaded successfully");
                CvConfig.this.r = System.currentTimeMillis();
                CvConfig.this.s = CvConfig.this.r + 28800000;
                CvConfig.this.h.a(obj);
            }
        });
        this.i.a("Loading configuration");
    }

    String a() {
        return String.format("com.apprupt.config-%s", this.q.getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final Listener listener) {
        this.k.post(new Runnable() { // from class: com.apprupt.sdk.CvConfig.13
            @Override // java.lang.Runnable
            public void run() {
                listener.a(CvConfig.this);
            }
        });
    }

    public long b() {
        return this.r;
    }

    public SimpleJSON a(String str) {
        if (this.u == null) {
            return new SimpleJSON();
        }
        if (!this.u.f(str) || this.u.e(str) == null) {
            this.u.a(str, (Object) new SimpleJSON());
        }
        return this.u.e(str);
    }

    String c() {
        return this.v == null ? this.q.getApplicationContext().getPackageName() : this.v;
    }
}
