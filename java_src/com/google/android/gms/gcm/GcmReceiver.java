package com.google.android.gms.gcm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.wallet.WalletConstants;
import com.google.firebase.iid.zzb;
/* loaded from: classes2.dex */
public class GcmReceiver extends WakefulBroadcastReceiver {
    private static String zzbgr = "gcm.googleapis.com/refresh";
    private static boolean zzbgs = false;
    private zzb.b zzbgt;
    private zzb.b zzbgu;

    private void doStartService(Context context, Intent intent) {
        ComponentName startService;
        if (isOrderedBroadcast()) {
            setResultCode(500);
        }
        zze(context, intent);
        try {
            if (context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                startService = startWakefulService(context, intent);
            } else {
                startService = context.startService(intent);
                Log.d("GcmReceiver", "Missing wake lock permission, service start may be delayed");
            }
            if (startService != null) {
                if (!isOrderedBroadcast()) {
                    return;
                }
                setResultCode(-1);
                return;
            }
            Log.e("GcmReceiver", "Error while delivering the message: ServiceIntent not found.");
            if (!isOrderedBroadcast()) {
                return;
            }
            setResultCode(WalletConstants.ERROR_CODE_INVALID_PARAMETERS);
        } catch (SecurityException e) {
            Log.e("GcmReceiver", "Error while delivering the message to the serviceIntent", e);
            if (!isOrderedBroadcast()) {
                return;
            }
            setResultCode(401);
        }
    }

    private synchronized zzb.b zzK(Context context, String str) {
        zzb.b bVar;
        if ("com.google.android.c2dm.intent.RECEIVE".equals(str)) {
            if (this.zzbgu == null) {
                this.zzbgu = new zzb.b(context, str);
            }
            bVar = this.zzbgu;
        } else {
            if (this.zzbgt == null) {
                this.zzbgt = new zzb.b(context, str);
            }
            bVar = this.zzbgt;
        }
        return bVar;
    }

    private void zze(Context context, Intent intent) {
        ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
        if (resolveService == null || resolveService.serviceInfo == null) {
            Log.e("GcmReceiver", "Failed to resolve target intent service, skipping classname enforcement");
            return;
        }
        ServiceInfo serviceInfo = resolveService.serviceInfo;
        if (!context.getPackageName().equals(serviceInfo.packageName) || serviceInfo.name == null) {
            String valueOf = String.valueOf(serviceInfo.packageName);
            String valueOf2 = String.valueOf(serviceInfo.name);
            Log.e("GcmReceiver", new StringBuilder(String.valueOf(valueOf).length() + 94 + String.valueOf(valueOf2).length()).append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ").append(valueOf).append("/").append(valueOf2).toString());
            return;
        }
        String str = serviceInfo.name;
        if (str.startsWith(".")) {
            String valueOf3 = String.valueOf(context.getPackageName());
            String valueOf4 = String.valueOf(str);
            str = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        }
        if (Log.isLoggable("GcmReceiver", 3)) {
            String valueOf5 = String.valueOf(str);
            Log.d("GcmReceiver", valueOf5.length() != 0 ? "Restricting intent to a specific service: ".concat(valueOf5) : new String("Restricting intent to a specific service: "));
        }
        intent.setClassName(context.getPackageName(), str);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (Log.isLoggable("GcmReceiver", 3)) {
            Log.d("GcmReceiver", "received new intent");
        }
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if (Build.VERSION.SDK_INT <= 18) {
            intent.removeCategory(context.getPackageName());
        }
        String stringExtra = intent.getStringExtra("from");
        if ("google.com/iid".equals(stringExtra) || zzbgr.equals(stringExtra)) {
            intent.setAction("com.google.android.gms.iid.InstanceID");
        }
        String stringExtra2 = intent.getStringExtra("gcm.rawData64");
        if (stringExtra2 != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra2, 0));
            intent.removeExtra("gcm.rawData64");
        }
        if (zzt.zzzq()) {
            if (isOrderedBroadcast()) {
                setResultCode(-1);
            }
            zzK(context, intent.getAction()).a(intent, goAsync());
            return;
        }
        if ("com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            zzd(context, intent);
        } else {
            doStartService(context, intent);
        }
        if (!isOrderedBroadcast() || getResultCode() != 0) {
            return;
        }
        setResultCode(-1);
    }

    public void zzd(Context context, Intent intent) {
        doStartService(context, intent);
    }
}
