package com.apprupt.sdk;

import android.util.Log;
import com.apprupt.sdk.CvContentManager;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.Q;
import com.apprupt.sdk.mediation.AdWrapper;
import com.apprupt.sdk.mediation.Adapter;
import com.apprupt.sdk.mediation.Mediator;
import com.apprupt.sdk.mediation.Size;
import com.flurry.android.AdCreative;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.inmobi.re.controller.JSController;
import com.mopub.common.AdType;
import com.openx.view.mraid.JSInterface;
/* loaded from: classes.dex */
public abstract class CvAdWrapper implements AdWrapper {
    private CvMediator b;
    private final Adapter c;
    private final boolean j;

    /* renamed from: a  reason: collision with root package name */
    protected Logger.log f1718a = Logger.a(getClass().getName());
    private volatile String d = null;
    private volatile String e = null;
    private volatile Size f = new Size(320, 50);
    private volatile CvAdType g = CvAdType.NORMAL;
    private volatile String h = "";
    private volatile long i = 0;
    private Q.Task k = new Q.Task() { // from class: com.apprupt.sdk.CvAdWrapper.4
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            SimpleJSON simpleJSON = (SimpleJSON) obj;
            String a2 = simpleJSON.a("logMessage", (String) null);
            if (a2 != null && a2.length() > 0) {
                Log.e("CVSDK", "\n============================================================\n\n" + a2 + "\n\n============================================================");
            }
            resolver.a(simpleJSON);
        }
    };
    private Q.Task l = new Q.Task() { // from class: com.apprupt.sdk.CvAdWrapper.5
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            SimpleJSON simpleJSON = (SimpleJSON) obj;
            CvAdType a2 = CvAdType.a(simpleJSON.a("type", JSController.STYLE_NORMAL));
            switch (AnonymousClass9.f1727a[a2.ordinal()]) {
                case 1:
                    if (!CvAdWrapper.this.b.a().d) {
                        throw new Error("Internal error: fallback type does not match ad placement (clipkit/interstitial)");
                    }
                    throw new Fallback(Adapter.Info.CLIPKIT.toString());
                case 2:
                    if (!CvAdWrapper.this.b.a().d) {
                        throw new Error("Internal error: fallback type does not match ad placement (adcolony/interstitial)");
                    }
                    throw new Fallback(Adapter.Info.ADCOLONY.toString());
                case 3:
                    if (CvAdWrapper.this.b.a().d) {
                        throw new Error("Internal error: fallback type does not match ad placement (adcolony/inline)");
                    }
                    throw new Fallback(Adapter.Info.ADCOLONY.toString());
                case 4:
                    throw new Error("Unknown ad type: " + simpleJSON.a("type"));
                default:
                    CvAdWrapper.this.g = a2;
                    resolver.a(simpleJSON);
                    return;
            }
        }
    };
    private Q.Task m = new Q.Task() { // from class: com.apprupt.sdk.CvAdWrapper.6
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            int i;
            int i2;
            int i3;
            int i4;
            String a2;
            int indexOf;
            int i5 = 320;
            SimpleJSON simpleJSON = (SimpleJSON) obj;
            int i6 = 50;
            int i7 = 1;
            if (!simpleJSON.f("size") || (indexOf = (a2 = simpleJSON.a("size", "0x0")).indexOf(JSInterface.JSON_X)) <= 0) {
                i = 320;
            } else {
                i = Integer.valueOf(a2.substring(0, indexOf)).intValue();
                i6 = Integer.valueOf(a2.substring(indexOf + 1)).intValue();
            }
            if (simpleJSON.f("maximize")) {
                String a3 = simpleJSON.a("maximize");
                if (a3.equals("ratio") && i > 0 && i6 > 0) {
                    i7 = 33;
                } else {
                    if (a3.equals("width") || a3.equals(AdCreative.kFixBoth)) {
                        i7 = 5;
                    }
                    if (a3.equals("height") || a3.equals(AdCreative.kFixBoth)) {
                        if (CvAdWrapper.this.b.a().d) {
                            i7 |= 16;
                        } else {
                            i7 |= 8;
                        }
                    }
                }
            }
            if ((i7 & 32) == 0) {
                if (i <= 0) {
                    i4 = i7 | 4;
                } else {
                    i5 = i;
                    i4 = i7;
                }
                if (i6 > 0) {
                    int i8 = i4;
                    i2 = i6;
                    i3 = i8;
                } else if (CvAdWrapper.this.b.a().d) {
                    int i9 = i4 | 16;
                    i5 = 370;
                    i2 = i6;
                    i3 = i9;
                } else {
                    i3 = i4 | 8;
                    i2 = 75;
                }
            } else {
                i5 = i;
                i2 = i6;
                i3 = i7;
            }
            CvAdWrapper.this.f = new Size(i3, i5, i2);
            resolver.a(simpleJSON);
        }
    };
    private Q.Task n = new Q.Task() { // from class: com.apprupt.sdk.CvAdWrapper.7
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            SimpleJSON simpleJSON = (SimpleJSON) obj;
            if (simpleJSON.f("closeButtonTimeout")) {
                CvAdWrapper.this.i = (long) (simpleJSON.c("closeButtonTimeout", 0) * 1000.0d);
            }
            if (CvAdWrapper.this.i < 0) {
                CvAdWrapper.this.i = 0L;
            } else if (CvAdWrapper.this.i > NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
                CvAdWrapper.this.i = NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;
            }
            resolver.a(simpleJSON);
        }
    };
    private Q.Task o = new Q.Task() { // from class: com.apprupt.sdk.CvAdWrapper.8
        @Override // com.apprupt.sdk.Q.Task
        public void a(Object obj, Q.Resolver resolver) throws Exception {
            SimpleJSON simpleJSON = (SimpleJSON) obj;
            String a2 = simpleJSON.a(AdType.HTML);
            if (a2 != null && a2.length() != 0) {
                CvAdWrapper.this.h = a2;
                resolver.a(simpleJSON);
                return;
            }
            throw new Error("Malformed ad data (content is empty).");
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Size size);

    abstract void l();

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvAdWrapper(Adapter adapter, CvMediator cvMediator) {
        this.c = adapter;
        this.b = cvMediator;
        this.j = cvMediator.a().g;
    }

    /* loaded from: classes.dex */
    private class Error extends Exception {
        Error(String str) {
            super(str);
        }
    }

    /* loaded from: classes.dex */
    private class Fallback extends Exception {
        Fallback(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        this.f1718a.a("Loading ad...");
        CvSDK.f1884a.a(this.b.b(), this.b.a(), new CvContentManager.ContentListener() { // from class: com.apprupt.sdk.CvAdWrapper.1
            @Override // com.apprupt.sdk.CvContentManager.ContentListener
            public void a(CvContentResponse cvContentResponse) {
                if (cvContentResponse.f1779a) {
                    CvAdWrapper.this.f1718a.d("Cannot load ad:", cvContentResponse.b);
                    CvAdWrapper.this.d = cvContentResponse.b;
                    CvAdWrapper.this.b.c(CvAdWrapper.this);
                    return;
                }
                CvAdWrapper.this.f1718a.b("Ad contents loaded", Integer.valueOf(cvContentResponse.c), cvContentResponse.d, cvContentResponse.e);
                CvAdWrapper.this.a(new SimpleJSON(cvContentResponse.e));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SimpleJSON simpleJSON) {
        Q.a(this.l).b(this.k).b(this.m).b(this.n).b(this.o).b(simpleJSON).a(new Q.SuccessHandler() { // from class: com.apprupt.sdk.CvAdWrapper.3
            @Override // com.apprupt.sdk.Q.SuccessHandler
            public void a(Object obj) {
                CvAdWrapper.this.l();
            }
        }).a(new Q.FailureHandler() { // from class: com.apprupt.sdk.CvAdWrapper.2
            @Override // com.apprupt.sdk.Q.FailureHandler
            public void a(Throwable th, Object obj) {
                if (th instanceof Fallback) {
                    CvAdWrapper.this.e = th.getMessage();
                    CvAdWrapper.this.d = "Falling to " + th.getMessage() + " / " + (CvAdWrapper.this.b.a().d ? "interstitial" : "inline");
                    CvAdWrapper.this.f1718a.b(CvAdWrapper.this.d);
                } else {
                    CvAdWrapper.this.d = th.getMessage();
                    CvAdWrapper.this.f1718a.d("Cannot process ad", CvAdWrapper.this.d);
                }
                CvAdWrapper.this.b.c(CvAdWrapper.this);
            }
        });
    }

    /* renamed from: com.apprupt.sdk.CvAdWrapper$9  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass9 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1727a = new int[CvAdType.values().length];

        static {
            try {
                f1727a[CvAdType.CLIPKIT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1727a[CvAdType.AD_COLONY_INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1727a[CvAdType.AD_COLONY_INLINE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1727a[CvAdType.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvMediator m() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Size n() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Size size) {
        this.f = size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String o() {
        return this.h;
    }

    @Override // com.apprupt.sdk.mediation.AdWrapper
    public boolean e() {
        return this.d != null;
    }

    @Override // com.apprupt.sdk.mediation.AdWrapper
    public String f() {
        return this.d;
    }

    @Override // com.apprupt.sdk.mediation.AdWrapper
    public boolean g() {
        return this.e != null;
    }

    @Override // com.apprupt.sdk.mediation.AdWrapper
    public String h() {
        return this.e;
    }

    @Override // com.apprupt.sdk.mediation.AdWrapper
    public Adapter i() {
        return this.c;
    }

    @Override // com.apprupt.sdk.mediation.AdWrapper
    public boolean j() {
        return this.j;
    }

    @Override // com.apprupt.sdk.mediation.AdWrapper
    public void a(Mediator mediator) {
        this.b = (CvMediator) mediator;
    }
}
