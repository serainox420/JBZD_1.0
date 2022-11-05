package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.applovin.sdk.AppLovinEventTypes;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.internal.zzew;
import com.mopub.common.AdType;
@zzme
/* loaded from: classes.dex */
public class zzek {
    private final Object zzrJ = new Object();
    private zzew zzzG;
    private final zzeb zzzH;
    private final zzea zzzI;
    private final zzfj zzzJ;
    private final zzht zzzK;
    private final zzny zzzL;
    private final zzlk zzzM;
    private final zzky zzzN;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public abstract class zza<T> {
        zza() {
        }

        protected abstract T zzb(zzew zzewVar) throws RemoteException;

        protected abstract T zzeJ() throws RemoteException;

        protected final T zzeQ() {
            zzew zzeH = zzek.this.zzeH();
            if (zzeH == null) {
                zzqf.zzbh("ClientApi class cannot be loaded.");
                return null;
            }
            try {
                return zzb(zzeH);
            } catch (RemoteException e) {
                zzqf.zzc("Cannot invoke local loader using ClientApi class", e);
                return null;
            }
        }

        protected final T zzeR() {
            try {
                return zzeJ();
            } catch (RemoteException e) {
                zzqf.zzc("Cannot invoke remote loader", e);
                return null;
            }
        }
    }

    public zzek(zzeb zzebVar, zzea zzeaVar, zzfj zzfjVar, zzht zzhtVar, zzny zznyVar, zzlk zzlkVar, zzky zzkyVar) {
        this.zzzH = zzebVar;
        this.zzzI = zzeaVar;
        this.zzzJ = zzfjVar;
        this.zzzK = zzhtVar;
        this.zzzL = zznyVar;
        this.zzzM = zzlkVar;
        this.zzzN = zzkyVar;
    }

