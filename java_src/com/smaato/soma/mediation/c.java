package com.smaato.soma.mediation;

import android.content.Context;
import com.facebook.FacebookSdk;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.ImpressionListener;
import com.facebook.ads.NativeAd;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.mediation.n;
import java.util.Map;
/* compiled from: FacebookMediationNative.java */
/* loaded from: classes3.dex */
public class c extends n {

    /* renamed from: a  reason: collision with root package name */
    a f5173a;
    private n.a b;

    @Override // com.smaato.soma.mediation.n
    public void a(Context context, n.a aVar, Map<String, String> map, o oVar) {
        try {
            this.b = aVar;
            if (!a(oVar)) {
                this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
            } else {
                FacebookSdk.setApplicationId(oVar.k());
                this.f5173a = new a(context, new NativeAd(context, oVar.j()), this.b);
                this.f5173a.b();
            }
        } catch (Exception e) {
            b();
        } catch (NoClassDefFoundError e2) {
            c();
        }
    }

    @Override // com.smaato.soma.mediation.n
    public void a() {
        try {
            if (this.f5173a != null && this.f5173a.a() != null) {
                this.f5173a.a().destroy();
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FacebookMediationNative.java */
    /* loaded from: classes3.dex */
    public static class a implements AdListener, ImpressionListener {

        /* renamed from: a  reason: collision with root package name */
        private final Context f5174a;
        private final NativeAd b;
        private final n.a c;

        public NativeAd a() {
            return this.b;
        }

        a(Context context, NativeAd nativeAd, n.a aVar) {
            this.f5174a = context.getApplicationContext();
            this.b = nativeAd;
            this.c = aVar;
        }

        void b() {
            this.b.setAdListener(this);
            this.b.setImpressionListener(this);
            this.b.loadAd();
        }

        public final String c() {
            return this.b.getAdBody();
        }

        public final String d() {
            NativeAd.Image adCoverImage = this.b.getAdCoverImage();
            if (adCoverImage == null) {
                return null;
            }
            return adCoverImage.getUrl();
        }

        public final String e() {
            NativeAd.Image adIcon = this.b.getAdIcon();
            if (adIcon == null) {
                return null;
            }
            return adIcon.getUrl();
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(Ad ad) {
            if (this.b == null || !this.b.equals(ad) || !this.b.isAdLoaded()) {
                this.c.a(ErrorCode.NETWORK_INVALID_STATE);
                return;
            }
            com.smaato.soma.internal.b.a aVar = new com.smaato.soma.internal.b.a();
            this.b.unregisterView();
            if (this.b.getAdStarRating() != null) {
                aVar.a(a(this.b.getAdStarRating()));
            }
            aVar.a(this.b.getAdTitle());
            aVar.d(d());
            aVar.c(e());
            aVar.b(c());
            aVar.f(this.b.getAdCallToAction());
            aVar.a(this.b);
            this.c.a(aVar);
        }

        @Override // com.facebook.ads.AdListener
        public void onError(Ad ad, AdError adError) {
            if (adError == null) {
                this.c.a(ErrorCode.UNSPECIFIED);
            } else if (adError.getErrorCode() == AdError.NO_FILL.getErrorCode()) {
                this.c.a(ErrorCode.NETWORK_NO_FILL);
            } else if (adError.getErrorCode() == AdError.INTERNAL_ERROR.getErrorCode()) {
                this.c.a(ErrorCode.NETWORK_INVALID_STATE);
            } else {
                this.c.a(ErrorCode.UNSPECIFIED);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(Ad ad) {
            this.c.b();
        }

        @Override // com.facebook.ads.ImpressionListener
        public void onLoggingImpression(Ad ad) {
            this.c.a();
        }

        private float a(NativeAd.Rating rating) {
            return rating == null ? BitmapDescriptorFactory.HUE_RED : (float) Math.round((5.0d * rating.getValue()) / rating.getScale());
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

    private void b() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("FacebookNative", "Exception happened with Mediation. Check inputs forFacebookNative", 1, DebugCategory.ERROR));
        this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        a();
    }

    private void c() {
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("FacebookNative", "NoClassDefFoundError happened with Mediation. Check your configurations for FacebookNative", 1, DebugCategory.ERROR));
        this.b.a(ErrorCode.ADAPTER_CONFIGURATION_ERROR);
        a();
    }
}
