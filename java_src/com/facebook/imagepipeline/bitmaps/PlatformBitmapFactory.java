package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.DisplayMetrics;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.references.CloseableReference;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public abstract class PlatformBitmapFactory {
    private static BitmapCreationObserver sBitmapCreationObserver;

    /* loaded from: classes.dex */
    public interface BitmapCreationObserver {
        void onBitmapCreated(Bitmap bitmap, @Nullable Object obj);
    }

    public abstract CloseableReference<Bitmap> createBitmapInternal(int i, int i2, Bitmap.Config config);

    public CloseableReference<Bitmap> createBitmap(int i, int i2, Bitmap.Config config) {
        return createBitmap(i, i2, config, (Object) null);
    }

    public CloseableReference<Bitmap> createBitmap(int i, int i2) {
        return createBitmap(i, i2, Bitmap.Config.ARGB_8888);
    }

    public CloseableReference<Bitmap> createBitmap(int i, int i2, Bitmap.Config config, @Nullable Object obj) {
        CloseableReference<Bitmap> createBitmapInternal = createBitmapInternal(i, i2, config);
        addBitmapReference(createBitmapInternal.get(), obj);
        return createBitmapInternal;
    }

    public CloseableReference<Bitmap> createBitmap(int i, int i2, @Nullable Object obj) {
        return createBitmap(i, i2, Bitmap.Config.ARGB_8888, obj);
    }

    public CloseableReference<Bitmap> createBitmap(Bitmap bitmap) {
        return createBitmap(bitmap, (Object) null);
    }

    public CloseableReference<Bitmap> createBitmap(Bitmap bitmap, @Nullable Object obj) {
        return createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), obj);
    }

    public CloseableReference<Bitmap> createBitmap(Bitmap bitmap, int i, int i2, int i3, int i4) {
        return createBitmap(bitmap, i, i2, i3, i4, (Object) null);
    }

    public CloseableReference<Bitmap> createBitmap(Bitmap bitmap, int i, int i2, int i3, int i4, @Nullable Object obj) {
        return createBitmap(bitmap, i, i2, i3, i4, (Matrix) null, false, obj);
    }

    public CloseableReference<Bitmap> createBitmap(Bitmap bitmap, int i, int i2, int i3, int i4, @Nullable Matrix matrix, boolean z) {
        return createBitmap(bitmap, i, i2, i3, i4, matrix, z, (Object) null);
    }

    public CloseableReference<Bitmap> createScaledBitmap(Bitmap bitmap, int i, int i2, boolean z) {
        return createScaledBitmap(bitmap, i, i2, z, null);
    }

    public CloseableReference<Bitmap> createScaledBitmap(Bitmap bitmap, int i, int i2, boolean z, @Nullable Object obj) {
        checkWidthHeight(i, i2);
        Matrix matrix = new Matrix();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        matrix.setScale(i / width, i2 / height);
        return createBitmap(bitmap, 0, 0, width, height, matrix, z, obj);
    }

    public CloseableReference<Bitmap> createBitmap(Bitmap bitmap, int i, int i2, int i3, int i4, @Nullable Matrix matrix, boolean z, @Nullable Object obj) {
        CloseableReference<Bitmap> createBitmap;
        Paint paint;
        Preconditions.checkNotNull(bitmap, "Source bitmap cannot be null");
        checkXYSign(i, i2);
        checkWidthHeight(i3, i4);
        checkFinalImageBounds(bitmap, i, i2, i3, i4);
        Canvas canvas = new Canvas();
        Rect rect = new Rect(i, i2, i + i3, i2 + i4);
        RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i3, i4);
        Bitmap.Config suitableBitmapConfig = getSuitableBitmapConfig(bitmap);
        if (matrix == null || matrix.isIdentity()) {
            createBitmap = createBitmap(i3, i4, suitableBitmapConfig, bitmap.hasAlpha(), obj);
            paint = null;
        } else {
            boolean z2 = !matrix.rectStaysRect();
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            int round = Math.round(rectF2.width());
            int round2 = Math.round(rectF2.height());
            if (z2) {
                suitableBitmapConfig = Bitmap.Config.ARGB_8888;
            }
            CloseableReference<Bitmap> createBitmap2 = createBitmap(round, round2, suitableBitmapConfig, z2 || bitmap.hasAlpha(), obj);
            canvas.translate(-rectF2.left, -rectF2.top);
            canvas.concat(matrix);
            Paint paint2 = new Paint();
            paint2.setFilterBitmap(z);
            if (z2) {
                paint2.setAntiAlias(true);
            }
            createBitmap = createBitmap2;
            paint = paint2;
        }
        Bitmap bitmap2 = createBitmap.get();
        bitmap2.setDensity(bitmap.getDensity());
        if (Build.VERSION.SDK_INT >= 12) {
            bitmap2.setHasAlpha(bitmap.hasAlpha());
        }
        if (Build.VERSION.SDK_INT >= 19) {
            bitmap2.setPremultiplied(bitmap.isPremultiplied());
        }
        canvas.setBitmap(bitmap2);
        canvas.drawBitmap(bitmap, rect, rectF, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    public CloseableReference<Bitmap> createBitmap(DisplayMetrics displayMetrics, int i, int i2, Bitmap.Config config) {
        return createBitmap(displayMetrics, i, i2, config, (Object) null);
    }

    public CloseableReference<Bitmap> createBitmap(DisplayMetrics displayMetrics, int i, int i2, Bitmap.Config config, @Nullable Object obj) {
        return createBitmap(displayMetrics, i, i2, config, true, obj);
    }

    private CloseableReference<Bitmap> createBitmap(int i, int i2, Bitmap.Config config, boolean z) {
        return createBitmap(i, i2, config, z, (Object) null);
    }

    private CloseableReference<Bitmap> createBitmap(int i, int i2, Bitmap.Config config, boolean z, @Nullable Object obj) {
        return createBitmap((DisplayMetrics) null, i, i2, config, z, obj);
    }

    private CloseableReference<Bitmap> createBitmap(DisplayMetrics displayMetrics, int i, int i2, Bitmap.Config config, boolean z) {
        return createBitmap(displayMetrics, i, i2, config, z, (Object) null);
    }

    private CloseableReference<Bitmap> createBitmap(DisplayMetrics displayMetrics, int i, int i2, Bitmap.Config config, boolean z, @Nullable Object obj) {
        checkWidthHeight(i, i2);
        CloseableReference<Bitmap> createBitmapInternal = createBitmapInternal(i, i2, config);
        Bitmap bitmap = createBitmapInternal.get();
        if (displayMetrics != null) {
            bitmap.setDensity(displayMetrics.densityDpi);
        }
        if (Build.VERSION.SDK_INT >= 12) {
            bitmap.setHasAlpha(z);
        }
        if (config == Bitmap.Config.ARGB_8888 && !z) {
            bitmap.eraseColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        }
        addBitmapReference(createBitmapInternal.get(), obj);
        return createBitmapInternal;
    }

    public CloseableReference<Bitmap> createBitmap(int[] iArr, int i, int i2, Bitmap.Config config) {
        return createBitmap(iArr, i, i2, config, (Object) null);
    }

    public CloseableReference<Bitmap> createBitmap(int[] iArr, int i, int i2, Bitmap.Config config, @Nullable Object obj) {
        CloseableReference<Bitmap> createBitmapInternal = createBitmapInternal(i, i2, config);
        createBitmapInternal.get().setPixels(iArr, 0, i, 0, 0, i, i2);
        addBitmapReference(createBitmapInternal.get(), obj);
        return createBitmapInternal;
    }

    public CloseableReference<Bitmap> createBitmap(DisplayMetrics displayMetrics, int[] iArr, int i, int i2, Bitmap.Config config) {
        return createBitmap(displayMetrics, iArr, i, i2, config, (Object) null);
    }

    public CloseableReference<Bitmap> createBitmap(DisplayMetrics displayMetrics, int[] iArr, int i, int i2, Bitmap.Config config, @Nullable Object obj) {
        return createBitmap(displayMetrics, iArr, 0, i, i, i2, config, obj);
    }

    public CloseableReference<Bitmap> createBitmap(DisplayMetrics displayMetrics, int[] iArr, int i, int i2, int i3, int i4, Bitmap.Config config) {
        return createBitmap(displayMetrics, iArr, i, i2, i3, i4, config, (Object) null);
    }

    public CloseableReference<Bitmap> createBitmap(DisplayMetrics displayMetrics, int[] iArr, int i, int i2, int i3, int i4, Bitmap.Config config, @Nullable Object obj) {
        CloseableReference<Bitmap> createBitmap = createBitmap(displayMetrics, i3, i4, config, obj);
        createBitmap.get().setPixels(iArr, i, i2, 0, 0, i3, i4);
        return createBitmap;
    }

    private static Bitmap.Config getSuitableBitmapConfig(Bitmap bitmap) {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap.Config config2 = bitmap.getConfig();
        if (config2 != null) {
            switch (AnonymousClass1.$SwitchMap$android$graphics$Bitmap$Config[config2.ordinal()]) {
                case 1:
                    return Bitmap.Config.RGB_565;
                case 2:
                    return Bitmap.Config.ALPHA_8;
                default:
                    return Bitmap.Config.ARGB_8888;
            }
        }
        return config;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.imagepipeline.bitmaps.PlatformBitmapFactory$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config = new int[Bitmap.Config.values().length];

        static {
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 1;
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
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private static void checkWidthHeight(int i, int i2) {
        boolean z = true;
        Preconditions.checkArgument(i > 0, "width must be > 0");
        if (i2 <= 0) {
            z = false;
        }
        Preconditions.checkArgument(z, "height must be > 0");
    }

    private static void checkXYSign(int i, int i2) {
        boolean z = true;
        Preconditions.checkArgument(i >= 0, "x must be >= 0");
        if (i2 < 0) {
            z = false;
        }
        Preconditions.checkArgument(z, "y must be >= 0");
    }

    private static void checkFinalImageBounds(Bitmap bitmap, int i, int i2, int i3, int i4) {
        boolean z = true;
        Preconditions.checkArgument(i + i3 <= bitmap.getWidth(), "x + width must be <= bitmap.width()");
        if (i2 + i4 > bitmap.getHeight()) {
            z = false;
        }
        Preconditions.checkArgument(z, "y + height must be <= bitmap.height()");
    }

    public void setCreationListener(BitmapCreationObserver bitmapCreationObserver) {
        if (sBitmapCreationObserver == null) {
            sBitmapCreationObserver = bitmapCreationObserver;
        }
    }

    public void addBitmapReference(Bitmap bitmap, @Nullable Object obj) {
        if (sBitmapCreationObserver != null) {
            sBitmapCreationObserver.onBitmapCreated(bitmap, obj);
        }
    }
}
