package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class GcmNetworkManager {
    public static final int RESULT_FAILURE = 2;
    public static final int RESULT_RESCHEDULE = 1;
    public static final int RESULT_SUCCESS = 0;
    private static GcmNetworkManager zzbgm;
    private Context mContext;
    private final PendingIntent mPendingIntent;

    private GcmNetworkManager(Context context) {
        this.mContext = context;
        this.mPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, new Intent().setPackage("com.google.example.invalidpackage"), 0);
    }

    public static GcmNetworkManager getInstance(Context context) {
        GcmNetworkManager gcmNetworkManager;
        synchronized (GcmNetworkManager.class) {
            if (zzbgm == null) {
                zzbgm = new GcmNetworkManager(context.getApplicationContext());
            }
            gcmNetworkManager = zzbgm;
        }
        return gcmNetworkManager;
    }

    private Intent zzGO() {
        String zzbA = com.google.android.gms.iid.zzc.zzbA(this.mContext);
        int i = -1;
        if (zzbA != null) {
            i = GoogleCloudMessaging.zzbv(this.mContext);
        }
        if (zzbA == null || i < GoogleCloudMessaging.zzbgC) {
            Log.e("GcmNetworkManager", new StringBuilder(91).append("Google Play Services is not available, dropping GcmNetworkManager request. code=").append(i).toString());
            return null;
        }
        Intent intent = new Intent("com.google.android.gms.gcm.ACTION_SCHEDULE");
        intent.setPackage(zzbA);
        intent.putExtra("app", this.mPendingIntent);
        intent.putExtra("source", 4);
        intent.putExtra("source_version", 10400000);
        return intent;
    }

    private void zza(ComponentName componentName) {
        zzez(componentName.getClassName());
        Intent zzGO = zzGO();
        if (zzGO == null) {
            return;
        }
        zzGO.putExtra("scheduler_action", "CANCEL_ALL");
        zzGO.putExtra("component", componentName);
        this.mContext.sendBroadcast(zzGO);
    }

    private void zza(String str, ComponentName componentName) {
        zzey(str);
        zzez(componentName.getClassName());
        Intent zzGO = zzGO();
        if (zzGO == null) {
            return;
        }
        zzGO.putExtra("scheduler_action", "CANCEL_TASK");
        zzGO.putExtra("tag", str);
        zzGO.putExtra("component", componentName);
        this.mContext.sendBroadcast(zzGO);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzey(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must provide a valid tag.");
        }
        if (100 >= str.length()) {
            return;
        }
        throw new IllegalArgumentException("Tag is larger than max permissible tag length (100)");
    }

    private void zzez(String str) {
        boolean z = true;
        zzac.zzb(str, "GcmTaskService must not be null.");
        Intent intent = new Intent(GcmTaskService.SERVICE_ACTION_EXECUTE_TASK);
        intent.setPackage(this.mContext.getPackageName());
        List<ResolveInfo> queryIntentServices = this.mContext.getPackageManager().queryIntentServices(intent, 0);
        zzac.zzb((queryIntentServices == null || queryIntentServices.size() == 0) ? false : true, "There is no GcmTaskService component registered within this package. Have you extended GcmTaskService correctly?");
        Iterator<ResolveInfo> it = queryIntentServices.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (it.next().serviceInfo.name.equals(str)) {
                break;
            }
        }
        zzac.zzb(z, new StringBuilder(String.valueOf(str).length() + 119).append("The GcmTaskService class you provided ").append(str).append(" does not seem to support receiving com.google.android.gms.gcm.ACTION_TASK_READY.").toString());
    }

    public void cancelAllTasks(Class<? extends GcmTaskService> cls) {
        zzd(cls);
    }

    public void cancelTask(String str, Class<? extends GcmTaskService> cls) {
        zzb(str, cls);
    }

    public void schedule(Task task) {
        zzez(task.getServiceName());
        Intent zzGO = zzGO();
        if (zzGO == null) {
            return;
        }
        Bundle extras = zzGO.getExtras();
        extras.putString("scheduler_action", "SCHEDULE_TASK");
        task.toBundle(extras);
        zzGO.putExtras(extras);
        this.mContext.sendBroadcast(zzGO);
    }

    public void zzb(String str, Class<? extends Service> cls) {
        zza(str, new ComponentName(this.mContext, cls));
    }

    public void zzd(Class<? extends Service> cls) {
        zza(new ComponentName(this.mContext, cls));
    }
}
