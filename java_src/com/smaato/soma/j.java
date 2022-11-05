package com.smaato.soma;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smaato.soma.bannerutilities.constant.BannerStatus;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.AddingLoadingStateToBannerViewFailedException;
import com.smaato.soma.exception.BannerStateInstantiationException;
import com.smaato.soma.exception.BannerViewInstantiationException;
import com.smaato.soma.exception.BannerViewSwitchingViewsException;
import com.smaato.soma.exception.BeaconLoadFailedException;
import com.smaato.soma.exception.ClosingPackageFailedException;
import com.smaato.soma.exception.EditModeFailed;
import com.smaato.soma.exception.OnReceiveAdFailedException;
import com.smaato.soma.exception.OpeningLandingPageFailed;
import com.smaato.soma.exception.RetrievingDeviceOrientationFailed;
import com.smaato.soma.exception.UnableToFindAdDownloader;
import com.smaato.soma.exception.UnableToNotifyBannerIdle;
import com.smaato.soma.exception.UnableToPauseAutoReload;
import com.smaato.soma.internal.requests.settings.UserSettings;
import com.smaato.soma.internal.statemachine.BannerState;
import com.smaato.soma.internal.statemachine.LoadingState;
import com.smaato.soma.mediation.CSMAdFormat;
import java.lang.ref.WeakReference;
import java.util.List;
/* compiled from: BaseView.java */
/* loaded from: classes3.dex */
public abstract class j extends RelativeLayout implements k {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5126a;
    protected g b;
    protected b c;
    public boolean d;
    protected BannerState e;
    protected LoadingState f;
    protected com.smaato.soma.bannerutilities.a g;
    protected com.smaato.soma.bannerutilities.a h;
    protected Handler i;
    protected float j;
    protected int k;
    Handler l;
    private boolean m;
    private boolean n;
    private int o;
    private Handler p;

    public abstract Handler getBannerAnimatorHandler();

