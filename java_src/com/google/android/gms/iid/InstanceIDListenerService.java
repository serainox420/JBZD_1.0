package com.google.android.gms.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
/* loaded from: classes2.dex */
public class InstanceIDListenerService extends com.google.firebase.iid.zzb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Context context, zzd zzdVar) {
        zzdVar.zzHo();
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.putExtra("CMD", "RST");
        intent.setClassName(context, "com.google.android.gms.gcm.GcmReceiver");
        context.sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzby(Context context) {
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.putExtra("CMD", "SYNC");
        intent.setClassName(context, "com.google.android.gms.gcm.GcmReceiver");
        context.sendBroadcast(intent);
    }

    @Override // com.google.firebase.iid.zzb
    public void handleIntent(Intent intent) {
        if (!"com.google.android.gms.iid.InstanceID".equals(intent.getAction())) {
            return;
        }
        Bundle bundle = null;
        String stringExtra = intent.getStringExtra("subtype");
        if (stringExtra != null) {
            bundle = new Bundle();
            bundle.putString("subtype", stringExtra);
        }
        InstanceID zza = InstanceID.zza(this, bundle);
        String stringExtra2 = intent.getStringExtra("CMD");
        if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", new StringBuilder(String.valueOf(stringExtra).length() + 34 + String.valueOf(stringExtra2).length()).append("Service command. subtype:").append(stringExtra).append(" command:").append(stringExtra2).toString());
        }
        if ("gcm.googleapis.com/refresh".equals(intent.getStringExtra("from"))) {
            zza.zzHj().zzeK(stringExtra);
            zzaG(false);
        } else if ("RST".equals(stringExtra2)) {
            zza.zzHi();
            zzaG(true);
        } else if ("RST_FULL".equals(stringExtra2)) {
            if (zza.zzHj().isEmpty()) {
                return;
            }
            zza.zzHj().zzHo();
            zzaG(true);
        } else if (!"SYNC".equals(stringExtra2)) {
            "PING".equals(stringExtra2);
        } else {
            zza.zzHj().zzeK(stringExtra);
            zzaG(false);
        }
    }

    public void onTokenRefresh() {
    }

    public void zzaG(boolean z) {
        onTokenRefresh();
    }
}
