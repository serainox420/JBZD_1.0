package com.google.android.gms.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.zzbts;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbtn implements Runnable {
    public final Context mContext;
    public final zzbtr zzclY;
    public final zzbto zzcmg;
    public final zzbto zzcmh;
    public final zzbto zzcmi;

    public zzbtn(Context context, zzbto zzbtoVar, zzbto zzbtoVar2, zzbto zzbtoVar3, zzbtr zzbtrVar) {
        this.mContext = context;
        this.zzcmg = zzbtoVar;
        this.zzcmh = zzbtoVar2;
        this.zzcmi = zzbtoVar3;
        this.zzclY = zzbtrVar;
    }

    private zzbts.zza zza(zzbto zzbtoVar) {
        zzbts.zza zzaVar = new zzbts.zza();
        if (zzbtoVar.zzacf() != null) {
            Map<String, Map<String, byte[]>> zzacf = zzbtoVar.zzacf();
            ArrayList arrayList = new ArrayList();
            for (String str : zzacf.keySet()) {
                ArrayList arrayList2 = new ArrayList();
                Map<String, byte[]> map = zzacf.get(str);
                for (String str2 : map.keySet()) {
                    zzbts.zzb zzbVar = new zzbts.zzb();
                    zzbVar.zzaB = str2;
                    zzbVar.zzcmt = map.get(str2);
                    arrayList2.add(zzbVar);
                }
                zzbts.zzd zzdVar = new zzbts.zzd();
                zzdVar.zzaGP = str;
                zzdVar.zzcmy = (zzbts.zzb[]) arrayList2.toArray(new zzbts.zzb[arrayList2.size()]);
                arrayList.add(zzdVar);
            }
            zzaVar.zzcmq = (zzbts.zzd[]) arrayList.toArray(new zzbts.zzd[arrayList.size()]);
        }
        if (zzbtoVar.zzzE() != null) {
            List<byte[]> zzzE = zzbtoVar.zzzE();
            zzaVar.zzcmr = (byte[][]) zzzE.toArray(new byte[zzzE.size()]);
        }
        zzaVar.timestamp = zzbtoVar.getTimestamp();
        return zzaVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        zzbts.zze zzeVar = new zzbts.zze();
        if (this.zzcmg != null) {
            zzeVar.zzcmz = zza(this.zzcmg);
        }
        if (this.zzcmh != null) {
            zzeVar.zzcmA = zza(this.zzcmh);
        }
        if (this.zzcmi != null) {
            zzeVar.zzcmB = zza(this.zzcmi);
        }
        if (this.zzclY != null) {
            zzbts.zzc zzcVar = new zzbts.zzc();
            zzcVar.zzcmu = this.zzclY.getLastFetchStatus();
            zzcVar.zzcmv = this.zzclY.isDeveloperModeEnabled();
            zzcVar.zzcmw = this.zzclY.zzack();
            zzeVar.zzcmC = zzcVar;
        }
        if (this.zzclY != null && this.zzclY.zzaci() != null) {
            ArrayList arrayList = new ArrayList();
            Map<String, zzbtl> zzaci = this.zzclY.zzaci();
            for (String str : zzaci.keySet()) {
                if (zzaci.get(str) != null) {
                    zzbts.zzf zzfVar = new zzbts.zzf();
                    zzfVar.zzaGP = str;
                    zzfVar.zzcmF = zzaci.get(str).zzace();
                    zzfVar.resourceId = zzaci.get(str).zzacd();
                    arrayList.add(zzfVar);
                }
            }
            zzeVar.zzcmD = (zzbts.zzf[]) arrayList.toArray(new zzbts.zzf[arrayList.size()]);
        }
        byte[] zzf = zzbxt.zzf(zzeVar);
        try {
            FileOutputStream openFileOutput = this.mContext.openFileOutput("persisted_config", 0);
            openFileOutput.write(zzf);
            openFileOutput.close();
        } catch (IOException e) {
            Log.e("AsyncPersisterTask", "Could not persist config.", e);
        }
    }
}
