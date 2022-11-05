package com.google.android.gms.tagmanager;

import android.annotation.TargetApi;
import android.os.Build;
import java.io.File;
/* loaded from: classes2.dex */
class zzan {
    public static int version() {
        try {
            return Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(Build.VERSION.SDK);
            zzbo.e(valueOf.length() != 0 ? "Invalid version number: ".concat(valueOf) : new String("Invalid version number: "));
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(9)
    public static boolean zzca(String str) {
        if (version() < 9) {
            return false;
        }
        File file = new File(str);
        file.setReadable(false, false);
        file.setWritable(false, false);
        file.setReadable(true, true);
        file.setWritable(true, true);
        return true;
    }
}