    public void setSOMAEndPoint(String str) {
        if (str != null) {
            com.smaato.soma.internal.requests.f.b().a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = false;
        this.j = BitmapDescriptorFactory.HUE_RED;
        this.k = -1;
        this.f5126a = true;
        this.m = true;
        this.l = new Handler(Looper.getMainLooper()) { // from class: com.smaato.soma.j.1
        };
        this.n = true;
        this.o = 0;
        this.p = new Handler();
        new l<Void>() { // from class: com.smaato.soma.j.11
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                j.this.a();
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = false;
        this.j = BitmapDescriptorFactory.HUE_RED;
        this.k = -1;
        this.f5126a = true;
        this.m = true;
        this.l = new Handler(Looper.getMainLooper()) { // from class: com.smaato.soma.j.1
        };
        this.n = true;
        this.o = 0;
        this.p = new Handler();
        new l<Void>() { // from class: com.smaato.soma.j.16
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                j.this.a();
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j(Context context) {
        super(context);
        this.d = false;
        this.j = BitmapDescriptorFactory.HUE_RED;
        this.k = -1;
        this.f5126a = true;
        this.m = true;
        this.l = new Handler(Looper.getMainLooper()) { // from class: com.smaato.soma.j.1
        };
        this.n = true;
        this.o = 0;
        this.p = new Handler();
        new l<Void>() { // from class: com.smaato.soma.j.17
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                j.this.a();
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() throws BannerViewInstantiationException {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.j.18
            });
            if (!(getContext() instanceof Activity)) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BannerView", "Please instantiate the BannerView using activity instead of context", 1, DebugCategory.WARNING));
            }
            if (isInEditMode()) {
                b();
                return;
            }
            if (getContext() != null) {
                q.c().a(getContext().getApplicationContext());
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            this.j = displayMetrics.density;
            setDescendantFocusability(262144);
            setFocusable(true);
            com.smaato.soma.internal.requests.f.b().b(new WebView(getContext()).getSettings().getUserAgentString());
            UserSettings userSettings = getUserSettings();
            d adSettings = getAdSettings();
            setAdDownloader(com.smaato.soma.internal.a.a().a(getContext(), this));
            setUserSettings(userSettings);
            setAdSettings(adSettings);
            a(new a());
            a(new BannerState());
            setLoadingStateMachine(new LoadingState());
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new BannerViewInstantiationException(e2);
        }
    }

    private void b() throws EditModeFailed {
        try {
            setBackgroundColor(-7829368);
            TextView textView = new TextView(getContext());
            textView.setText("Soma banner view");
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            textView.setLayoutParams(layoutParams);
            addView(textView);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new EditModeFailed(e2);
        }
    }

    public final BannerState getBannerState() {
        return this.e;
    }

    public final void setBannerStateListener(g gVar) {
        this.b = gVar;
    }

    public final g getBannerStateListener() {
        return this.b;
    }

    @Override // com.smaato.soma.r
    public final void a(final c cVar) {
        new l<Void>() { // from class: com.smaato.soma.j.19
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                j.this.getAdDownloader().a(cVar);
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseView.java */
    /* renamed from: com.smaato.soma.j$20  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass20 extends l<Void> {
        AnonymousClass20() {
        }

        @Override // com.smaato.soma.l
        /* renamed from: a */
        public Void b() throws Exception {
            com.smaato.soma.internal.requests.f.b().a(!j.this.isShown());
            if (j.this.o != 0) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BannerView", "Too many background views ...", 1, DebugCategory.WARNING));
            } else if (com.smaato.soma.measurements.a.a().b()) {
                if (com.smaato.soma.internal.c.c.a().d() && j.this.getBannerState().a() != BannerState.State.STATE_BANNEREXPANDED) {
                    j.this.a();
                    com.smaato.soma.internal.c.c.a().c();
                }
                new Thread(new Runnable() { // from class: com.smaato.soma.j.20.1
                    @Override // java.lang.Runnable
                    public void run() {
                        new l<Void>() { // from class: com.smaato.soma.j.20.1.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Void b() throws Exception {
                                if (j.this.getLoadingState().b()) {
                                    System.gc();
                                    return null;
                                }
                                return null;
                            }
                        }.c();
                    }
                }).start();
            }
            return null;
        }
    }

    @Override // com.smaato.soma.i
    public void e() {
        new AnonymousClass20().c();
    }

    @Override // com.smaato.soma.i
    public final void setLocationUpdateEnabled(final boolean z) {
        new l<Void>() { // from class: com.smaato.soma.j.21
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                j.this.getAdDownloader().setLocationUpdateEnabled(z);
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public final d getAdSettings() {
        return new l<d>() { // from class: com.smaato.soma.j.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public d b() throws Exception {
                return j.this.getAdDownloader().getAdSettings();
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public final UserSettings getUserSettings() {
        return new l<UserSettings>() { // from class: com.smaato.soma.j.3
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public UserSettings b() throws Exception {
                return j.this.getAdDownloader().getUserSettings();
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public final void setUserSettings(final UserSettings userSettings) {
        new l<Void>() { // from class: com.smaato.soma.j.4
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                j.this.getAdDownloader().setUserSettings(userSettings);
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public final void setAdSettings(final d dVar) {
        new l<Void>() { // from class: com.smaato.soma.j.5
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                j.this.getAdDownloader().setAdSettings(dVar);
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final LoadingState getLoadingState() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean f() throws BannerViewSwitchingViewsException {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.j.6
            });
            com.smaato.soma.bannerutilities.a currentPackage = getCurrentPackage();
            try {
                removeAllViews();
            } catch (Exception e) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BaseView:switchViews()", "Exception during clearing Base views", 1, DebugCategory.ERROR));
            }
            if (currentPackage != null) {
                currentPackage.c();
            }
            setCurrentPackage(getNextPackage());
            setNextPackage(null);
            if (getCurrentPackage() != null && getCurrentPackage().e() != null) {
                addView(getCurrentPackage().e());
                if (Build.VERSION.SDK_INT >= 19 && isAttachedToWindow()) {
                    if (!this.n) {
                        g();
                    }
                } else if (getParent() != null) {
                    if (!this.n) {
                        g();
                    }
                } else if (!this.m) {
                    this.o = 1;
                    try {
                        this.g.e().loadUrl("javascript:mraid.setViewable(false);");
                        this.g.e().loadUrl("javascript:mraid.viewableChange(false);");
                    } catch (Exception e2) {
                    }
                    this.p.postDelayed(new Runnable() { // from class: com.smaato.soma.j.7
                        @Override // java.lang.Runnable
                        public void run() {
                            if (j.this.o != 0) {
                                j.this.o = 0;
                            }
                        }
                    }, 240000L);
                    c();
                }
                System.gc();
                if (!this.m) {
                    com.smaato.soma.measurements.a.a().a(this);
                }
                com.smaato.soma.bannerutilities.b.a().a(false);
                return true;
            }
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BaseView:switchViews()", "getCurrentPackage().getView() is not available or null. Switching to new format?", 0, DebugCategory.DEBUG));
            e();
            return false;
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new BannerViewSwitchingViewsException(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() throws UnableToPauseAutoReload {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean g() throws BeaconLoadFailedException {
        p pVar = null;
        try {
            this.o = 0;
            this.p.removeCallbacksAndMessages(null);
            if (getNextPackage() != null) {
                pVar = getNextPackage().f();
            } else if (getCurrentPackage() != null) {
                pVar = getCurrentPackage().f();
            }
            if (pVar == null) {
                return false;
            }
            if (pVar.d() == AdType.RICHMEDIA) {
                try {
                    this.g.e().loadUrl("javascript:mraid.setViewable(true);");
                } catch (Exception e) {
                }
            }
            if (pVar.a() != BannerStatus.SUCCESS || pVar.g() == null || pVar.g().isEmpty()) {
                return false;
            }
            List<String> g = pVar.g();
            ((com.smaato.soma.internal.b) pVar).a((List<String>) null);
            new com.smaato.soma.internal.requests.b().execute((String[]) g.toArray(new String[0]));
            return true;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new BeaconLoadFailedException(e3);
        }
    }

    protected void setLoadingStateMachine(LoadingState loadingState) throws AddingLoadingStateToBannerViewFailedException {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.j.8
            });
            this.f = loadingState;
            this.f.a(true);
            this.f.a(new o(this));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new AddingLoadingStateToBannerViewFailedException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h() throws OpeningLandingPageFailed, RetrievingDeviceOrientationFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.j.9
            });
            ExpandedBannerActivity.f4841a = new WeakReference<>(getCurrentPackage());
            Intent intent = new Intent(getContext(), ExpandedBannerActivity.class);
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            intent.putExtra("rotation", com.smaato.soma.internal.requests.settings.a.a().k());
            intent.putExtra("orientation", com.smaato.soma.internal.requests.settings.a.a().j());
            getContext().startActivity(intent);
        } catch (ActivityNotFoundException e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BaseView", "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml", 0, DebugCategory.ERROR));
        } catch (Exception e2) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BaseView", "Exception inside Internal Browser", 0, DebugCategory.ERROR));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i() throws ClosingPackageFailedException {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.j.10
            });
            if (this.g.b() != null) {
                this.g.a(true);
                if (!((ExpandedBannerActivity) this.g.b()).b()) {
                    ((ExpandedBannerActivity) this.g.b()).finish();
                }
            }
        } catch (ActivityNotFoundException e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BaseView", "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml", 0, DebugCategory.ERROR));
        } catch (Exception e2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.smaato.soma.bannerutilities.a getCurrentPackage() {
        return this.g;
    }

    protected final void setCurrentPackage(com.smaato.soma.bannerutilities.a aVar) {
        this.g = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.smaato.soma.bannerutilities.a getNextPackage() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setNextPackage(com.smaato.soma.bannerutilities.a aVar) {
        this.h = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final b getAdDownloader() throws UnableToFindAdDownloader {
        try {
            if (this.c == null) {
                setAdDownloader(com.smaato.soma.internal.a.a().a(getContext(), this));
            }
            return this.c;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToFindAdDownloader(e2);
        }
    }

    protected final void setAdDownloader(b bVar) {
        this.c = bVar;
    }

    protected final void a(BannerState bannerState) throws BannerStateInstantiationException {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.j.12
            });
            this.e = bannerState;
            this.e.a(true);
            this.e.a(new f(this));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new BannerStateInstantiationException(e2);
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        this.k = i;
    }

    public final int getBackgroundColor() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setBannerAnimatorHandler(Handler handler) {
        this.i = handler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j() throws UnableToNotifyBannerIdle {
        com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.j.13
        });
    }

    public final boolean k() {
        return this.f5126a;
    }

    public final void setScalingEnabled(boolean z) {
        this.f5126a = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        new l<Void>() { // from class: com.smaato.soma.j.14
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                return null;
            }
        }.c();
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        new l<Void>() { // from class: com.smaato.soma.j.15
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (!j.this.n) {
                    j.this.g();
                    return null;
                }
                return null;
            }
        }.c();
        super.onAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseView.java */
    /* loaded from: classes3.dex */
    public class a implements c {
        private a() {
        }

        @Override // com.smaato.soma.c
        public final void onReceiveAd(b bVar, final p pVar) throws OnReceiveAdFailedException {
            try {
                try {
                    com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.j.a.1
                    });
                    if (pVar.a() == BannerStatus.ERROR) {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("" + pVar.a(), "transitionErrorLoading", 1, DebugCategory.ERROR));
                        j.this.getLoadingState().g();
                    } else if (pVar.b() && pVar.c() != CSMAdFormat.INTERSTITIAL) {
                        j.this.l.post(new Runnable() { // from class: com.smaato.soma.j.a.2
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    j.this.setNextPackage(com.smaato.soma.internal.a.a().a(AdType.MEDIATION));
                                    j.this.getNextPackage().a(pVar);
                                    j.this.getLoadingState().a(LoadingState.State.STATE_BANNERLOADING);
                                    j.this.getLoadingState().f();
                                } catch (Exception e) {
                                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BaseView", "Exception from Mediation Network BannerAd  BaseView.onReceiveAd()", 1, DebugCategory.DEBUG));
                                }
                            }
                        });
                    } else if (pVar.b() && pVar.c() == CSMAdFormat.INTERSTITIAL) {
                        j.this.l.post(new Runnable() { // from class: com.smaato.soma.j.a.3
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    j.this.setNextPackage(com.smaato.soma.internal.a.a().a(pVar.d()));
                                    if (j.this.getNextPackage() != null) {
                                        j.this.getNextPackage().a(pVar);
                                    } else {
                                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BaseView", "getNextPackage() is Null handling Mediation Network InterstitialAd BaseView.onReceiveAd()", 1, DebugCategory.DEBUG));
                                    }
                                    j.this.getLoadingState().c();
                                } catch (Exception e) {
                                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BaseView", "Exception from Mediation Network InterstitialAd BaseView.onReceiveAd()", 1, DebugCategory.DEBUG));
                                }
                            }
                        });
                    } else {
                        j.this.setNextPackage(com.smaato.soma.internal.a.a().a(pVar.d()));
                        j.this.getNextPackage().a(pVar);
                        j.this.getLoadingState().c();
                    }
                    if (pVar.b()) {
                        j.this.o = 0;
                        j.this.m = true;
                    } else {
                        j.this.m = false;
                    }
                    j.this.n = false;
                } catch (RuntimeException e) {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BaseView", "RuntimeException occured in Mediation AdNetwork onReceiveAd()", 1, DebugCategory.ERROR));
                    throw e;
                } catch (Exception e2) {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("" + pVar.a(), "Exception occured in Mediation AdNetwork onReceiveAd()", 1, DebugCategory.ERROR));
                    throw new OnReceiveAdFailedException(e2);
                }
            } finally {
                j.this.o = 0;
            }
        }
    }
}
