package com.smaato.soma.interstitial;

import android.content.Context;
import android.content.Intent;
import android.view.ViewGroup;
import com.smaato.soma.AdDimension;
import com.smaato.soma.bannerutilities.constant.BannerStatus;
import com.smaato.soma.c;
import com.smaato.soma.d;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.AdReceiveFailed;
import com.smaato.soma.exception.InterstitialInitializationFailed;
import com.smaato.soma.exception.UnableToFindInterstitialBannerView;
import com.smaato.soma.i;
import com.smaato.soma.internal.requests.f;
import com.smaato.soma.internal.requests.settings.UserSettings;
import com.smaato.soma.l;
import com.smaato.soma.mediation.j;
import com.smaato.soma.p;
/* loaded from: classes3.dex */
public class Interstitial implements c, i {

    /* renamed from: a  reason: collision with root package name */
    static b f5098a;
    static a b;
    Context c;
    InterstitialStates d;
    private j.a f;
    private boolean g = false;
    String e = "Interstitial";
    private InterstitialOrientation h = InterstitialOrientation.PORTRAIT;

    /* loaded from: classes3.dex */
    public enum InterstitialOrientation {
        PORTRAIT,
        LANDSCAPE
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public enum InterstitialStates {
        IS_READY,
        IS_NOT_READY
    }

    public void a(j.a aVar) {
        this.f = aVar;
    }

    public void a() {
        if (f5098a != null) {
            f5098a.onDetachedFromWindow();
        }
        a((a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.f != null) {
            this.f.onWillShow();
        }
    }

    public Interstitial(final Context context) {
        new l<Void>() { // from class: com.smaato.soma.interstitial.Interstitial.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                Interstitial.this.a(context);
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) throws InterstitialInitializationFailed {
        try {
            this.c = context;
            f5098a = new b(this.c);
            f5098a.setInterstitialParent(this);
            f5098a.a(this);
            f5098a.setScalingEnabled(false);
            if (f5098a.getInterstitialParent() != null) {
            }
            j();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new InterstitialInitializationFailed(e2);
        }
    }

    private void j() {
        switch (k()) {
            case LANDSCAPE:
                f5098a.getAdSettings().a(AdDimension.INTERSTITIAL_LANDSCAPE);
                f.b().b(false);
                return;
            default:
                f5098a.getAdSettings().a(AdDimension.INTERSTITIAL_PORTRAIT);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.smaato.soma.interstitial.Interstitial$4  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 extends l<Void> {
        AnonymousClass4() {
        }

        @Override // com.smaato.soma.l
        /* renamed from: a */
        public Void b() throws Exception {
            if (Interstitial.this.f() && !Interstitial.this.g) {
                new Thread(new Runnable() { // from class: com.smaato.soma.interstitial.Interstitial.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        new l<Void>() { // from class: com.smaato.soma.interstitial.Interstitial.4.1.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Void b() throws Exception {
                                if (Interstitial.b != null) {
                                    Interstitial.b.onWillShow();
                                }
                                Interstitial.this.h();
                                Intent intent = new Intent(Interstitial.this.c, InterstitialActivity.class);
                                intent.putExtra("rotation", com.smaato.soma.internal.requests.settings.a.a().k());
                                intent.putExtra("orientation", com.smaato.soma.internal.requests.settings.a.a().j());
                                intent.addFlags(343932928);
                                Interstitial.this.c.getApplicationContext().startActivity(intent);
                                return null;
                            }
                        }.c();
                    }
                }).start();
                return null;
            } else if (Interstitial.this.f() && Interstitial.this.g) {
                Interstitial.this.i();
                if (Interstitial.b != null) {
                    Interstitial.b.onWillShow();
                }
                Interstitial.this.h();
                return null;
            } else {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(Interstitial.this.e, "Interstitial Banner not ready", 1, DebugCategory.DEBUG));
                Interstitial.this.h();
                return null;
            }
        }
    }

    public void b() {
        new AnonymousClass4().c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static b c() throws UnableToFindInterstitialBannerView {
        try {
            if (f5098a.getParent() != null) {
                ((ViewGroup) f5098a.getParent()).removeView(f5098a);
            }
            return f5098a;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToFindInterstitialBannerView(e2);
        }
    }

    public void a(a aVar) {
        b = aVar;
    }

    public a d() {
        return b;
    }

    public boolean f() {
        return this.d == InterstitialStates.IS_READY;
    }

    @Override // com.smaato.soma.c
    public void onReceiveAd(com.smaato.soma.b bVar, final p pVar) throws AdReceiveFailed {
        new l<Void>() { // from class: com.smaato.soma.interstitial.Interstitial.5
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (Interstitial.b != null) {
                    if (pVar.a() == BannerStatus.SUCCESS && !pVar.b()) {
                        Interstitial.f5098a.setShouldNotifyIdle(true);
                        Interstitial.this.g = false;
                    } else if (pVar.b()) {
                        Interstitial.this.g = true;
                        Interstitial.f5098a.setShouldNotifyIdle(true);
                    } else {
                        Interstitial.this.g = false;
                        Interstitial.f5098a.setShouldNotifyIdle(false);
                        Interstitial.b.onFailedToLoadAd();
                        Interstitial.this.h();
                    }
                }
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g() {
        this.d = InterstitialStates.IS_READY;
    }

    protected void h() {
        this.d = InterstitialStates.IS_NOT_READY;
    }

    @Override // com.smaato.soma.i
    public void e() {
        new l<Void>() { // from class: com.smaato.soma.interstitial.Interstitial.6
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (com.smaato.soma.internal.requests.settings.a.a().i()) {
                    Interstitial.this.a(InterstitialOrientation.PORTRAIT);
                } else {
                    Interstitial.this.a(InterstitialOrientation.LANDSCAPE);
                }
                Interstitial.f5098a.e();
                com.smaato.soma.internal.requests.settings.a.a().m();
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public void setLocationUpdateEnabled(final boolean z) {
        new l<Void>() { // from class: com.smaato.soma.interstitial.Interstitial.7
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                Interstitial.f5098a.setLocationUpdateEnabled(z);
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public UserSettings getUserSettings() {
        return new l<UserSettings>() { // from class: com.smaato.soma.interstitial.Interstitial.8
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public UserSettings b() throws Exception {
                return Interstitial.f5098a.getUserSettings();
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public void setUserSettings(final UserSettings userSettings) {
        new l<Void>() { // from class: com.smaato.soma.interstitial.Interstitial.9
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                Interstitial.f5098a.setUserSettings(userSettings);
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public d getAdSettings() {
        return new l<d>() { // from class: com.smaato.soma.interstitial.Interstitial.10
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public d b() throws Exception {
                return Interstitial.f5098a.getAdSettings();
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public void setAdSettings(final d dVar) {
        new l<Void>() { // from class: com.smaato.soma.interstitial.Interstitial.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                Interstitial.f5098a.setAdSettings(dVar);
                return null;
            }
        }.c();
    }

    private InterstitialOrientation k() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(InterstitialOrientation interstitialOrientation) {
        this.h = interstitialOrientation;
        j();
    }
}
