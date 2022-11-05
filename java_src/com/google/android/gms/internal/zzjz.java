package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.ads.mediation.c;
import com.google.ads.mediation.h;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.internal.zzka;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public final class zzjz extends zzka.zza {
    private Map<Class<? extends NetworkExtras>, NetworkExtras> zzLA;

    private <NETWORK_EXTRAS extends h, SERVER_PARAMETERS extends MediationServerParameters> zzkb zzau(String str) throws RemoteException {
        try {
            Class<?> cls = Class.forName(str, false, zzjz.class.getClassLoader());
            if (c.class.isAssignableFrom(cls)) {
                c cVar = (c) cls.newInstance();
                return new zzkm(cVar, (h) this.zzLA.get(cVar.b()));
            } else if (MediationAdapter.class.isAssignableFrom(cls)) {
                return new zzkh((MediationAdapter) cls.newInstance());
            } else {
                zzqf.zzbh(new StringBuilder(String.valueOf(str).length() + 64).append("Could not instantiate mediation adapter: ").append(str).append(" (not a valid adapter).").toString());
                throw new RemoteException();
            }
        } catch (Throwable th) {
            return zzav(str);
        }
    }

    private zzkb zzav(String str) throws RemoteException {
        try {
            zzqf.zzbf("Reflection failed, retrying using direct instantiation");
        } catch (Throwable th) {
            zzqf.zzc(new StringBuilder(String.valueOf(str).length() + 43).append("Could not instantiate mediation adapter: ").append(str).append(". ").toString(), th);
        }
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
            return new zzkh(new AdMobAdapter());
        }
        if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
            return new zzkh(new AdUrlAdapter());
        }
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            return new zzkh(new CustomEventAdapter());
        }
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            com.google.ads.mediation.customevent.CustomEventAdapter customEventAdapter = new com.google.ads.mediation.customevent.CustomEventAdapter();
            return new zzkm(customEventAdapter, (CustomEventExtras) this.zzLA.get(customEventAdapter.b()));
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzka
    public zzkb zzas(String str) throws RemoteException {
        return zzau(str);
    }

    @Override // com.google.android.gms.internal.zzka
    public boolean zzat(String str) throws RemoteException {
        try {
            return CustomEvent.class.isAssignableFrom(Class.forName(str, false, zzjz.class.getClassLoader()));
        } catch (Throwable th) {
            zzqf.zzbh(new StringBuilder(String.valueOf(str).length() + 80).append("Could not load custom event implementation class: ").append(str).append(", assuming old implementation.").toString());
            return false;
        }
    }

    public void zzi(Map<Class<? extends NetworkExtras>, NetworkExtras> map) {
        this.zzLA = map;
    }
}
