package com.facebook.imageutils;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.support.v4.f.j;
import android.util.Pair;
import com.facebook.common.internal.Preconditions;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public final class BitmapUtil {
    public static final int ALPHA_8_BYTES_PER_PIXEL = 1;
    public static final int ARGB_4444_BYTES_PER_PIXEL = 2;
    public static final int ARGB_8888_BYTES_PER_PIXEL = 4;
    private static final j.c<ByteBuffer> DECODE_BUFFERS = new j.c<>(12);
    private static final int DECODE_BUFFER_SIZE = 16384;
    public static final float MAX_BITMAP_SIZE = 2048.0f;
    private static final int POOL_SIZE = 12;
    public static final int RGB_565_BYTES_PER_PIXEL = 2;

    @SuppressLint({"NewApi"})
    public static int getSizeInBytes(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        if (Build.VERSION.SDK_INT > 19) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException e) {
            }
        }
        if (Build.VERSION.SDK_INT >= 12) {
            return bitmap.getByteCount();
        }
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    @Nullable
    public static Pair<Integer, Integer> decodeDimensions(byte[] bArr) {
        return decodeDimensions(new ByteArrayInputStream(bArr));
    }

    @Nullable
    public static Pair<Integer, Integer> decodeDimensions(InputStream inputStream) {
        Pair<Integer, Integer> pair = null;
        Preconditions.checkNotNull(inputStream);
        ByteBuffer a2 = DECODE_BUFFERS.a();
        if (a2 == null) {
            a2 = ByteBuffer.allocate(DECODE_BUFFER_SIZE);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            options.inTempStorage = a2.array();
            BitmapFactory.decodeStream(inputStream, null, options);
            if (options.outWidth != -1 && options.outHeight != -1) {
                pair = new Pair<>(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
            }
            return pair;
        } finally {
            DECODE_BUFFERS.a(a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.imageutils.BitmapUtil$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config = new int[Bitmap.Config.values().length];

        static {
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ALPHA_8.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public static int getPixelSizeForBitmapConfig(Bitmap.Config config) {
        switch (AnonymousClass1.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()]) {
            case 1:
                return 4;
            case 2:
                return 1;
            case 3:
            case 4:
                return 2;
            default:
                throw new UnsupportedOperationException("The provided Bitmap.Config is not supported");
        }
    }

    public static int getSizeInByteForBitmap(int i, int i2, Bitmap.Config config) {
        return i * i2 * getPixelSizeForBitmapConfig(config);
    }
}
