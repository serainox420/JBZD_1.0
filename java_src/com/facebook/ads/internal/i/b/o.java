package com.facebook.ads.internal.i.b;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import java.io.File;
/* loaded from: classes.dex */
final class o {
    public static File a(Context context) {
        return new File(a(context, true), "video-cache");
    }

    private static File a(Context context, boolean z) {
        String str;
        File file = null;
        try {
            str = Environment.getExternalStorageState();
        } catch (NullPointerException e) {
            str = "";
        }
        if (z && "mounted".equals(str)) {
            file = b(context);
        }
        if (file == null) {
            file = context.getCacheDir();
        }
        if (file == null) {
            String str2 = "/data/data/" + context.getPackageName() + "/cache/";
            Log.w("ProxyCache", "Can't define system cache directory! '" + str2 + "%s' will be used.");
            return new File(str2);
        }
        return file;
    }

    private static File b(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "cache");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        Log.w("ProxyCache", "Unable to create external cache directory");
        return null;
    }
}
