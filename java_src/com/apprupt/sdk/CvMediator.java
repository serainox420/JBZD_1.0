package com.apprupt.sdk;

import android.content.Context;
import com.apprupt.sdk.CvSDK;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.mediation.AdWrapper;
import com.apprupt.sdk.mediation.Adapter;
import com.apprupt.sdk.mediation.InlineAdWrapper;
import com.apprupt.sdk.mediation.InterstitialAdWrapper;
import com.apprupt.sdk.mediation.Mediator;
import com.apprupt.sdk.mediation.ValueExchangeCompletion;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class CvMediator implements Mediator {
    private final Context c;
    private final CvContentOptions d;
    private final Completion e;
    private final AdWrapper.Listener h;
    private final boolean l;

    /* renamed from: a  reason: collision with root package name */
    private final Logger.log f1872a = Logger.a("Lifecycle.Mediator");
    private final Logger.log b = Logger.a("Mediator");
    private final HashMap<String, Adapter> f = new HashMap<>();
    private final ArrayList<Adapter> g = new ArrayList<>();
    private volatile boolean i = false;
    private volatile boolean j = false;
    private boolean k = false;

    /* loaded from: classes.dex */
    public interface Completion {
        void a(AdWrapper adWrapper);

        void a(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvMediator(Context context, CvContentOptions cvContentOptions, Completion completion, AdWrapper.Listener listener, boolean z) {
        this.c = context;
        this.d = cvContentOptions;
        this.e = completion;
        this.l = z;
        this.h = a(listener);
    }

    private AdWrapper.Listener a(AdWrapper.Listener listener) {
        if (listener == null) {
            if (this.l) {
                final CvSDK.CvInterstitialListener a2 = CvInterstitialActivity.a(this.d.i);
                return new InterstitialAdWrapper.Listener() { // from class: com.apprupt.sdk.CvMediator.1
                    @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
                    public void a() {
                    }

                    @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
                    public void b() {
                    }

                    @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
                    public void c() {
                        a2.cvInterstitialFirstTap();
                    }
                };
            }
            return new InlineAdWrapper.Listener() { // from class: com.apprupt.sdk.CvMediator.2
                @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
                public void a() {
                }

                @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
                public void b() {
                }

                @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
                public void c() {
                }
            };
        }
        return listener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(HashMap<String, Adapter> hashMap, List<Adapter> list) {
        this.f.putAll(hashMap);
        this.g.addAll(list);
        h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final AdWrapper adWrapper) {
        adWrapper.a(this);
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvMediator.3
            @Override // java.lang.Runnable
            public void run() {
                CvMediator.this.b(adWrapper);
            }
        });
    }

    private void h() {
        if (!c()) {
            while (this.g.size() > 0) {
                Adapter remove = this.g.remove(0);
                if ((this.k || remove.b(this)) && remove.a(this)) {
                    this.f1872a.b("Loading with adapter", remove.a());
                    if (this.d.d) {
                        remove.d(this);
                        return;
                    } else {
                        remove.c(this);
                        return;
                    }
                }
                this.f1872a.c("Adapter not ready for mediation", remove.a());
                this.k = false;
            }
            this.f1872a.d("Cannot load ad (no more adapters).");
            this.e.a("Cannot load ad");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvContentOptions a() {
        return this.d;
    }

    public Context b() {
        return this.c;
    }

    public synchronized boolean c() {
        return this.i;
    }

    public String d() {
        return this.d.f1778a;
    }

    public void b(AdWrapper adWrapper) {
        this.f1872a.b("Ad loaded with", adWrapper.i().a());
        if (!c()) {
            this.e.a(adWrapper);
        }
    }

    public void c(AdWrapper adWrapper) {
        String h;
        if (adWrapper.g() && (h = adWrapper.h()) != null) {
            if (this.f.containsKey(h)) {
                this.k = true;
                this.g.add(0, this.f.get(h));
            } else {
                this.b.c("Got fallback of type", h, "but cannot find such adapter!");
            }
        }
        h();
    }

    public ValueExchangeCompletion e() {
        return new ValueExchangeCompletion() { // from class: com.apprupt.sdk.CvMediator.4
            @Override // com.apprupt.sdk.mediation.ValueExchangeCompletion
            public void a(String str, Adapter adapter, AdWrapper adWrapper) {
                CvSDK.d.a(str, adapter, adWrapper);
            }
        };
    }

    public synchronized void f() {
        this.i = true;
    }

    public AdWrapper.Listener g() {
        return this.h;
    }
}
