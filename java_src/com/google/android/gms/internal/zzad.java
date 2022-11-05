package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import java.io.File;
/* loaded from: classes2.dex */
public class zzad {
    public static zzm zza(Context context) {
        return zza(context, null);
    }

    public static zzm zza(Context context, zzz zzzVar) {
        String packageName;
        File file = new File(context.getCacheDir(), "volley");
        String str = "volley/0";
        try {
            str = context.getPackageName() + "/" + context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (zzzVar == null) {
            zzzVar = Build.VERSION.SDK_INT >= 9 ? new zzaa() : new zzx(AndroidHttpClient.newInstance(str));
        }
        zzm zzmVar = new zzm(new zzw(file), new zzu(zzzVar));
        zzmVar.start();
        return zzmVar;
    }
}
