package com.smaato.soma.interstitial;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.drive.DriveFile;
import com.smaato.soma.ExpandedBannerActivity;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.BeaconLoadFailedException;
import com.smaato.soma.exception.UnableToNotifyBannerIdle;
import com.smaato.soma.j;
import com.smaato.soma.l;
import java.lang.ref.WeakReference;
/* compiled from: InterstitialBannerView.java */
/* loaded from: classes.dex */
public class b extends j {

    /* renamed from: a  reason: collision with root package name */
    private a f5120a;
    private boolean m;
    private Interstitial n;
    @Deprecated
    private WeakReference<com.smaato.soma.mediation.j> o;
    @Deprecated
    private WeakReference<com.smaato.soma.mediation.j> p;

    public b(Context context) {
        super(context);
        this.m = false;
    }

    public void setInterstitialParent(Interstitial interstitial) {
        this.n = interstitial;
    }

    public Interstitial getInterstitialParent() {
        return this.n;
    }

    @Deprecated
    public void setMediationReference(WeakReference<com.smaato.soma.mediation.j> weakReference) {
        this.o = weakReference;
    }

    @Deprecated
    public void setCustomMediationReference(WeakReference<com.smaato.soma.mediation.j> weakReference) {
        this.p = weakReference;
    }

    @Override // com.smaato.soma.j
    public Handler getBannerAnimatorHandler() {
        if (this.f5120a == null) {
            this.f5120a = new a(this);
        }
        return this.f5120a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setContext(final Activity activity) {
        new l<Void>() { // from class: com.smaato.soma.interstitial.b.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (activity != null) {
                    b.this.g.b(new WeakReference<>(activity));
                    return null;
                }
                return null;
            }
        }.c();
    }

    public final Context getActivityContext() {
        return this.g.h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smaato.soma.j
    public void j() throws UnableToNotifyBannerIdle {
        new l<Void>() { // from class: com.smaato.soma.interstitial.b.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (b.this.m) {
                    b.this.n.g();
                    Interstitial.b.onReadyToShow();
                    b.this.m = false;
                    return null;
                }
                return null;
            }
        }.c();
        super.j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setShouldNotifyIdle(boolean z) {
        this.m = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smaato.soma.j
    public boolean g() throws BeaconLoadFailedException {
        return false;
    }

    protected boolean b() throws BeaconLoadFailedException {
        return super.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smaato.soma.j, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        new l<Void>() { // from class: com.smaato.soma.interstitial.b.3
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                b.this.b();
                return null;
            }
        }.c();
        super.onAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smaato.soma.j, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        try {
            if (this.o != null && this.o.get() != null) {
                this.o.get().b();
            }
        } catch (NoClassDefFoundError e) {
        } catch (RuntimeException e2) {
        } catch (Exception e3) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("InterstitialBannerView", "Exception during clearing mMediationEventInterstitialReference", 1, DebugCategory.DEBUG));
        }
        try {
            if (this.p != null && this.p.get() != null) {
                this.p.get().b();
            }
        } catch (NoClassDefFoundError e4) {
        } catch (RuntimeException e5) {
        } catch (Exception e6) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("InterstitialBannerView", "Exception during clearing mCustomEventInterstitialReference", 1, DebugCategory.DEBUG));
        }
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: InterstitialBannerView.java */
    /* loaded from: classes3.dex */
    public class a extends Handler {
        private WeakReference<j> b;
        private j c;

        private a(j jVar) {
            this.b = null;
            this.c = jVar;
        }

        protected WeakReference<j> a() {
            if (this.b == null) {
                this.b = new WeakReference<>(this.c);
            }
            return this.b;
        }

        @Override // android.os.Handler
        public void handleMessage(final Message message) {
            super.handleMessage(message);
            new l<Void>() { // from class: com.smaato.soma.interstitial.b.a.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    j jVar = a.this.a().get();
                    if (jVar != null) {
                        if (message.what == 101) {
                            ((ViewGroup) jVar.getParent()).removeView(jVar);
                            jVar.clearAnimation();
                            jVar.clearFocus();
                            jVar.destroyDrawingCache();
                            jVar.getBannerState().b();
                            com.smaato.soma.bannerutilities.b.a().a(b.this.getCurrentPackage(), jVar);
                            com.smaato.soma.measurements.a.a().e();
                            b.this.c();
                            try {
                                ExpandedBannerActivity.f4841a = new WeakReference<>(b.this.getCurrentPackage());
                                Intent intent = new Intent(b.this.getActivityContext(), ExpandedBannerActivity.class);
                                intent.putExtra("rotation", com.smaato.soma.internal.requests.settings.a.a().k());
                                intent.putExtra("orientation", com.smaato.soma.internal.requests.settings.a.a().j());
                                b.this.g.a(false);
                                ((InterstitialActivity) b.this.getActivityContext()).startActivityForResult(intent, 1);
                                if (b.this.g.g()) {
                                    b.this.g.e().loadUrl("javascript:smaato_bridge.legacyExpand();");
                                }
                            } catch (ActivityNotFoundException e) {
                                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("InterstitialBannerView", "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml. android.content.ActivityNotFoundException occured", 0, DebugCategory.ERROR));
                            } catch (Exception e2) {
                                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("InterstitialBannerView", "Exception inside Internal Browser", 0, DebugCategory.ERROR));
                            }
                        } else if (message.what == 103) {
                            Log.e(getClass().getCanonicalName(), "resize");
                            b.this.getCurrentPackage().e().setLayoutParams(new FrameLayout.LayoutParams(message.arg1, message.arg2));
                            b.this.getCurrentPackage().e().requestLayout();
                        } else if (message.what == 102 || message.what == 107) {
                            if (!b.this.g.a()) {
                                jVar.getBannerState().d();
                                b.this.g.a(true);
                                try {
                                    if (b.this.getCurrentPackage().h() instanceof InterstitialActivity) {
                                        ((InterstitialActivity) b.this.getCurrentPackage().h()).finishActivity(1);
                                        ((InterstitialActivity) b.this.getCurrentPackage().h()).finish();
                                    }
                                    if (b.this.getCurrentPackage().h() instanceof ExpandedBannerActivity) {
                                        ((ExpandedBannerActivity) b.this.getCurrentPackage().h()).finish();
                                    }
                                    if (b.this.getCurrentPackage().g() && b.this.getCurrentPackage().b() != null && !((ExpandedBannerActivity) b.this.g.b()).b()) {
                                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("InterstitialBannerView", "ExpandedBannerActivity being finished with handle(Values.MESSAGE_CLOSE)", 1, DebugCategory.DEBUG));
                                        ((ExpandedBannerActivity) b.this.getCurrentPackage().b()).finish();
                                        b.this.g.a(true);
                                    }
                                } catch (ActivityNotFoundException e3) {
                                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("InterstitialBannerView", "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml. ActivityNotFoundException occured", 2, DebugCategory.ERROR));
                                } catch (Exception e4) {
                                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("InterstitialBannerView", "Exception inside Internal Browser", 2, DebugCategory.ERROR));
                                }
                            }
                        } else if (message.what == 108) {
                            jVar.getBannerState().c();
                            try {
                                String str = new String(b.this.getCurrentPackage().e().getUrl());
                                ((ExpandedBannerActivity) b.this.getCurrentPackage().b()).finish();
                                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                                intent2.addFlags(DriveFile.MODE_READ_ONLY);
                                b.this.getContext().startActivity(intent2);
                            } catch (ActivityNotFoundException e5) {
                                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("InterstitialBannerView", "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml", 2, DebugCategory.ERROR));
                            } catch (Exception e6) {
                                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("InterstitialBannerView", "Exception inside Internal Browser", 2, DebugCategory.ERROR));
                            }
                        }
                    }
                    return null;
                }
            }.c();
        }
    }
}
