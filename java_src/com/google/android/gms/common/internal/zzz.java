package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.zzadg;
/* loaded from: classes2.dex */
public class zzz {
    private static boolean zzQm;
    private static String zzaGt;
    private static int zzaGu;
    private static Object zztX = new Object();

    public static String zzaV(Context context) {
        zzaX(context);
        return zzaGt;
    }

    public static int zzaW(Context context) {
        zzaX(context);
        return zzaGu;
    }

    private static void zzaX(Context context) {
        Bundle bundle;
        synchronized (zztX) {
            if (zzQm) {
                return;
            }
            zzQm = true;
            try {
                bundle = zzadg.zzbi(context).getApplicationInfo(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf("MetadataValueReader", "This should never happen.", e);
            }
            if (bundle == null) {
                return;
            }
            zzaGt = bundle.getString("com.google.app.id");
            zzaGu = bundle.getInt("com.google.android.gms.version");
        }
    }
}
