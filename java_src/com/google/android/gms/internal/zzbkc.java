package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.facebook.imagepipeline.common.RotationOptions;
/* loaded from: classes2.dex */
public class zzbkc {
    public static Bitmap zzb(Bitmap bitmap, zzbka zzbkaVar) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (zzbkaVar.rotation != 0) {
            Matrix matrix = new Matrix();
            matrix.postRotate(zzom(zzbkaVar.rotation));
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        }
        if (zzbkaVar.rotation == 1 || zzbkaVar.rotation == 3) {
            zzbkaVar.width = height;
            zzbkaVar.height = width;
        }
        return bitmap;
    }

    private static int zzom(int i) {
        switch (i) {
            case 0:
                return 0;
            case 1:
                return 90;
            case 2:
                return RotationOptions.ROTATE_180;
            case 3:
                return RotationOptions.ROTATE_270;
            default:
                throw new IllegalArgumentException("Unsupported rotation degree.");
        }
    }
}
