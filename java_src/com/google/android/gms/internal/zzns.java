package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.ads.mediation.a;
import com.google.android.gms.internal.zzpb;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzns extends com.google.android.gms.ads.internal.zzb implements zzoh {
    private static zzns zzVk;
    private static final zzjz zzVl = new zzjz();
    private final Map<String, zzol> zzVm;
    private boolean zzVn;

    public zzns(Context context, com.google.android.gms.ads.internal.zze zzeVar, zzeg zzegVar, zzka zzkaVar, zzqh zzqhVar) {
        super(context, zzegVar, null, zzkaVar, zzqhVar, zzeVar);
        this.zzVm = new HashMap();
        zzVk = this;
    }

    private zzpb.zza zzd(zzpb.zza zzaVar) {
        zzpk.v("Creating mediation ad response for non-mediated rewarded ad.");
        try {
            String jSONObject = zznd.zzb(zzaVar.zzWm).toString();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(a.AD_UNIT_ID_PARAMETER, zzaVar.zzTi.zzvl);
            return new zzpb.zza(zzaVar.zzTi, zzaVar.zzWm, new zzjr(Arrays.asList(new zzjq(jSONObject, null, Arrays.asList("com.google.ads.mediation.admob.AdMobAdapter"), null, null, Collections.emptyList(), Collections.emptyList(), jSONObject2.toString(), null, Collections.emptyList(), Collections.emptyList(), null, null, null, null, null, Collections.emptyList())), zzgd.zzDM.get().longValue(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), false, "", -1L, 0, 1, null, 0, -1, -1L, false), zzaVar.zzvr, zzaVar.errorCode, zzaVar.zzWg, zzaVar.zzWh, zzaVar.zzWa);
        } catch (JSONException e) {
            zzpk.zzb("Unable to generate ad state for non-mediated rewarded video.", e);
            return zze(zzaVar);
        }
    }

    private zzpb.zza zze(zzpb.zza zzaVar) {
        return new zzpb.zza(zzaVar.zzTi, zzaVar.zzWm, null, zzaVar.zzvr, 0, zzaVar.zzWg, zzaVar.zzWh, zzaVar.zzWa);
    }

    public static zzns zzjE() {
        return zzVk;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void destroy() {
        com.google.android.gms.common.internal.zzac.zzdj("destroy must be called on the main UI thread.");
        for (String str : this.zzVm.keySet()) {
            try {
                zzol zzolVar = this.zzVm.get(str);
                if (zzolVar != null && zzolVar.zzjN() != null) {
                    zzolVar.zzjN().destroy();
                }
            } catch (RemoteException e) {
                String valueOf = String.valueOf(str);
                zzpk.zzbh(valueOf.length() != 0 ? "Fail to destroy adapter: ".concat(valueOf) : new String("Fail to destroy adapter: "));
            }
        }
    }

    public boolean isLoaded() {
        com.google.android.gms.common.internal.zzac.zzdj("isLoaded must be called on the main UI thread.");
        return this.zzss.zzvp == null && this.zzss.zzvq == null && this.zzss.zzvs != null && !this.zzVn;
    }

    public void onContextChanged(Context context) {
        for (zzol zzolVar : this.zzVm.values()) {
            try {
                zzolVar.zzjN().zzk(com.google.android.gms.dynamic.zzd.zzA(context));
            } catch (RemoteException e) {
                zzpk.zzb("Unable to call Adapter.onContextChanged.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzoh
    public void onRewardedVideoAdClosed() {
        zzbG();
    }

    @Override // com.google.android.gms.internal.zzoh
    public void onRewardedVideoAdLeftApplication() {
        zzbH();
    }

    @Override // com.google.android.gms.internal.zzoh
    public void onRewardedVideoAdOpened() {
        zza(this.zzss.zzvs, false);
        zzbI();
    }

    @Override // com.google.android.gms.internal.zzoh
    public void onRewardedVideoStarted() {
        if (this.zzss.zzvs != null && this.zzss.zzvs.zzLi != null) {
            com.google.android.gms.ads.internal.zzw.zzdf().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, this.zzss.zzvs, this.zzss.zzvl, false, this.zzss.zzvs.zzLi.zzKw);
        }
        zzbK();
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void pause() {
        com.google.android.gms.common.internal.zzac.zzdj("pause must be called on the main UI thread.");
        for (String str : this.zzVm.keySet()) {
            try {
                zzol zzolVar = this.zzVm.get(str);
                if (zzolVar != null && zzolVar.zzjN() != null) {
                    zzolVar.zzjN().pause();
                }
            } catch (RemoteException e) {
                String valueOf = String.valueOf(str);
                zzpk.zzbh(valueOf.length() != 0 ? "Fail to pause adapter: ".concat(valueOf) : new String("Fail to pause adapter: "));
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzet
    public void resume() {
        com.google.android.gms.common.internal.zzac.zzdj("resume must be called on the main UI thread.");
        for (String str : this.zzVm.keySet()) {
            try {
                zzol zzolVar = this.zzVm.get(str);
                if (zzolVar != null && zzolVar.zzjN() != null) {
                    zzolVar.zzjN().resume();
                }
            } catch (RemoteException e) {
                String valueOf = String.valueOf(str);
                zzpk.zzbh(valueOf.length() != 0 ? "Fail to resume adapter: ".concat(valueOf) : new String("Fail to resume adapter: "));
            }
        }
    }

    public void zza(zzoa zzoaVar) {
        com.google.android.gms.common.internal.zzac.zzdj("loadAd must be called on the main UI thread.");
        if (TextUtils.isEmpty(zzoaVar.zzvl)) {
            zzpk.zzbh("Invalid ad unit id. Aborting.");
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzns.1
                @Override // java.lang.Runnable
                public void run() {
                    zzns.this.zzh(1);
                }
            });
            return;
        }
        this.zzVn = false;
        this.zzss.zzvl = zzoaVar.zzvl;
        super.zzb(zzoaVar.zzRy);
    }

    @Override // com.google.android.gms.ads.internal.zza
    public void zza(final zzpb.zza zzaVar, zzgl zzglVar) {
        if (zzaVar.errorCode != -2) {
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzns.2
                @Override // java.lang.Runnable
                public void run() {
                    zzns.this.zzb(new zzpb(zzaVar, null, null, null, null, null, null, null));
                }
            });
            return;
        }
        this.zzss.zzvt = zzaVar;
        if (zzaVar.zzWc == null) {
            this.zzss.zzvt = zzd(zzaVar);
        }
        this.zzss.zzvO = 0;
        this.zzss.zzvq = com.google.android.gms.ads.internal.zzw.zzcL().zza(this.zzss.zzqn, this.zzss.zzvt, this);
    }

    @Override // com.google.android.gms.ads.internal.zzb
    protected boolean zza(zzec zzecVar, zzpb zzpbVar, boolean z) {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    public boolean zza(zzpb zzpbVar, zzpb zzpbVar2) {
        return true;
    }

    public zzol zzaN(String str) {
        Exception exc;
        zzol zzolVar;
        zzol zzolVar2 = this.zzVm.get(str);
        if (zzolVar2 == null) {
            try {
                zzolVar = new zzol(("com.google.ads.mediation.admob.AdMobAdapter".equals(str) ? zzVl : this.zzsz).zzas(str), this);
            } catch (Exception e) {
                exc = e;
                zzolVar = zzolVar2;
            }
            try {
                this.zzVm.put(str, zzolVar);
                return zzolVar;
            } catch (Exception e2) {
                exc = e2;
                String valueOf = String.valueOf(str);
                zzpk.zzc(valueOf.length() != 0 ? "Fail to instantiate adapter ".concat(valueOf) : new String("Fail to instantiate adapter "), exc);
                return zzolVar;
            }
        }
        return zzolVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public void zzbG() {
        this.zzss.zzvs = null;
        super.zzbG();
    }

    @Override // com.google.android.gms.internal.zzoh
    public void zzc(zzoo zzooVar) {
        if (this.zzss.zzvs != null && this.zzss.zzvs.zzLi != null) {
            com.google.android.gms.ads.internal.zzw.zzdf().zza(this.zzss.zzqn, this.zzss.zzvn.zzba, this.zzss.zzvs, this.zzss.zzvl, false, this.zzss.zzvs.zzLi.zzKx);
        }
        if (this.zzss.zzvs != null && this.zzss.zzvs.zzWc != null && !TextUtils.isEmpty(this.zzss.zzvs.zzWc.zzKM)) {
            zzooVar = new zzoo(this.zzss.zzvs.zzWc.zzKM, this.zzss.zzvs.zzWc.zzKN);
        }
        zza(zzooVar);
    }

    public void zzjF() {
        com.google.android.gms.common.internal.zzac.zzdj("showAd must be called on the main UI thread.");
        if (!isLoaded()) {
            zzpk.zzbh("The reward video has not loaded.");
            return;
        }
        this.zzVn = true;
        zzol zzaN = zzaN(this.zzss.zzvs.zzLk);
        if (zzaN == null || zzaN.zzjN() == null) {
            return;
        }
        try {
            zzaN.zzjN().showVideo();
        } catch (RemoteException e) {
            zzpk.zzc("Could not call showVideo.", e);
        }
    }

    @Override // com.google.android.gms.internal.zzoh
    public void zzjG() {
        onAdClicked();
    }
}