    private static boolean zza(Activity activity, String str) {
        Intent intent = activity.getIntent();
        if (!intent.hasExtra(str)) {
            zzqf.e("useClientJar flag not found in activity intent extras.");
            return false;
        }
        return intent.getBooleanExtra(str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzc(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString(NativeProtocol.WEB_DIALOG_ACTION, "no_ads_fallback");
        bundle.putString("flow", str);
        zzel.zzeT().zza(context, (String) null, "gmob-apps", bundle, true);
    }

    private static zzew zzeG() {
        zzew asInterface;
        try {
            Object newInstance = zzek.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").newInstance();
            if (!(newInstance instanceof IBinder)) {
                zzqf.zzbh("ClientApi class is not an instance of IBinder");
                asInterface = null;
            } else {
                asInterface = zzew.zza.asInterface((IBinder) newInstance);
            }
            return asInterface;
        } catch (Exception e) {
            zzqf.zzc("Failed to instantiate ClientApi class.", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzew zzeH() {
        zzew zzewVar;
        synchronized (this.zzrJ) {
            if (this.zzzG == null) {
                this.zzzG = zzeG();
            }
            zzewVar = this.zzzG;
        }
        return zzewVar;
    }

    public zzet zza(final Context context, final zzeg zzegVar, final String str) {
        return (zzet) zza(context, false, (zza<Object>) new zza<zzet>() { // from class: com.google.android.gms.internal.zzek.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zza */
            public zzet zzb(zzew zzewVar) throws RemoteException {
                return zzewVar.createSearchAdManager(com.google.android.gms.dynamic.zzd.zzA(context), zzegVar, str, 10298000);
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzeI */
            public zzet zzeJ() {
                zzet zza2 = zzek.this.zzzH.zza(context, zzegVar, str, null, 3);
                if (zza2 != null) {
                    return zza2;
                }
                zzek.this.zzc(context, "search");
                return new zzfl();
            }
        });
    }

    public zzet zza(final Context context, final zzeg zzegVar, final String str, final zzka zzkaVar) {
        return (zzet) zza(context, false, (zza<Object>) new zza<zzet>() { // from class: com.google.android.gms.internal.zzek.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zza */
            public zzet zzb(zzew zzewVar) throws RemoteException {
                return zzewVar.createBannerAdManager(com.google.android.gms.dynamic.zzd.zzA(context), zzegVar, str, zzkaVar, 10298000);
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzeI */
            public zzet zzeJ() {
                zzet zza2 = zzek.this.zzzH.zza(context, zzegVar, str, zzkaVar, 1);
                if (zza2 != null) {
                    return zza2;
                }
                zzek.this.zzc(context, "banner");
                return new zzfl();
            }
        });
    }

    public zzhh zza(final Context context, final FrameLayout frameLayout, final FrameLayout frameLayout2) {
        return (zzhh) zza(context, false, (zza<Object>) new zza<zzhh>() { // from class: com.google.android.gms.internal.zzek.6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zze */
            public zzhh zzb(zzew zzewVar) throws RemoteException {
                return zzewVar.createNativeAdViewDelegate(com.google.android.gms.dynamic.zzd.zzA(frameLayout), com.google.android.gms.dynamic.zzd.zzA(frameLayout2));
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzeM */
            public zzhh zzeJ() {
                zzhh zzb = zzek.this.zzzK.zzb(context, frameLayout, frameLayout2);
                if (zzb != null) {
                    return zzb;
                }
                zzek.this.zzc(context, "native_ad_view_delegate");
                return new zzfn();
            }
        });
    }

    public zznu zza(final Context context, final zzka zzkaVar) {
        return (zznu) zza(context, false, (zza<Object>) new zza<zznu>() { // from class: com.google.android.gms.internal.zzek.7
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzeN */
            public zznu zzeJ() {
                zznu zzb = zzek.this.zzzL.zzb(context, zzkaVar);
                if (zzb != null) {
                    return zzb;
                }
                zzek.this.zzc(context, AdType.REWARDED_VIDEO);
                return new zzfo();
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzf */
            public zznu zzb(zzew zzewVar) throws RemoteException {
                return zzewVar.createRewardedVideoAd(com.google.android.gms.dynamic.zzd.zzA(context), zzkaVar, 10298000);
            }
        });
    }

    <T> T zza(Context context, boolean z, zza<T> zzaVar) {
        if (!z && !zzel.zzeT().zzaf(context)) {
            zzqf.zzbf("Google Play Services is not available");
            z = true;
        }
        if (z) {
            T zzeQ = zzaVar.zzeQ();
            return zzeQ == null ? zzaVar.zzeR() : zzeQ;
        }
        T zzeR = zzaVar.zzeR();
        return zzeR == null ? zzaVar.zzeQ() : zzeR;
    }

    public zzer zzb(final Context context, final String str, final zzka zzkaVar) {
        return (zzer) zza(context, false, (zza<Object>) new zza<zzer>() { // from class: com.google.android.gms.internal.zzek.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzc */
            public zzer zzb(zzew zzewVar) throws RemoteException {
                return zzewVar.createAdLoaderBuilder(com.google.android.gms.dynamic.zzd.zzA(context), str, zzkaVar, 10298000);
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzeK */
            public zzer zzeJ() {
                zzer zza2 = zzek.this.zzzI.zza(context, str, zzkaVar);
                if (zza2 != null) {
                    return zza2;
                }
                zzek.this.zzc(context, "native_ad");
                return new zzfk();
            }
        });
    }

    public zzet zzb(final Context context, final zzeg zzegVar, final String str, final zzka zzkaVar) {
        return (zzet) zza(context, false, (zza<Object>) new zza<zzet>() { // from class: com.google.android.gms.internal.zzek.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zza */
            public zzet zzb(zzew zzewVar) throws RemoteException {
                return zzewVar.createInterstitialAdManager(com.google.android.gms.dynamic.zzd.zzA(context), zzegVar, str, zzkaVar, 10298000);
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzeI */
            public zzet zzeJ() {
                zzet zza2 = zzek.this.zzzH.zza(context, zzegVar, str, zzkaVar, 2);
                if (zza2 != null) {
                    return zza2;
                }
                zzek.this.zzc(context, "interstitial");
                return new zzfl();
            }
        });
    }

    public zzlf zzb(final Activity activity) {
        return (zzlf) zza(activity, zza(activity, "com.google.android.gms.ads.internal.purchase.useClientJar"), new zza<zzlf>() { // from class: com.google.android.gms.internal.zzek.8
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzeO */
            public zzlf zzeJ() {
                zzlf zzg = zzek.this.zzzM.zzg(activity);
                if (zzg != null) {
                    return zzg;
                }
                zzek.this.zzc(activity, AppLovinEventTypes.USER_COMPLETED_IN_APP_PURCHASE);
                return null;
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzg */
            public zzlf zzb(zzew zzewVar) throws RemoteException {
                return zzewVar.createInAppPurchaseManager(com.google.android.gms.dynamic.zzd.zzA(activity));
            }
        });
    }

    public zzkz zzc(final Activity activity) {
        return (zzkz) zza(activity, zza(activity, "com.google.android.gms.ads.internal.overlay.useClientJar"), new zza<zzkz>() { // from class: com.google.android.gms.internal.zzek.9
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzeP */
            public zzkz zzeJ() {
                zzkz zzf = zzek.this.zzzN.zzf(activity);
                if (zzf != null) {
                    return zzf;
                }
                zzek.this.zzc(activity, "ad_overlay");
                return null;
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzh */
            public zzkz zzb(zzew zzewVar) throws RemoteException {
                return zzewVar.createAdOverlay(com.google.android.gms.dynamic.zzd.zzA(activity));
            }
        });
    }

    public zzey zzl(final Context context) {
        return (zzey) zza(context, false, (zza<Object>) new zza<zzey>() { // from class: com.google.android.gms.internal.zzek.5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzd */
            public zzey zzb(zzew zzewVar) throws RemoteException {
                return zzewVar.getMobileAdsSettingsManagerWithClientJarVersion(com.google.android.gms.dynamic.zzd.zzA(context), 10298000);
            }

            @Override // com.google.android.gms.internal.zzek.zza
            /* renamed from: zzeL */
            public zzey zzeJ() {
                zzey zzm = zzek.this.zzzJ.zzm(context);
                if (zzm != null) {
                    return zzm;
                }
                zzek.this.zzc(context, "mobile_ads_settings");
                return new zzfm();
            }
        });
    }
}
