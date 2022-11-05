package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Keep;
import android.widget.FrameLayout;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzeg;
import com.google.android.gms.internal.zzer;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzew;
import com.google.android.gms.internal.zzey;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzhe;
import com.google.android.gms.internal.zzhh;
import com.google.android.gms.internal.zzjd;
import com.google.android.gms.internal.zzka;
import com.google.android.gms.internal.zzkz;
import com.google.android.gms.internal.zzlf;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zznr;
import com.google.android.gms.internal.zznu;
import com.google.android.gms.internal.zzqh;
@Keep
@DynamiteApi
@zzme
/* loaded from: classes.dex */
public class ClientApi extends zzew.zza {
    @Override // com.google.android.gms.internal.zzew
    public zzer createAdLoaderBuilder(IObjectWrapper iObjectWrapper, String str, zzka zzkaVar, int i) {
        Context context = (Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        return new zzl(context, str, zzkaVar, new zzqh(10298000, i, true, zzw.zzcM().zzU(context)), zze.zzcc());
    }

    @Override // com.google.android.gms.internal.zzew
    public zzkz createAdOverlay(IObjectWrapper iObjectWrapper) {
        return new com.google.android.gms.ads.internal.overlay.zze((Activity) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzew
    public zzet createBannerAdManager(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, zzka zzkaVar, int i) throws RemoteException {
        Context context = (Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        return new zzg(context, zzegVar, str, zzkaVar, new zzqh(10298000, i, true, zzw.zzcM().zzU(context)), zze.zzcc());
    }

    @Override // com.google.android.gms.internal.zzew
    public zzlf createInAppPurchaseManager(IObjectWrapper iObjectWrapper) {
        return new com.google.android.gms.ads.internal.purchase.zze((Activity) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzew
    public zzet createInterstitialAdManager(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, zzka zzkaVar, int i) throws RemoteException {
        Context context = (Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        zzgd.initialize(context);
        zzqh zzqhVar = new zzqh(10298000, i, true, zzw.zzcM().zzU(context));
        boolean equals = "reward_mb".equals(zzegVar.zzzy);
        return (!equals && zzgd.zzDc.get().booleanValue()) || (equals && zzgd.zzDd.get().booleanValue()) ? new zzjd(context, str, zzkaVar, zzqhVar, zze.zzcc()) : new zzm(context, zzegVar, str, zzkaVar, zzqhVar, zze.zzcc());
    }

    @Override // com.google.android.gms.internal.zzew
    public zzhh createNativeAdViewDelegate(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzhe((FrameLayout) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper), (FrameLayout) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper2));
    }

    @Override // com.google.android.gms.internal.zzew
    public zznu createRewardedVideoAd(IObjectWrapper iObjectWrapper, zzka zzkaVar, int i) {
        Context context = (Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        return new zznr(context, zze.zzcc(), zzkaVar, new zzqh(10298000, i, true, zzw.zzcM().zzU(context)));
    }

    @Override // com.google.android.gms.internal.zzew
    public zzet createSearchAdManager(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, int i) throws RemoteException {
        Context context = (Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        return new zzv(context, zzegVar, str, new zzqh(10298000, i, true, zzw.zzcM().zzU(context)));
    }

    @Override // com.google.android.gms.internal.zzew
    public zzey getMobileAdsSettingsManager(IObjectWrapper iObjectWrapper) {
        return null;
    }

    @Override // com.google.android.gms.internal.zzew
    public zzey getMobileAdsSettingsManagerWithClientJarVersion(IObjectWrapper iObjectWrapper, int i) {
        Context context = (Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        return zzq.zza(context, new zzqh(10298000, i, true, zzw.zzcM().zzU(context)));
    }
}
