package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.zzw;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpj;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzc extends zzpj implements ServiceConnection {
    private Context mContext;
    private zzli zzJv;
    private boolean zzPs;
    private zzb zzPt;
    private zzh zzPu;
    private List<zzf> zzPv;
    private zzk zzPw;
    private final Object zzrJ;

    public zzc(Context context, zzli zzliVar, zzk zzkVar) {
        this(context, zzliVar, zzkVar, new zzb(context), zzh.zzu(context.getApplicationContext()));
    }

    zzc(Context context, zzli zzliVar, zzk zzkVar, zzb zzbVar, zzh zzhVar) {
        this.zzrJ = new Object();
        this.zzPs = false;
        this.zzPv = null;
        this.mContext = context;
        this.zzJv = zzliVar;
        this.zzPw = zzkVar;
        this.zzPt = zzbVar;
        this.zzPu = zzhVar;
        this.zzPv = this.zzPu.zzg(10L);
    }

    private void zze(long j) {
        do {
            if (!zzf(j)) {
                zzpk.v("Timeout waiting for pending transaction to be processed.");
            }
        } while (!this.zzPs);
    }

    private boolean zzf(long j) {
        long elapsedRealtime = 60000 - (SystemClock.elapsedRealtime() - j);
        if (elapsedRealtime <= 0) {
            return false;
        }
        try {
            this.zzrJ.wait(elapsedRealtime);
        } catch (InterruptedException e) {
            zzpk.zzbh("waitWithTimeout_lock interrupted");
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.zzrJ) {
            this.zzPt.zzV(iBinder);
            zziI();
            this.zzPs = true;
            this.zzrJ.notify();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        zzpk.zzbg("In-app billing service disconnected.");
        this.zzPt.destroy();
    }

    @Override // com.google.android.gms.internal.zzpj
    public void onStop() {
        synchronized (this.zzrJ) {
            com.google.android.gms.common.stats.zza.zzyJ().zza(this.mContext, this);
            this.zzPt.destroy();
        }
    }

    protected void zza(final zzf zzfVar, String str, String str2) {
        final Intent intent = new Intent();
        zzw.zzda();
        intent.putExtra("RESPONSE_CODE", 0);
        zzw.zzda();
        intent.putExtra("INAPP_PURCHASE_DATA", str);
        zzw.zzda();
        intent.putExtra("INAPP_DATA_SIGNATURE", str2);
        zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.ads.internal.purchase.zzc.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (zzc.this.zzPw.zza(zzfVar.zzPH, -1, intent)) {
                        zzc.this.zzJv.zza(new zzg(zzc.this.mContext, zzfVar.zzPI, true, -1, intent, zzfVar));
                    } else {
                        zzc.this.zzJv.zza(new zzg(zzc.this.mContext, zzfVar.zzPI, false, -1, intent, zzfVar));
                    }
                } catch (RemoteException e) {
                    zzpk.zzbh("Fail to verify and dispatch pending transaction");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.zzpj
    public void zzco() {
        synchronized (this.zzrJ) {
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            com.google.android.gms.common.stats.zza.zzyJ().zza(this.mContext, intent, this, 1);
            zze(SystemClock.elapsedRealtime());
            com.google.android.gms.common.stats.zza.zzyJ().zza(this.mContext, this);
            this.zzPt.destroy();
        }
    }

    protected void zziI() {
        if (this.zzPv.isEmpty()) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (zzf zzfVar : this.zzPv) {
            hashMap.put(zzfVar.zzPI, zzfVar);
        }
        String str = null;
        while (true) {
            Bundle zzn = this.zzPt.zzn(this.mContext.getPackageName(), str);
            if (zzn == null || zzw.zzda().zzd(zzn) != 0) {
                break;
            }
            ArrayList<String> stringArrayList = zzn.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList<String> stringArrayList2 = zzn.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList<String> stringArrayList3 = zzn.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            String string = zzn.getString("INAPP_CONTINUATION_TOKEN");
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= stringArrayList.size()) {
                    break;
                }
                if (hashMap.containsKey(stringArrayList.get(i2))) {
                    String str2 = stringArrayList.get(i2);
                    String str3 = stringArrayList2.get(i2);
                    String str4 = stringArrayList3.get(i2);
                    zzf zzfVar2 = (zzf) hashMap.get(str2);
                    if (zzfVar2.zzPH.equals(zzw.zzda().zzaE(str3))) {
                        zza(zzfVar2, str3, str4);
                        hashMap.remove(str2);
                    }
                }
                i = i2 + 1;
            }
            if (string == null || hashMap.isEmpty()) {
                break;
            }
            str = string;
        }
        for (String str5 : hashMap.keySet()) {
            this.zzPu.zza((zzf) hashMap.get(str5));
        }
    }
}
