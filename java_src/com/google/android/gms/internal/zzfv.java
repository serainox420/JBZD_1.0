package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import java.util.concurrent.Callable;
@zzme
/* loaded from: classes.dex */
public class zzfv {
    private final Context mContext;

    public zzfv(Context context) {
        com.google.android.gms.common.internal.zzac.zzb(context, "Context can not be null");
        this.mContext = context;
    }

    public static boolean zzfo() {
        return ((Boolean) zzqb.zzb(new Callable<Boolean>() { // from class: com.google.android.gms.internal.zzfv.1
            @Override // java.util.concurrent.Callable
            /* renamed from: zzbX */
            public Boolean call() {
                return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
            }
        })).booleanValue();
    }

    public boolean zza(Intent intent) {
        com.google.android.gms.common.internal.zzac.zzb(intent, "Intent can not be null");
        return !this.mContext.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    public boolean zzfl() {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return zza(intent);
    }

    public boolean zzfm() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return zza(intent);
    }

    public boolean zzfn() {
        return zzfo() && zzadg.zzbi(this.mContext).checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    @TargetApi(14)
    public boolean zzfp() {
        Intent type = new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event");
        int i = Build.VERSION.SDK_INT;
        return zza(type);
    }
}
