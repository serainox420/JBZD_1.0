package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzkb;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public final class zzkh extends zzkb.zza {
    private final MediationAdapter zzLC;
    private zzki zzLD;

    public zzkh(MediationAdapter mediationAdapter) {
        this.zzLC = mediationAdapter;
    }

    private Bundle zza(String str, zzec zzecVar, String str2) throws RemoteException {
        String valueOf = String.valueOf(str);
        zzqf.zzbh(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
                bundle = bundle2;
            }
            if (this.zzLC instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzecVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzecVar.zzyX);
                }
            }
            return bundle;
        } catch (Throwable th) {
            zzqf.zzc("Could not get Server Parameters Bundle.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void destroy() throws RemoteException {
        try {
            this.zzLC.onDestroy();
        } catch (Throwable th) {
            zzqf.zzc("Could not destroy adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public Bundle getInterstitialAdapterInfo() {
        if (!(this.zzLC instanceof zzrj)) {
            String valueOf = String.valueOf(this.zzLC.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a v2 MediationInterstitialAdapter: ".concat(valueOf) : new String("MediationAdapter is not a v2 MediationInterstitialAdapter: "));
            return new Bundle();
        }
        return ((zzrj) this.zzLC).getInterstitialAdapterInfo();
    }

    @Override // com.google.android.gms.internal.zzkb
    public IObjectWrapper getView() throws RemoteException {
        if (!(this.zzLC instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(this.zzLC.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationBannerAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return com.google.android.gms.dynamic.zzd.zzA(((MediationBannerAdapter) this.zzLC).getBannerView());
        } catch (Throwable th) {
            zzqf.zzc("Could not get banner view from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public boolean isInitialized() throws RemoteException {
        if (!(this.zzLC instanceof MediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(this.zzLC.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        zzqf.zzbf("Check if adapter is initialized.");
        try {
            return ((MediationRewardedVideoAdAdapter) this.zzLC).isInitialized();
        } catch (Throwable th) {
            zzqf.zzc("Could not check if adapter is initialized.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void pause() throws RemoteException {
        try {
            this.zzLC.onPause();
        } catch (Throwable th) {
            zzqf.zzc("Could not pause adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void resume() throws RemoteException {
        try {
            this.zzLC.onResume();
        } catch (Throwable th) {
            zzqf.zzc("Could not resume adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void showInterstitial() throws RemoteException {
        if (!(this.zzLC instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(this.zzLC.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationInterstitialAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzqf.zzbf("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.zzLC).showInterstitial();
        } catch (Throwable th) {
            zzqf.zzc("Could not show interstitial from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void showVideo() throws RemoteException {
        if (!(this.zzLC instanceof MediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(this.zzLC.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        zzqf.zzbf("Show rewarded video ad from adapter.");
        try {
            ((MediationRewardedVideoAdAdapter) this.zzLC).showVideo();
        } catch (Throwable th) {
            zzqf.zzc("Could not show rewarded video ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzec zzecVar, String str, zzkc zzkcVar) throws RemoteException {
        zza(iObjectWrapper, zzecVar, str, (String) null, zzkcVar);
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzec zzecVar, String str, zzom zzomVar, String str2) throws RemoteException {
        Bundle bundle;
        zzkg zzkgVar;
        if (!(this.zzLC instanceof MediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(this.zzLC.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        zzqf.zzbf("Initialize rewarded video adapter.");
        try {
            MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzLC;
            Bundle zza = zza(str2, zzecVar, (String) null);
            if (zzecVar != null) {
                zzkg zzkgVar2 = new zzkg(zzecVar.zzyT == -1 ? null : new Date(zzecVar.zzyT), zzecVar.zzyU, zzecVar.zzyV != null ? new HashSet(zzecVar.zzyV) : null, zzecVar.zzzb, zzecVar.zzyW, zzecVar.zzyX, zzecVar.zzzi);
                if (zzecVar.zzzd != null) {
                    bundle = zzecVar.zzzd.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
                    zzkgVar = zzkgVar2;
                } else {
                    bundle = null;
                    zzkgVar = zzkgVar2;
                }
            } else {
                bundle = null;
                zzkgVar = null;
            }
            mediationRewardedVideoAdAdapter.initialize((Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper), zzkgVar, str, new zzon(zzomVar), zza, bundle);
        } catch (Throwable th) {
            zzqf.zzc("Could not initialize rewarded video adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzec zzecVar, String str, String str2, zzkc zzkcVar) throws RemoteException {
        if (!(this.zzLC instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(this.zzLC.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationInterstitialAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzqf.zzbf("Requesting interstitial ad from adapter.");
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.zzLC;
            mediationInterstitialAdapter.requestInterstitialAd((Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper), new zzki(zzkcVar), zza(str, zzecVar, str2), new zzkg(zzecVar.zzyT == -1 ? null : new Date(zzecVar.zzyT), zzecVar.zzyU, zzecVar.zzyV != null ? new HashSet(zzecVar.zzyV) : null, zzecVar.zzzb, zzecVar.zzyW, zzecVar.zzyX, zzecVar.zzzi), zzecVar.zzzd != null ? zzecVar.zzzd.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            zzqf.zzc("Could not request interstitial ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzec zzecVar, String str, String str2, zzkc zzkcVar, zzhc zzhcVar, List<String> list) throws RemoteException {
        if (!(this.zzLC instanceof MediationNativeAdapter)) {
            String valueOf = String.valueOf(this.zzLC.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationNativeAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationNativeAdapter: "));
            throw new RemoteException();
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) this.zzLC;
            zzkl zzklVar = new zzkl(zzecVar.zzyT == -1 ? null : new Date(zzecVar.zzyT), zzecVar.zzyU, zzecVar.zzyV != null ? new HashSet(zzecVar.zzyV) : null, zzecVar.zzzb, zzecVar.zzyW, zzecVar.zzyX, zzhcVar, list, zzecVar.zzzi);
            Bundle bundle = zzecVar.zzzd != null ? zzecVar.zzzd.getBundle(mediationNativeAdapter.getClass().getName()) : null;
            this.zzLD = new zzki(zzkcVar);
            mediationNativeAdapter.requestNativeAd((Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper), this.zzLD, zza(str, zzecVar, str2), zzklVar, bundle);
        } catch (Throwable th) {
            zzqf.zzc("Could not request native ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzeg zzegVar, zzec zzecVar, String str, zzkc zzkcVar) throws RemoteException {
        zza(iObjectWrapper, zzegVar, zzecVar, str, null, zzkcVar);
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzeg zzegVar, zzec zzecVar, String str, String str2, zzkc zzkcVar) throws RemoteException {
        if (!(this.zzLC instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(this.zzLC.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationBannerAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        zzqf.zzbf("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.zzLC;
            mediationBannerAdapter.requestBannerAd((Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper), new zzki(zzkcVar), zza(str, zzecVar, str2), com.google.android.gms.ads.zza.zza(zzegVar.width, zzegVar.height, zzegVar.zzzy), new zzkg(zzecVar.zzyT == -1 ? null : new Date(zzecVar.zzyT), zzecVar.zzyU, zzecVar.zzyV != null ? new HashSet(zzecVar.zzyV) : null, zzecVar.zzzb, zzecVar.zzyW, zzecVar.zzyX, zzecVar.zzzi), zzecVar.zzzd != null ? zzecVar.zzzd.getBundle(mediationBannerAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            zzqf.zzc("Could not request banner ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzom zzomVar, List<String> list) throws RemoteException {
        if (!(this.zzLC instanceof InitializableMediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(this.zzLC.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not an InitializableMediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("MediationAdapter is not an InitializableMediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        zzqf.zzbf("Initialize rewarded video adapter.");
        try {
            InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.zzLC;
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                arrayList.add(zza(str, (zzec) null, (String) null));
            }
            initializableMediationRewardedVideoAdAdapter.initialize((Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper), new zzon(zzomVar), arrayList);
        } catch (Throwable th) {
            zzqf.zzc("Could not initialize rewarded video adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(zzec zzecVar, String str, String str2) throws RemoteException {
        if (!(this.zzLC instanceof MediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(this.zzLC.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        zzqf.zzbf("Requesting rewarded video ad from adapter.");
        try {
            MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzLC;
            mediationRewardedVideoAdAdapter.loadAd(new zzkg(zzecVar.zzyT == -1 ? null : new Date(zzecVar.zzyT), zzecVar.zzyU, zzecVar.zzyV != null ? new HashSet(zzecVar.zzyV) : null, zzecVar.zzzb, zzecVar.zzyW, zzecVar.zzyX, zzecVar.zzzi), zza(str, zzecVar, str2), zzecVar.zzzd != null ? zzecVar.zzzd.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            zzqf.zzc("Could not load rewarded video ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zzd(zzec zzecVar, String str) throws RemoteException {
        zza(zzecVar, str, (String) null);
    }

    @Override // com.google.android.gms.internal.zzkb
    public zzke zzhc() {
        NativeAdMapper zzhi = this.zzLD.zzhi();
        if (zzhi instanceof NativeAppInstallAdMapper) {
            return new zzkj((NativeAppInstallAdMapper) zzhi);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzkb
    public zzkf zzhd() {
        NativeAdMapper zzhi = this.zzLD.zzhi();
        if (zzhi instanceof NativeContentAdMapper) {
            return new zzkk((NativeContentAdMapper) zzhi);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzkb
    public Bundle zzhe() {
        if (!(this.zzLC instanceof zzri)) {
            String valueOf = String.valueOf(this.zzLC.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a v2 MediationBannerAdapter: ".concat(valueOf) : new String("MediationAdapter is not a v2 MediationBannerAdapter: "));
            return new Bundle();
        }
        return ((zzri) this.zzLC).zzhe();
    }

    @Override // com.google.android.gms.internal.zzkb
    public Bundle zzhf() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.zzkb
    public boolean zzhg() {
        return this.zzLC instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
        try {
            ((OnContextChangedListener) this.zzLC).onContextChanged((Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
        } catch (Throwable th) {
            zzqf.zza("Could not inform adapter of changed context", th);
        }
    }
}
