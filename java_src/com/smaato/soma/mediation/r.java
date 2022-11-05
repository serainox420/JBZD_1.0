package com.smaato.soma.mediation;

import android.content.Context;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubView;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.mediation.f;
import java.util.Map;
import java.util.logging.Level;
/* compiled from: MoPubMediationBanner.java */
/* loaded from: classes3.dex */
public class r extends f {
    private static MoPubView b;

    /* renamed from: a  reason: collision with root package name */
    private f.a f5197a;

    @Override // com.smaato.soma.mediation.f
    public void a(Context context, f.a aVar, Map<String, String> map, o oVar) {
        this.f5197a = aVar;
        if (!a(oVar)) {
            this.f5197a.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        try {
            if (b == null) {
                b = new MoPubView(context);
            }
            if (com.smaato.soma.debug.a.f4941a > 1) {
                MoPubLog.setSdkHandlerLevel(Level.ALL);
            } else {
                MoPubLog.setSdkHandlerLevel(Level.OFF);
            }
            b.setBannerAdListener(new a());
            b.setAdUnitId(oVar.j());
            b.setTimeout(7500);
            b.setAutorefreshEnabled(false);
            b.loadAd();
        } catch (Exception e) {
            e();
        } catch (NoClassDefFoundError e2) {
            d();
        }
    }

    @Override // com.smaato.soma.mediation.f
    public void a() {
        try {
            t.a(b);
        } catch (Exception e) {
        } catch (NoClassDefFoundError e2) {
        } finally {
            b();
        }
    }

    public void b() {
        try {
            if (b != null) {
                b.destroy();
                b = null;
            }
        } catch (Exception e) {
        } catch (NoClassDefFoundError e2) {
        }
    }

    private boolean a(o oVar) {
        if (oVar == null) {
            return false;
        }
        try {
            if (oVar.j() == null) {
                return false;
            }
            return !oVar.j().isEmpty();
        } catch (Exception e) {
            return false;
        }
    }

    /* compiled from: MoPubMediationBanner.java */
    /* loaded from: classes3.dex */
    public class a implements MoPubView.BannerAdListener {
        public a() {
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerLoaded(MoPubView moPubView) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MoPubMediationBanner", "MoPub banner ad loaded successfully. Showing ad...", 1, DebugCategory.DEBUG));
            if (r.this.f5197a != null) {
                r.this.f5197a.a(r.b);
            }
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
            try {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MoPubMediationBanner", "MoPub banner ad failed to load. moPubErrorCode:" + moPubErrorCode, 1, DebugCategory.DEBUG));
                if (r.this.f5197a != null) {
                    r.this.f5197a.a(ErrorCode.NETWORK_NO_FILL);
                }
                r.this.a();
            } catch (Exception e) {
                r.this.e();
            } catch (NoClassDefFoundError e2) {
                r.this.d();
            } finally {
                r.this.a();
            }
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerClicked(MoPubView moPubView) {
            try {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MoPubMediationBanner", "MoPub banner ad clicked.", 1, DebugCategory.DEBUG));
                if (r.this.f5197a != null) {
                    r.this.f5197a.c();
                }
            } catch (Exception e) {
                r.this.e();
            } catch (NoClassDefFoundError e2) {
                r.this.d();
            }
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerExpanded(MoPubView moPubView) {
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerCollapsed(MoPubView moPubView) {
            r.this.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MoPubMediationBanner", "Dependencies missing. Check configurations of MoPubMediationBanner", 1, DebugCategory.ERROR));
        this.f5197a.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("MoPubMediationBanner", "Exception happened with Mediation inputs. Check in MoPubMediationBanner", 1, DebugCategory.ERROR));
        this.f5197a.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        a();
    }
}
