package pl.jbzd.core.a;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.ExifInterface;
import java.io.IOException;
/* compiled from: ImageUtils.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static float f6090a = 1.0f;

    public static Bitmap a(Bitmap bitmap, String str) throws IOException {
        switch (new ExifInterface(str).getAttributeInt("Orientation", 1)) {
            case 2:
                return a(bitmap, true, false);
            case 3:
                return a(bitmap, 180.0f);
            case 4:
                return a(bitmap, false, true);
            case 5:
            case 7:
            default:
                return bitmap;
            case 6:
                return a(bitmap, 90.0f);
            case 8:
                return a(bitmap, 270.0f);
        }
    }

    public static Bitmap a(Bitmap bitmap, float f) {
        Matrix matrix = new Matrix();
        matrix.postRotate(f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static Bitmap a(Bitmap bitmap, boolean z, boolean z2) {
        float f = -1.0f;
        Matrix matrix = new Matrix();
        float f2 = z ? -1.0f : 1.0f;
        if (!z2) {
            f = 1.0f;
        }
        matrix.preScale(f2, f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }
}
