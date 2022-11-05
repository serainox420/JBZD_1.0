package com.apprupt.sdk;

import android.content.Context;
import com.apprupt.sdk.CvContentManager;
import com.apprupt.sdk.CvMediator;
import com.apprupt.sdk.CvSDK;
import com.apprupt.sdk.CvValueExchange;
import com.apprupt.sdk.mediation.AdWrapper;
import com.apprupt.sdk.mediation.InterstitialAdWrapper;
/* loaded from: classes.dex */
class CvInterstitialManager {

    /* renamed from: a  reason: collision with root package name */
    private Context f1841a;
    private int b;
    private String c;
    private String d;

    /* loaded from: classes.dex */
    private static class CvInterstitialInstanceHolder {

        /* renamed from: a  reason: collision with root package name */
        static final CvInterstitialManager f1848a = new CvInterstitialManager();

        private CvInterstitialInstanceHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CvInterstitialManager a() {
        return CvInterstitialInstanceHolder.f1848a;
    }

    private CvInterstitialManager() {
        this.f1841a = null;
        this.b = -1;
        this.c = "";
        this.d = "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final Context context, final int i, final CvContentManager.PreloaderListener preloaderListener, final String str, final String str2) {
        CvSDK.c.a(new Runnable() { // from class: com.apprupt.sdk.CvInterstitialManager.1
            @Override // java.lang.Runnable
            public void run() {
                CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInterstitialManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CvSDK.d.a(i) == CvValueExchange.Status.DISABLED) {
                            CvSDK.c.a(context, new CvContentOptions(i, str, str2, true, CvAdColony.b().a(i, true), true), preloaderListener, true);
                            return;
                        }
                        CvSDK.d.a(context, i, preloaderListener, str, str2);
                    }
                }, true);
            }
        });
    }

    /* renamed from: com.apprupt.sdk.CvInterstitialManager$2  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f1844a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;
        final /* synthetic */ CvSDK.CvInterstitialListener d;
        final /* synthetic */ Context e;

        AnonymousClass2(int i, String str, String str2, CvSDK.CvInterstitialListener cvInterstitialListener, Context context) {
            this.f1844a = i;
            this.b = str;
            this.c = str2;
            this.d = cvInterstitialListener;
            this.e = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInterstitialManager.2.1
                @Override // java.lang.Runnable
                public void run() {
                    if (CvSDK.d.a(AnonymousClass2.this.f1844a) == CvValueExchange.Status.DISABLED) {
                        CvContentOptions cvContentOptions = new CvContentOptions(AnonymousClass2.this.f1844a, AnonymousClass2.this.b, AnonymousClass2.this.c, true, CvAdColony.b().a(AnonymousClass2.this.f1844a, true), true);
                        cvContentOptions.i = AnonymousClass2.this.d;
                        CvSDK.c.a(AnonymousClass2.this.e, cvContentOptions, new CvMediator.Completion() { // from class: com.apprupt.sdk.CvInterstitialManager.2.1.1
                            @Override // com.apprupt.sdk.CvMediator.Completion
                            public void a(String str) {
                                if (AnonymousClass2.this.d != null) {
                                    AnonymousClass2.this.d.cvInterstitialDidFail(AnonymousClass2.this.f1844a, str, -1);
                                }
                            }

                            @Override // com.apprupt.sdk.CvMediator.Completion
                            public void a(final AdWrapper adWrapper) {
                                CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInterstitialManager.2.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ((InterstitialAdWrapper) adWrapper).b();
                                    }
                                }, true);
                            }
                        });
                        return;
                    }
                    CvSDK.d.a(AnonymousClass2.this.e, AnonymousClass2.this.f1844a, AnonymousClass2.this.d, AnonymousClass2.this.b, AnonymousClass2.this.c);
                }
            }, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, int i, CvSDK.CvInterstitialListener cvInterstitialListener, String str, String str2) {
        CvSDK.c.a(new AnonymousClass2(i, str, str2, cvInterstitialListener, context));
    }
}
