package com.amazon.device.ads;

import android.content.Context;
import android.view.WindowManager;
/* loaded from: classes.dex */
class DisplayUtils {
    private static int[][] rotationArray = {new int[]{1, 0, 9, 8}, new int[]{0, 9, 8, 1}};

    DisplayUtils() {
    }

    public static int determineCanonicalScreenOrientation(Context context, AndroidBuildInfo androidBuildInfo) {
        boolean z;
        char c = 0;
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        int i = context.getResources().getConfiguration().orientation;
        if (i == 1) {
            z = rotation == 0 || rotation == 2;
        } else if (i == 2) {
            z = rotation == 1 || rotation == 3;
        } else {
            z = true;
        }
        if (!z) {
            c = 1;
        }
        return rotationArray[c][rotation];
    }
}
