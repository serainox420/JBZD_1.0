package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.facebook.common.internal.Preconditions;
import com.facebook.drawee.drawable.DrawableParent;
import com.facebook.drawee.drawable.ForwardingDrawable;
import com.facebook.drawee.drawable.MatrixDrawable;
import com.facebook.drawee.drawable.Rounded;
import com.facebook.drawee.drawable.RoundedBitmapDrawable;
import com.facebook.drawee.drawable.RoundedColorDrawable;
import com.facebook.drawee.drawable.RoundedCornersDrawable;
import com.facebook.drawee.drawable.ScaleTypeDrawable;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.drawee.generic.RoundingParams;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class WrappingUtils {
    private static final Drawable sEmptyDrawable = new ColorDrawable(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Drawable maybeWrapWithScaleType(@Nullable Drawable drawable, @Nullable ScalingUtils.ScaleType scaleType) {
        return maybeWrapWithScaleType(drawable, scaleType, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Drawable maybeWrapWithScaleType(@Nullable Drawable drawable, @Nullable ScalingUtils.ScaleType scaleType, @Nullable PointF pointF) {
        if (drawable != null && scaleType != null) {
            ScaleTypeDrawable scaleTypeDrawable = new ScaleTypeDrawable(drawable, scaleType);
            if (pointF != null) {
                scaleTypeDrawable.setFocusPoint(pointF);
            }
            return scaleTypeDrawable;
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Drawable maybeWrapWithMatrix(@Nullable Drawable drawable, @Nullable Matrix matrix) {
        return (drawable == null || matrix == null) ? drawable : new MatrixDrawable(drawable, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScaleTypeDrawable wrapChildWithScaleType(DrawableParent drawableParent, ScalingUtils.ScaleType scaleType) {
        Drawable maybeWrapWithScaleType = maybeWrapWithScaleType(drawableParent.setDrawable(sEmptyDrawable), scaleType);
        drawableParent.setDrawable(maybeWrapWithScaleType);
        Preconditions.checkNotNull(maybeWrapWithScaleType, "Parent has no child drawable!");
        return (ScaleTypeDrawable) maybeWrapWithScaleType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void updateOverlayColorRounding(DrawableParent drawableParent, @Nullable RoundingParams roundingParams) {
        Drawable drawable = drawableParent.getDrawable();
        if (roundingParams != null && roundingParams.getRoundingMethod() == RoundingParams.RoundingMethod.OVERLAY_COLOR) {
            if (drawable instanceof RoundedCornersDrawable) {
                RoundedCornersDrawable roundedCornersDrawable = (RoundedCornersDrawable) drawable;
                applyRoundingParams(roundedCornersDrawable, roundingParams);
                roundedCornersDrawable.setOverlayColor(roundingParams.getOverlayColor());
                return;
            }
            drawableParent.setDrawable(maybeWrapWithRoundedOverlayColor(drawableParent.setDrawable(sEmptyDrawable), roundingParams));
        } else if (drawable instanceof RoundedCornersDrawable) {
            drawableParent.setDrawable(((RoundedCornersDrawable) drawable).setCurrent(sEmptyDrawable));
            sEmptyDrawable.setCallback(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void updateLeafRounding(DrawableParent drawableParent, @Nullable RoundingParams roundingParams, Resources resources) {
        DrawableParent findDrawableParentForLeaf = findDrawableParentForLeaf(drawableParent);
        Drawable drawable = findDrawableParentForLeaf.getDrawable();
        if (roundingParams != null && roundingParams.getRoundingMethod() == RoundingParams.RoundingMethod.BITMAP_ONLY) {
            if (drawable instanceof Rounded) {
                applyRoundingParams((Rounded) drawable, roundingParams);
            } else if (drawable != null) {
                findDrawableParentForLeaf.setDrawable(sEmptyDrawable);
                findDrawableParentForLeaf.setDrawable(applyLeafRounding(drawable, roundingParams, resources));
            }
        } else if (drawable instanceof Rounded) {
            resetRoundingParams((Rounded) drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable maybeWrapWithRoundedOverlayColor(@Nullable Drawable drawable, @Nullable RoundingParams roundingParams) {
        if (drawable != null && roundingParams != null && roundingParams.getRoundingMethod() == RoundingParams.RoundingMethod.OVERLAY_COLOR) {
            RoundedCornersDrawable roundedCornersDrawable = new RoundedCornersDrawable(drawable);
            applyRoundingParams(roundedCornersDrawable, roundingParams);
            roundedCornersDrawable.setOverlayColor(roundingParams.getOverlayColor());
            return roundedCornersDrawable;
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable maybeApplyLeafRounding(@Nullable Drawable drawable, @Nullable RoundingParams roundingParams, Resources resources) {
        if (drawable != null && roundingParams != null && roundingParams.getRoundingMethod() == RoundingParams.RoundingMethod.BITMAP_ONLY) {
            if (drawable instanceof ForwardingDrawable) {
                DrawableParent findDrawableParentForLeaf = findDrawableParentForLeaf((ForwardingDrawable) drawable);
                findDrawableParentForLeaf.setDrawable(applyLeafRounding(findDrawableParentForLeaf.setDrawable(sEmptyDrawable), roundingParams, resources));
                return drawable;
            }
            return applyLeafRounding(drawable, roundingParams, resources);
        }
        return drawable;
    }

    private static Drawable applyLeafRounding(Drawable drawable, RoundingParams roundingParams, Resources resources) {
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            RoundedBitmapDrawable roundedBitmapDrawable = new RoundedBitmapDrawable(resources, bitmapDrawable.getBitmap(), bitmapDrawable.getPaint());
            applyRoundingParams(roundedBitmapDrawable, roundingParams);
            return roundedBitmapDrawable;
        } else if ((drawable instanceof ColorDrawable) && Build.VERSION.SDK_INT >= 11) {
            RoundedColorDrawable fromColorDrawable = RoundedColorDrawable.fromColorDrawable((ColorDrawable) drawable);
            applyRoundingParams(fromColorDrawable, roundingParams);
            return fromColorDrawable;
        } else {
            return drawable;
        }
    }

    static void applyRoundingParams(Rounded rounded, RoundingParams roundingParams) {
        rounded.setCircle(roundingParams.getRoundAsCircle());
        rounded.setRadii(roundingParams.getCornersRadii());
        rounded.setBorder(roundingParams.getBorderColor(), roundingParams.getBorderWidth());
        rounded.setPadding(roundingParams.getPadding());
    }

    static void resetRoundingParams(Rounded rounded) {
        rounded.setCircle(false);
        rounded.setRadius(BitmapDescriptorFactory.HUE_RED);
        rounded.setBorder(0, BitmapDescriptorFactory.HUE_RED);
        rounded.setPadding(BitmapDescriptorFactory.HUE_RED);
    }

    static DrawableParent findDrawableParentForLeaf(DrawableParent drawableParent) {
        while (true) {
            Drawable drawable = drawableParent.getDrawable();
            if (drawable == drawableParent || !(drawable instanceof DrawableParent)) {
                break;
            }
            drawableParent = (DrawableParent) drawable;
        }
        return drawableParent;
    }
}
