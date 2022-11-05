package com.apprupt.sdk;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.apprupt.sdk.CvConfig;
import com.apprupt.sdk.CvContentManager;
import com.apprupt.sdk.CvMediator;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.Q;
import com.apprupt.sdk.mediation.AdWrapper;
import com.apprupt.sdk.mediation.Adapter;
import com.apprupt.sdk.mediation.InlineAdWrapper;
import com.apprupt.sdk.mediation.InterstitialAdWrapper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class CvMediation {
    private static final Logger.log f = Logger.a("Mediation");
    private static final Logger.log g = Logger.a("Q");
    private static final HashMap<String, ArrayList<AdWrapper>> h = new HashMap<>();
    private final Logger.log e = Logger.a("Lifecycle.Mediation");
    private final HashMap<String, Adapter> i = new HashMap<>();
    private HashMap<String, List<String>> j = new HashMap<>();
    private volatile boolean k = false;
    private Q l = null;
    private final Handler m = new Handler();

    /* renamed from: a  reason: collision with root package name */
    final MediationConfig f1855a = new MediationConfig();
    private long n = -1;
    final Q.Task b = new Q.Task() { // from class: com.apprupt.sdk.CvMediation.4
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            CvMediation.f.a("Processing adapters config...");
            SimpleJSON simpleJSON = (SimpleJSON) obj;
            SimpleJSON e = simpleJSON.e("adapters");
            if (e != null) {
                JSONArray a2 = e.a();
                for (int i = 0; i < a2.length(); i++) {
                    String str = (String) a2.get(i);
                    if (CvMediation.this.i.containsKey(str)) {
                        CvMediation.this.e.b("Configuration for", str);
                        ((Adapter) CvMediation.this.i.get(str)).a(e.e(str).f1969a);
                    }
                }
            }
            CvMediation.g.a("Resolve: process adapters config:", simpleJSON);
            resolver.a(simpleJSON);
        }
    };
    final Q.Task c = new Q.Task() { // from class: com.apprupt.sdk.CvMediation.5
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            CvMediation.f.a("Processing order config...");
            SimpleJSON simpleJSON = (SimpleJSON) obj;
            SimpleJSON e = simpleJSON.e("order");
            if (e != null) {
                CvMediation.this.j.clear();
                JSONArray a2 = e.a();
                for (int i = 0; i < a2.length(); i++) {
                    String string = a2.getString(i);
                    CvMediation.this.j.put(string, e.a(string, (List<String>) new ArrayList()));
                }
            }
            if (!CvMediation.this.j.containsKey("__default__")) {
                CvMediation.this.j.put("__default__", new ArrayList(Arrays.asList(Adapter.Info.defaultOrder())));
            }
            CvMediation.g.a("Resolve: process order config:", simpleJSON);
            resolver.a(simpleJSON);
        }
    };
    final Q.Task d = new Q.Task() { // from class: com.apprupt.sdk.CvMediation.6
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            SimpleJSON simpleJSON = (SimpleJSON) obj;
            CvMediation.f.a("Processing ve config...", simpleJSON.toString());
            CvSDK.d.a(simpleJSON.e("valueExchange"));
            resolver.a(simpleJSON);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvMediation() {
        this.j.put("__default__", new ArrayList(Arrays.asList(Adapter.Info.defaultOrder())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity) {
        if (this.k) {
            f.a("Mediation already initialized, skipping");
        } else {
            f.b("Initializing mediation module");
            b(activity);
            this.k = true;
        }
        CvSDK.b.a(new CvConfig.Listener() { // from class: com.apprupt.sdk.CvMediation.1
            @Override // com.apprupt.sdk.CvConfig.Listener
            public void a(CvConfig cvConfig) {
                CvMediation.this.a(cvConfig.a("mediation"), cvConfig.b());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final SimpleJSON simpleJSON, final long j) {
        f.d("Configure mediation", simpleJSON.toString());
        this.m.post(new Runnable() { // from class: com.apprupt.sdk.CvMediation.2
            @Override // java.lang.Runnable
            public void run() {
                if (j > CvMediation.this.n) {
                    CvMediation.this.n = j;
                    CvMediation.this.l = Q.a(simpleJSON).b(CvMediation.this.b).b(CvMediation.this.c).b(CvMediation.this.d).a(new Q.SuccessHandler() { // from class: com.apprupt.sdk.CvMediation.2.2
                        @Override // com.apprupt.sdk.Q.SuccessHandler
                        public void a(Object obj) {
                            CvMediation.f.b("Mediation initialized!");
                        }
                    }).a(new Q.FailureHandler() { // from class: com.apprupt.sdk.CvMediation.2.1
                        @Override // com.apprupt.sdk.Q.FailureHandler
                        public void a(Throwable th, Object obj) {
                            CvMediation.f.c(th, "Cannot initialize mediaition");
                        }
                    });
                }
            }
        });
    }

    private void b(Activity activity) {
        Adapter.Info[] values;
        f.b("Searching for adapters");
        for (Adapter.Info info : Adapter.Info.values()) {
            String className = info.toClassName();
            try {
                Adapter adapter = (Adapter) Class.forName(className).newInstance();
                adapter.a(activity);
                if (adapter.b()) {
                    f.b("Found active adapter:", className);
                    this.i.put(info.toString(), adapter);
                } else {
                    f.b("Found adapter but it is inactive", className);
                }
            } catch (ClassNotFoundException e) {
                f.a("Adapter not found:", className);
            } catch (Exception e2) {
                f.c(e2, new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Runnable runnable) {
        if (!this.k) {
            throw new InternalError("CvSDK has not been initialized yet! Run CvSDK.initialize(Activity mainActivity) first.");
        }
        CvSDK.b.a(new AnonymousClass3(runnable));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apprupt.sdk.CvMediation$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f1860a;

        AnonymousClass3(Runnable runnable) {
            this.f1860a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            CvMediation.this.m.post(new Runnable() { // from class: com.apprupt.sdk.CvMediation.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (CvMediation.this.l != null) {
                        CvMediation.this.l.a(new Q.CompletionHandler() { // from class: com.apprupt.sdk.CvMediation.3.1.1
                            @Override // com.apprupt.sdk.Q.CompletionHandler
                            public void a(Throwable th, Object obj) {
                                AnonymousClass3.this.f1860a.run();
                            }
                        });
                    } else {
                        AnonymousClass3.this.f1860a.run();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, Adapter> d() {
        return new HashMap<>(this.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Adapter> a(String str, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        if (strArr == null) {
            for (String str2 : this.j.containsKey(str) ? this.j.get(str) : this.j.get("__default__")) {
                if (this.i.containsKey(str2)) {
                    arrayList.add(this.i.get(str2));
                }
            }
        } else {
            for (String str3 : strArr) {
                if (this.i.containsKey(str3)) {
                    arrayList.add(this.i.get(str3));
                }
            }
        }
        return arrayList;
    }

    public CvMediator a(Context context, CvContentOptions cvContentOptions, CvMediator.Completion completion, InlineAdWrapper.Listener listener) {
        return a(context, cvContentOptions, completion, listener, (String[]) null);
    }

    CvMediator a(Context context, CvContentOptions cvContentOptions, CvMediator.Completion completion, InlineAdWrapper.Listener listener, String[] strArr) {
        if (cvContentOptions.d) {
            throw new InternalError("Invalid arguments set (interstitial + inline listener");
        }
        return a(context, cvContentOptions, completion, listener, false, strArr);
    }

    public CvMediator a(Context context, CvContentOptions cvContentOptions, CvMediator.Completion completion) {
        return a(context, cvContentOptions, completion, (String[]) null);
    }

    CvMediator a(Context context, CvContentOptions cvContentOptions, CvMediator.Completion completion, String[] strArr) {
        if (!cvContentOptions.d) {
            throw new InternalError("Invalid arguments set (inline + interstitial listener");
        }
        return a(context, cvContentOptions, completion, null, true, strArr);
    }

    public CvMediator a(Context context, CvContentOptions cvContentOptions, CvContentManager.PreloaderListener preloaderListener, boolean z) {
        return a(context, cvContentOptions, preloaderListener, z, (String[]) null);
    }

    public CvMediator a(Context context, final CvContentOptions cvContentOptions, final CvContentManager.PreloaderListener preloaderListener, boolean z, final String[] strArr) {
        final CvMediator cvMediator = new CvMediator(context, cvContentOptions, new CvMediator.Completion() { // from class: com.apprupt.sdk.CvMediation.7
            @Override // com.apprupt.sdk.CvMediator.Completion
            public void a(final String str) {
                CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvMediation.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (preloaderListener != null) {
                            preloaderListener.onPreloaderFinish(new CvPreloaderResponse(str, -1));
                        }
                    }
                }, true);
            }

            @Override // com.apprupt.sdk.CvMediator.Completion
            public void a(final AdWrapper adWrapper) {
                CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvMediation.7.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ArrayList arrayList;
                        if (CvMediation.h.containsKey(cvContentOptions.f1778a)) {
                            arrayList = (ArrayList) CvMediation.h.get(cvContentOptions.f1778a);
                        } else {
                            arrayList = new ArrayList();
                            CvMediation.h.put(cvContentOptions.f1778a, arrayList);
                        }
                        arrayList.add(adWrapper);
                        if (preloaderListener != null) {
                            preloaderListener.onPreloaderFinish(new CvPreloaderResponse());
                        }
                    }
                }, true);
            }
        }, null, z);
        a(new Runnable() { // from class: com.apprupt.sdk.CvMediation.8
            @Override // java.lang.Runnable
            public void run() {
                CvMediation.this.e.a("load mediator");
                cvMediator.a(CvMediation.this.d(), CvMediation.this.a(cvMediator.a().f1778a, strArr));
            }
        });
        return cvMediator;
    }

    private CvMediator a(Context context, final CvContentOptions cvContentOptions, CvMediator.Completion completion, AdWrapper.Listener listener, boolean z, final String[] strArr) {
        this.e.a("loadAd->checkConfig");
        final CvMediator cvMediator = new CvMediator(context, cvContentOptions, completion, listener, z);
        a(new Runnable() { // from class: com.apprupt.sdk.CvMediation.9
            @Override // java.lang.Runnable
            public void run() {
                CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvMediation.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CvMediation.h.containsKey(cvContentOptions.f1778a) && strArr == null) {
                            ArrayList arrayList = (ArrayList) CvMediation.h.get(cvContentOptions.f1778a);
                            if (arrayList.size() > 0) {
                                AdWrapper adWrapper = (AdWrapper) arrayList.get(0);
                                if ((cvContentOptions.d && (adWrapper instanceof InterstitialAdWrapper) && cvContentOptions.g == adWrapper.j()) || (!cvContentOptions.d && (adWrapper instanceof InlineAdWrapper))) {
                                    arrayList.remove(0);
                                    cvMediator.a(adWrapper);
                                    return;
                                }
                            }
                        }
                        CvMediation.this.e.a("load mediator");
                        cvMediator.a(CvMediation.this.d(), CvMediation.this.a(cvMediator.a().f1778a, strArr));
                    }
                }, true);
            }
        });
        return cvMediator;
    }
}
