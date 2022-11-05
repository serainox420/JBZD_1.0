package com.google.android.gms.ads.internal.purchase;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzw;
import com.google.android.gms.internal.zzld;
import com.google.android.gms.internal.zzlf;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpk;
@zzme
/* loaded from: classes.dex */
public class zze extends zzlf.zza implements ServiceConnection {
    private final Activity mActivity;
    private Context zzPB;
    private zzld zzPC;
    private zzf zzPD;
    private zzj zzPE;
    private String zzPF = null;
    private zzb zzPt;
    zzh zzPu;
    private zzk zzPw;

    public zze(Activity activity) {
        this.mActivity = activity;
        this.zzPu = zzh.zzu(this.mActivity.getApplicationContext());
    }

    @Override // com.google.android.gms.internal.zzlf
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1001) {
            boolean z = false;
            try {
                int zzd = zzw.zzda().zzd(intent);
                if (i2 == -1) {
                    zzw.zzda();
                    if (zzd == 0) {
                        if (this.zzPw.zza(this.zzPF, i2, intent)) {
                            z = true;
                        }
                        this.zzPC.recordPlayBillingResolution(zzd);
                        this.mActivity.finish();
                        zza(this.zzPC.getProductId(), z, i2, intent);
                    }
                }
                this.zzPu.zza(this.zzPD);
                this.zzPC.recordPlayBillingResolution(zzd);
                this.mActivity.finish();
                zza(this.zzPC.getProductId(), z, i2, intent);
            } catch (RemoteException e) {
                zzpk.zzbh("Fail to process purchase result.");
                this.mActivity.finish();
            } finally {
                this.zzPF = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzlf
    public void onCreate() {
        GInAppPurchaseManagerInfoParcel zzc = GInAppPurchaseManagerInfoParcel.zzc(this.mActivity.getIntent());
        this.zzPE = zzc.zzPp;
        this.zzPw = zzc.zzvL;
        this.zzPC = zzc.zzPn;
        this.zzPt = new zzb(this.mActivity.getApplicationContext());
        this.zzPB = zzc.zzPo;
        if (this.mActivity.getResources().getConfiguration().orientation == 2) {
            this.mActivity.setRequestedOrientation(zzw.zzcO().zzkQ());
        } else {
            this.mActivity.setRequestedOrientation(zzw.zzcO().zzkR());
        }
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        com.google.android.gms.common.stats.zza.zzyJ().zza(this.mActivity, intent, this, 1);
    }

    @Override // com.google.android.gms.internal.zzlf
    public void onDestroy() {
        com.google.android.gms.common.stats.zza.zzyJ().zza(this.mActivity, this);
        this.zzPt.destroy();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.zzPt.zzV(iBinder);
        try {
            this.zzPF = this.zzPw.zziM();
            Bundle zza = this.zzPt.zza(this.mActivity.getPackageName(), this.zzPC.getProductId(), this.zzPF);
            PendingIntent pendingIntent = (PendingIntent) zza.getParcelable("BUY_INTENT");
            if (pendingIntent == null) {
                int zzd = zzw.zzda().zzd(zza);
                this.zzPC.recordPlayBillingResolution(zzd);
                zza(this.zzPC.getProductId(), false, zzd, null);
                this.mActivity.finish();
            } else {
                this.zzPD = new zzf(this.zzPC.getProductId(), this.zzPF);
                this.zzPu.zzb(this.zzPD);
                Integer num = 0;
                Integer num2 = 0;
                Integer num3 = 0;
                this.mActivity.startIntentSenderForResult(pendingIntent.getIntentSender(), 1001, new Intent(), num.intValue(), num2.intValue(), num3.intValue());
            }
        } catch (IntentSender.SendIntentException | RemoteException e) {
            zzpk.zzc("Error when connecting in-app billing service", e);
            this.mActivity.finish();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        zzpk.zzbg("In-app billing service disconnected.");
        this.zzPt.destroy();
    }

    protected void zza(String str, boolean z, int i, Intent intent) {
        if (this.zzPE != null) {
            this.zzPE.zza(str, z, i, intent, this.zzPD);
        }
    }
}
