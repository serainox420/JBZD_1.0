package com.google.android.gms.internal;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.c;
import com.google.ads.mediation.d;
import com.google.ads.mediation.f;
import com.google.ads.mediation.h;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzkb;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public final class zzkm<NETWORK_EXTRAS extends h, SERVER_PARAMETERS extends MediationServerParameters> extends zzkb.zza {
    private final c<NETWORK_EXTRAS, SERVER_PARAMETERS> zzLI;
    private final NETWORK_EXTRAS zzLJ;

    public zzkm(c<NETWORK_EXTRAS, SERVER_PARAMETERS> cVar, NETWORK_EXTRAS network_extras) {
        this.zzLI = cVar;
        this.zzLJ = network_extras;
    }

    private SERVER_PARAMETERS zza(String str, int i, String str2) throws RemoteException {
        HashMap hashMap;
        try {
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                hashMap = new HashMap(jSONObject.length());
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.getString(next));
                }
            } else {
                hashMap = new HashMap(0);
            }
            Class<SERVER_PARAMETERS> c = this.zzLI.c();
            if (c == null) {
                return null;
            }
            SERVER_PARAMETERS newInstance = c.newInstance();
            newInstance.a(hashMap);
            return newInstance;
        } catch (Throwable th) {
            zzqf.zzc("Could not get MediationServerParameters.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void destroy() throws RemoteException {
        try {
            this.zzLI.a();
        } catch (Throwable th) {
            zzqf.zzc("Could not destroy adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public Bundle getInterstitialAdapterInfo() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.zzkb
    public IObjectWrapper getView() throws RemoteException {
        if (!(this.zzLI instanceof d)) {
            String valueOf = String.valueOf(this.zzLI.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationBannerAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return com.google.android.gms.dynamic.zzd.zzA(((d) this.zzLI).d());
        } catch (Throwable th) {
            zzqf.zzc("Could not get banner view from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public boolean isInitialized() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzkb
    public void pause() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzkb
    public void resume() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzkb
    public void showInterstitial() throws RemoteException {
        if (!(this.zzLI instanceof f)) {
            String valueOf = String.valueOf(this.zzLI.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationInterstitialAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzqf.zzbf("Showing interstitial from adapter.");
        try {
            ((f) this.zzLI).e();
        } catch (Throwable th) {
            zzqf.zzc("Could not show interstitial from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void showVideo() {
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzec zzecVar, String str, zzkc zzkcVar) throws RemoteException {
        zza(iObjectWrapper, zzecVar, str, (String) null, zzkcVar);
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzec zzecVar, String str, zzom zzomVar, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzec zzecVar, String str, String str2, zzkc zzkcVar) throws RemoteException {
        if (!(this.zzLI instanceof f)) {
            String valueOf = String.valueOf(this.zzLI.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationInterstitialAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzqf.zzbf("Requesting interstitial ad from adapter.");
        try {
            ((f) this.zzLI).a(new zzkn(zzkcVar), (Activity) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper), zza(str, zzecVar.zzyX, str2), zzko.zzr(zzecVar), this.zzLJ);
        } catch (Throwable th) {
            zzqf.zzc("Could not request interstitial ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzec zzecVar, String str, String str2, zzkc zzkcVar, zzhc zzhcVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzeg zzegVar, zzec zzecVar, String str, zzkc zzkcVar) throws RemoteException {
        zza(iObjectWrapper, zzegVar, zzecVar, str, null, zzkcVar);
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzeg zzegVar, zzec zzecVar, String str, String str2, zzkc zzkcVar) throws RemoteException {
        if (!(this.zzLI instanceof d)) {
            String valueOf = String.valueOf(this.zzLI.getClass().getCanonicalName());
            zzqf.zzbh(valueOf.length() != 0 ? "MediationAdapter is not a MediationBannerAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        zzqf.zzbf("Requesting banner ad from adapter.");
        try {
            ((d) this.zzLI).a(new zzkn(zzkcVar), (Activity) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper), zza(str, zzecVar.zzyX, str2), zzko.zzc(zzegVar), zzko.zzr(zzecVar), this.zzLJ);
        } catch (Throwable th) {
            zzqf.zzc("Could not request banner ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(IObjectWrapper iObjectWrapper, zzom zzomVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zza(zzec zzecVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zzd(zzec zzecVar, String str) {
    }

    @Override // com.google.android.gms.internal.zzkb
    public zzke zzhc() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzkb
    public zzkf zzhd() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzkb
    public Bundle zzhe() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.zzkb
    public Bundle zzhf() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.zzkb
    public boolean zzhg() {
        return false;
    }

    @Override // com.google.android.gms.internal.zzkb
    public void zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
    }
}
