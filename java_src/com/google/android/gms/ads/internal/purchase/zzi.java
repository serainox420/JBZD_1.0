package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.ads.internal.zzw;
import com.google.android.gms.ads.purchase.InAppPurchaseActivity;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpe;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpo;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzi {
    public void zza(Context context, boolean z, GInAppPurchaseManagerInfoParcel gInAppPurchaseManagerInfoParcel) {
        Intent intent = new Intent();
        intent.setClassName(context, InAppPurchaseActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.purchase.useClientJar", z);
        GInAppPurchaseManagerInfoParcel.zza(intent, gInAppPurchaseManagerInfoParcel);
        zzw.zzcM().zzb(context, intent);
    }

    public String zzaE(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new JSONObject(str).getString("developerPayload");
        } catch (JSONException e) {
            zzpk.zzbh("Fail to parse purchase data");
            return null;
        }
    }

    public String zzaF(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new JSONObject(str).getString("purchaseToken");
        } catch (JSONException e) {
            zzpk.zzbh("Fail to parse purchase data");
            return null;
        }
    }

    public int zzd(Intent intent) {
        if (intent == null) {
            return 5;
        }
        Object obj = intent.getExtras().get("RESPONSE_CODE");
        if (obj == null) {
            zzpk.zzbh("Intent with no response code, assuming OK (known issue)");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            if (obj instanceof Long) {
                return (int) ((Long) obj).longValue();
            }
            String valueOf = String.valueOf(obj.getClass().getName());
            zzpk.zzbh(valueOf.length() != 0 ? "Unexpected type for intent response code. ".concat(valueOf) : new String("Unexpected type for intent response code. "));
            return 5;
        }
    }

    public int zzd(Bundle bundle) {
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            zzpk.zzbh("Bundle with null response code, assuming OK (known issue)");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            if (obj instanceof Long) {
                return (int) ((Long) obj).longValue();
            }
            String valueOf = String.valueOf(obj.getClass().getName());
            zzpk.zzbh(valueOf.length() != 0 ? "Unexpected type for intent response code. ".concat(valueOf) : new String("Unexpected type for intent response code. "));
            return 5;
        }
    }

    public String zze(Intent intent) {
        if (intent == null) {
            return null;
        }
        return intent.getStringExtra("INAPP_PURCHASE_DATA");
    }

    public String zzf(Intent intent) {
        if (intent == null) {
            return null;
        }
        return intent.getStringExtra("INAPP_DATA_SIGNATURE");
    }

    public void zzv(final Context context) {
        zzpo.zzb(new Runnable(this) { // from class: com.google.android.gms.ads.internal.purchase.zzi.1
            @Override // java.lang.Runnable
            public void run() {
                ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.google.android.gms.ads.internal.purchase.zzi.1.1
                    @Override // android.content.ServiceConnection
                    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                        boolean z = false;
                        zzb zzbVar = new zzb(context.getApplicationContext(), false);
                        zzbVar.zzV(iBinder);
                        int zzb = zzbVar.zzb(3, context.getPackageName(), AnalyticsEvent.IN_APP);
                        zzpe zzcQ = zzw.zzcQ();
                        if (zzb == 0) {
                            z = true;
                        }
                        zzcQ.zzI(z);
                        com.google.android.gms.common.stats.zza.zzyJ().zza(context, this);
                        zzbVar.destroy();
                    }

                    @Override // android.content.ServiceConnection
                    public void onServiceDisconnected(ComponentName componentName) {
                    }
                };
                Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                intent.setPackage("com.android.vending");
                com.google.android.gms.common.stats.zza.zzyJ().zza(context, intent, serviceConnection, 1);
            }
        });
    }
}
