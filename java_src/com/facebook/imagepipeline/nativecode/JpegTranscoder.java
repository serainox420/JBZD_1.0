package com.facebook.imagepipeline.nativecode;

import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
@DoNotStrip
/* loaded from: classes.dex */
public class JpegTranscoder {
    public static final int MAX_QUALITY = 100;
    public static final int MAX_SCALE_NUMERATOR = 16;
    public static final int MIN_QUALITY = 0;
    public static final int MIN_SCALE_NUMERATOR = 1;
    public static final int SCALE_DENOMINATOR = 8;

    @DoNotStrip
    private static native void nativeTranscodeJpeg(InputStream inputStream, OutputStream outputStream, int i, int i2, int i3) throws IOException;

    static {
        ImagePipelineNativeLoader.load();
    }

    public static boolean isRotationAngleAllowed(int i) {
        return i >= 0 && i <= 270 && i % 90 == 0;
    }

    public static void transcodeJpeg(InputStream inputStream, OutputStream outputStream, int i, int i2, int i3) throws IOException {
        boolean z = false;
        Preconditions.checkArgument(i2 >= 1);
        Preconditions.checkArgument(i2 <= 16);
        Preconditions.checkArgument(i3 >= 0);
        Preconditions.checkArgument(i3 <= 100);
        Preconditions.checkArgument(isRotationAngleAllowed(i));
        if (i2 != 8 || i != 0) {
            z = true;
        }
        Preconditions.checkArgument(z, "no transformation requested");
        nativeTranscodeJpeg((InputStream) Preconditions.checkNotNull(inputStream), (OutputStream) Preconditions.checkNotNull(outputStream), i, i2, i3);
    }
}
