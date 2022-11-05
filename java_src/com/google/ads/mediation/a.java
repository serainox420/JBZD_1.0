package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.internal.zzdx;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzqf;
import com.google.android.gms.internal.zzrj;
import java.util.Date;
import java.util.Set;
@zzme
/* loaded from: classes.dex */
public abstract class a implements MediationBannerAdapter, MediationNativeAdapter, MediationRewardedVideoAdAdapter, zzrj {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    protected AdView zzcD;
    protected InterstitialAd zzcE;
    private AdLoader zzcF;
    private Context zzcG;
    private InterstitialAd zzcH;
    private MediationRewardedVideoAdListener zzcI;
    final RewardedVideoAdListener zzcJ = new RewardedVideoAdListener() { // from class: com.google.ads.mediation.a.1
        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewarded(RewardItem rewardItem) {
            a.this.zzcI.onRewarded(a.this, rewardItem);
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewardedVideoAdClosed() {
            a.this.zzcI.onAdClosed(a.this);
            a.this.zzcH = null;
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewardedVideoAdFailedToLoad(int i) {
            a.this.zzcI.onAdFailedToLoad(a.this, i);
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewardedVideoAdLeftApplication() {
            a.this.zzcI.onAdLeftApplication(a.this);
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewardedVideoAdLoaded() {
            a.this.zzcI.onAdLoaded(a.this);
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewardedVideoAdOpened() {
            a.this.zzcI.onAdOpened(a.this);
        }

        @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
        public void onRewardedVideoStarted() {
            a.this.zzcI.onVideoStarted(a.this);
        }
    };

    /* renamed from: com.google.ads.mediation.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class C0130a extends NativeAppInstallAdMapper {

        /* renamed from: a  reason: collision with root package name */
        private final NativeAppInstallAd f3133a;

        public C0130a(NativeAppInstallAd nativeAppInstallAd) {
            this.f3133a = nativeAppInstallAd;
            setHeadline(nativeAppInstallAd.getHeadline().toString());
            setImages(nativeAppInstallAd.getImages());
            setBody(nativeAppInstallAd.getBody().toString());
            setIcon(nativeAppInstallAd.getIcon());
            setCallToAction(nativeAppInstallAd.getCallToAction().toString());
            if (nativeAppInstallAd.getStarRating() != null) {
                setStarRating(nativeAppInstallAd.getStarRating().doubleValue());
            }
            if (nativeAppInstallAd.getStore() != null) {
                setStore(nativeAppInstallAd.getStore().toString());
            }
            if (nativeAppInstallAd.getPrice() != null) {
                setPrice(nativeAppInstallAd.getPrice().toString());
            }
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(nativeAppInstallAd.getVideoController());
        }

        @Override // com.google.android.gms.ads.mediation.NativeAdMapper
        public void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.f3133a);
            }
        }
    }

    /* loaded from: classes2.dex */
    static class b extends NativeContentAdMapper {

        /* renamed from: a  reason: collision with root package name */
        private final NativeContentAd f3134a;

        public b(NativeContentAd nativeContentAd) {
            this.f3134a = nativeContentAd;
            setHeadline(nativeContentAd.getHeadline().toString());
            setImages(nativeContentAd.getImages());
            setBody(nativeContentAd.getBody().toString());
            if (nativeContentAd.getLogo() != null) {
                setLogo(nativeContentAd.getLogo());
            }
            setCallToAction(nativeContentAd.getCallToAction().toString());
            setAdvertiser(nativeContentAd.getAdvertiser().toString());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(nativeContentAd.getVideoController());
        }

        @Override // com.google.android.gms.ads.mediation.NativeAdMapper
        public void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.f3134a);
            }
        }
    }

    /* loaded from: classes2.dex */
    static final class c extends AdListener implements zzdx {

        /* renamed from: a  reason: collision with root package name */
        final a f3135a;
        final MediationBannerListener b;

        public c(a aVar, MediationBannerListener mediationBannerListener) {
            this.f3135a = aVar;
            this.b = mediationBannerListener;
        }

        @Override // com.google.android.gms.internal.zzdx
        public void onAdClicked() {
            this.b.onAdClicked(this.f3135a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            this.b.onAdClosed(this.f3135a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            this.b.onAdFailedToLoad(this.f3135a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            this.b.onAdLeftApplication(this.f3135a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            this.b.onAdLoaded(this.f3135a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            this.b.onAdOpened(this.f3135a);
        }
    }

    /* loaded from: classes2.dex */
    static final class d extends AdListener implements zzdx {

        /* renamed from: a  reason: collision with root package name */
        final a f3136a;
        final MediationInterstitialListener b;

        public d(a aVar, MediationInterstitialListener mediationInterstitialListener) {
            this.f3136a = aVar;
            this.b = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.internal.zzdx
        public void onAdClicked() {
            this.b.onAdClicked(this.f3136a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            this.b.onAdClosed(this.f3136a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            this.b.onAdFailedToLoad(this.f3136a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            this.b.onAdLeftApplication(this.f3136a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            this.b.onAdLoaded(this.f3136a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            this.b.onAdOpened(this.f3136a);
        }
    }

    /* loaded from: classes2.dex */
    static final class e extends AdListener implements NativeAppInstallAd.OnAppInstallAdLoadedListener, NativeContentAd.OnContentAdLoadedListener, zzdx {

        /* renamed from: a  reason: collision with root package name */
        final a f3137a;
        final MediationNativeListener b;

        public e(a aVar, MediationNativeListener mediationNativeListener) {
            this.f3137a = aVar;
            this.b = mediationNativeListener;
        }

        @Override // com.google.android.gms.internal.zzdx
        public void onAdClicked() {
            this.b.onAdClicked(this.f3137a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            this.b.onAdClosed(this.f3137a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            this.b.onAdFailedToLoad(this.f3137a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            this.b.onAdLeftApplication(this.f3137a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            this.b.onAdOpened(this.f3137a);
        }

        @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
        public void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
            this.b.onAdLoaded(this.f3137a, new C0130a(nativeAppInstallAd));
        }

        @Override // com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener
        public void onContentAdLoaded(NativeContentAd nativeContentAd) {
            this.b.onAdLoaded(this.f3137a, new b(nativeContentAd));
        }
    }

    public String getAdUnitId(Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.zzcD;
    }

    @Override // com.google.android.gms.internal.zzrj
    public Bundle getInterstitialAdapterInfo() {
        return new MediationAdapter.zza().zzam(1).zzmm();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void initialize(Context context, MediationAdRequest mediationAdRequest, String str, MediationRewardedVideoAdListener mediationRewardedVideoAdListener, Bundle bundle, Bundle bundle2) {
        this.zzcG = context.getApplicationContext();
        this.zzcI = mediationRewardedVideoAdListener;
        this.zzcI.onInitializationSucceeded(this);
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public boolean isInitialized() {
        return this.zzcI != null;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void loadAd(MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        if (this.zzcG == null || this.zzcI == null) {
            zzqf.e("AdMobAdapter.loadAd called before initialize.");
            return;
        }
        this.zzcH = new InterstitialAd(this.zzcG);
        this.zzcH.zzd(true);
        this.zzcH.setAdUnitId(getAdUnitId(bundle));
        this.zzcH.setRewardedVideoAdListener(this.zzcJ);
        this.zzcH.loadAd(zza(this.zzcG, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
        if (this.zzcD != null) {
            this.zzcD.destroy();
            this.zzcD = null;
        }
        if (this.zzcE != null) {
            this.zzcE = null;
        }
        if (this.zzcF != null) {
            this.zzcF = null;
        }
        if (this.zzcH != null) {
            this.zzcH = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
        if (this.zzcD != null) {
            this.zzcD.pause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
        if (this.zzcD != null) {
            this.zzcD.resume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzcD = new AdView(context);
        this.zzcD.setAdSize(new AdSize(adSize.getWidth(), adSize.getHeight()));
        this.zzcD.setAdUnitId(getAdUnitId(bundle));
        this.zzcD.setAdListener(new c(this, mediationBannerListener));
        this.zzcD.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzcE = new InterstitialAd(context);
        this.zzcE.setAdUnitId(getAdUnitId(bundle));
        this.zzcE.setAdListener(new d(this, mediationInterstitialListener));
        this.zzcE.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        e eVar = new e(this, mediationNativeListener);
        AdLoader.Builder withAdListener = zza(context, bundle.getString(AD_UNIT_ID_PARAMETER)).withAdListener(eVar);
        NativeAdOptions nativeAdOptions = nativeMediationAdRequest.getNativeAdOptions();
        if (nativeAdOptions != null) {
            withAdListener.withNativeAdOptions(nativeAdOptions);
        }
        if (nativeMediationAdRequest.isAppInstallAdRequested()) {
            withAdListener.forAppInstallAd(eVar);
        }
        if (nativeMediationAdRequest.isContentAdRequested()) {
            withAdListener.forContentAd(eVar);
        }
        this.zzcF = withAdListener.build();
        this.zzcF.loadAd(zza(context, nativeMediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.zzcE.show();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void showVideo() {
        this.zzcH.show();
    }

    protected abstract Bundle zza(Bundle bundle, Bundle bundle2);

    AdLoader.Builder zza(Context context, String str) {
        return new AdLoader.Builder(context, str);
    }

    AdRequest zza(Context context, MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        AdRequest.Builder builder = new AdRequest.Builder();
        Date birthday = mediationAdRequest.getBirthday();
        if (birthday != null) {
            builder.setBirthday(birthday);
        }
        int gender = mediationAdRequest.getGender();
        if (gender != 0) {
            builder.setGender(gender);
        }
        Set<String> keywords = mediationAdRequest.getKeywords();
        if (keywords != null) {
            for (String str : keywords) {
                builder.addKeyword(str);
            }
        }
        Location location = mediationAdRequest.getLocation();
        if (location != null) {
            builder.setLocation(location);
        }
        if (mediationAdRequest.isTesting()) {
            builder.addTestDevice(zzel.zzeT().zzad(context));
        }
        if (mediationAdRequest.taggedForChildDirectedTreatment() != -1) {
            builder.tagForChildDirectedTreatment(mediationAdRequest.taggedForChildDirectedTreatment() == 1);
        }
        builder.setIsDesignedForFamilies(mediationAdRequest.isDesignedForFamilies());
        builder.addNetworkExtrasBundle(AdMobAdapter.class, zza(bundle, bundle2));
        return builder.build();
    }
}
