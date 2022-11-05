package com.facebook.drawee.generic;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.facebook.drawee.R;
import com.facebook.drawee.drawable.AutoRotateDrawable;
import com.facebook.drawee.drawable.ScalingUtils;
import com.facebook.infer.annotation.ReturnsOwnership;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class GenericDraweeHierarchyInflater {
    public static GenericDraweeHierarchy inflateHierarchy(Context context, @Nullable AttributeSet attributeSet) {
        return inflateBuilder(context, attributeSet).build();
    }

    public static GenericDraweeHierarchyBuilder inflateBuilder(Context context, @Nullable AttributeSet attributeSet) {
        return updateBuilder(new GenericDraweeHierarchyBuilder(context.getResources()), context, attributeSet);
    }

    public static GenericDraweeHierarchyBuilder updateBuilder(GenericDraweeHierarchyBuilder genericDraweeHierarchyBuilder, Context context, @Nullable AttributeSet attributeSet) {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        boolean z4 = true;
        int i2 = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GenericDraweeHierarchy);
            try {
                int indexCount = obtainStyledAttributes.getIndexCount();
                z = true;
                z2 = true;
                z3 = true;
                i = 0;
                for (int i3 = 0; i3 < indexCount; i3++) {
                    int index = obtainStyledAttributes.getIndex(i3);
                    if (index == R.styleable.GenericDraweeHierarchy_actualImageScaleType) {
                        genericDraweeHierarchyBuilder.setActualImageScaleType(getScaleTypeFromXml(obtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_placeholderImage) {
                        genericDraweeHierarchyBuilder.setPlaceholderImage(getDrawable(context, obtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_pressedStateOverlayImage) {
                        genericDraweeHierarchyBuilder.setPressedStateOverlay(getDrawable(context, obtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_progressBarImage) {
                        genericDraweeHierarchyBuilder.setProgressBarImage(getDrawable(context, obtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_fadeDuration) {
                        genericDraweeHierarchyBuilder.setFadeDuration(obtainStyledAttributes.getInt(index, 0));
                    } else if (index == R.styleable.GenericDraweeHierarchy_viewAspectRatio) {
                        genericDraweeHierarchyBuilder.setDesiredAspectRatio(obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED));
                    } else if (index == R.styleable.GenericDraweeHierarchy_placeholderImageScaleType) {
                        genericDraweeHierarchyBuilder.setPlaceholderImageScaleType(getScaleTypeFromXml(obtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_retryImage) {
                        genericDraweeHierarchyBuilder.setRetryImage(getDrawable(context, obtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_retryImageScaleType) {
                        genericDraweeHierarchyBuilder.setRetryImageScaleType(getScaleTypeFromXml(obtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_failureImage) {
                        genericDraweeHierarchyBuilder.setFailureImage(getDrawable(context, obtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_failureImageScaleType) {
                        genericDraweeHierarchyBuilder.setFailureImageScaleType(getScaleTypeFromXml(obtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_progressBarImageScaleType) {
                        genericDraweeHierarchyBuilder.setProgressBarImageScaleType(getScaleTypeFromXml(obtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_progressBarAutoRotateInterval) {
                        i = obtainStyledAttributes.getInteger(index, i);
                    } else if (index == R.styleable.GenericDraweeHierarchy_backgroundImage) {
                        genericDraweeHierarchyBuilder.setBackground(getDrawable(context, obtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_overlayImage) {
                        genericDraweeHierarchyBuilder.setOverlay(getDrawable(context, obtainStyledAttributes, index));
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundAsCircle) {
                        getRoundingParams(genericDraweeHierarchyBuilder).setRoundAsCircle(obtainStyledAttributes.getBoolean(index, false));
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundedCornerRadius) {
                        i2 = obtainStyledAttributes.getDimensionPixelSize(index, i2);
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundTopLeft) {
                        z3 = obtainStyledAttributes.getBoolean(index, z3);
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundTopRight) {
                        z2 = obtainStyledAttributes.getBoolean(index, z2);
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundBottomLeft) {
                        z = obtainStyledAttributes.getBoolean(index, z);
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundBottomRight) {
                        z4 = obtainStyledAttributes.getBoolean(index, z4);
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundWithOverlayColor) {
                        getRoundingParams(genericDraweeHierarchyBuilder).setOverlayColor(obtainStyledAttributes.getColor(index, 0));
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundingBorderWidth) {
                        getRoundingParams(genericDraweeHierarchyBuilder).setBorderWidth(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundingBorderColor) {
                        getRoundingParams(genericDraweeHierarchyBuilder).setBorderColor(obtainStyledAttributes.getColor(index, 0));
                    } else if (index == R.styleable.GenericDraweeHierarchy_roundingBorderPadding) {
                        getRoundingParams(genericDraweeHierarchyBuilder).setPadding(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    }
                }
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            z = true;
            z2 = true;
            z3 = true;
            i = 0;
        }
        if (genericDraweeHierarchyBuilder.getProgressBarImage() != null && i > 0) {
            genericDraweeHierarchyBuilder.setProgressBarImage(new AutoRotateDrawable(genericDraweeHierarchyBuilder.getProgressBarImage(), i));
        }
        if (i2 > 0) {
            getRoundingParams(genericDraweeHierarchyBuilder).setCornersRadii(z3 ? i2 : 0.0f, z2 ? i2 : 0.0f, z4 ? i2 : 0.0f, z ? i2 : 0.0f);
        }
        return genericDraweeHierarchyBuilder;
    }

    @ReturnsOwnership
    private static RoundingParams getRoundingParams(GenericDraweeHierarchyBuilder genericDraweeHierarchyBuilder) {
        if (genericDraweeHierarchyBuilder.getRoundingParams() == null) {
            genericDraweeHierarchyBuilder.setRoundingParams(new RoundingParams());
        }
        return genericDraweeHierarchyBuilder.getRoundingParams();
    }

    @Nullable
    private static Drawable getDrawable(Context context, TypedArray typedArray, int i) {
        int resourceId = typedArray.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        return context.getResources().getDrawable(resourceId);
    }

    @Nullable
    private static ScalingUtils.ScaleType getScaleTypeFromXml(TypedArray typedArray, int i) {
        switch (typedArray.getInt(i, -2)) {
            case -1:
                return null;
            case 0:
                return ScalingUtils.ScaleType.FIT_XY;
            case 1:
                return ScalingUtils.ScaleType.FIT_START;
            case 2:
                return ScalingUtils.ScaleType.FIT_CENTER;
            case 3:
                return ScalingUtils.ScaleType.FIT_END;
            case 4:
                return ScalingUtils.ScaleType.CENTER;
            case 5:
                return ScalingUtils.ScaleType.CENTER_INSIDE;
            case 6:
                return ScalingUtils.ScaleType.CENTER_CROP;
            case 7:
                return ScalingUtils.ScaleType.FOCUS_CROP;
            default:
                throw new RuntimeException("XML attribute not specified!");
        }
    }
}
