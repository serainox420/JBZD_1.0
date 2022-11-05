package com.facebook.drawee.generic;

import com.facebook.common.internal.Preconditions;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
/* loaded from: classes.dex */
public class RoundingParams {
    private RoundingMethod mRoundingMethod = RoundingMethod.BITMAP_ONLY;
    private boolean mRoundAsCircle = false;
    private float[] mCornersRadii = null;
    private int mOverlayColor = 0;
    private float mBorderWidth = BitmapDescriptorFactory.HUE_RED;
    private int mBorderColor = 0;
    private float mPadding = BitmapDescriptorFactory.HUE_RED;

    /* loaded from: classes.dex */
    public enum RoundingMethod {
        OVERLAY_COLOR,
        BITMAP_ONLY
    }

    public RoundingParams setRoundAsCircle(boolean z) {
        this.mRoundAsCircle = z;
        return this;
    }

    public boolean getRoundAsCircle() {
        return this.mRoundAsCircle;
    }

    public RoundingParams setCornersRadius(float f) {
        Arrays.fill(getOrCreateRoundedCornersRadii(), f);
        return this;
    }

    public RoundingParams setCornersRadii(float f, float f2, float f3, float f4) {
        float[] orCreateRoundedCornersRadii = getOrCreateRoundedCornersRadii();
        orCreateRoundedCornersRadii[1] = f;
        orCreateRoundedCornersRadii[0] = f;
        orCreateRoundedCornersRadii[3] = f2;
        orCreateRoundedCornersRadii[2] = f2;
        orCreateRoundedCornersRadii[5] = f3;
        orCreateRoundedCornersRadii[4] = f3;
        orCreateRoundedCornersRadii[7] = f4;
        orCreateRoundedCornersRadii[6] = f4;
        return this;
    }

    public RoundingParams setCornersRadii(float[] fArr) {
        Preconditions.checkNotNull(fArr);
        Preconditions.checkArgument(fArr.length == 8, "radii should have exactly 8 values");
        System.arraycopy(fArr, 0, getOrCreateRoundedCornersRadii(), 0, 8);
        return this;
    }

    public float[] getCornersRadii() {
        return this.mCornersRadii;
    }

    public RoundingParams setRoundingMethod(RoundingMethod roundingMethod) {
        this.mRoundingMethod = roundingMethod;
        return this;
    }

    public RoundingMethod getRoundingMethod() {
        return this.mRoundingMethod;
    }

    public RoundingParams setOverlayColor(int i) {
        this.mOverlayColor = i;
        this.mRoundingMethod = RoundingMethod.OVERLAY_COLOR;
        return this;
    }

    public int getOverlayColor() {
        return this.mOverlayColor;
    }

    private float[] getOrCreateRoundedCornersRadii() {
        if (this.mCornersRadii == null) {
            this.mCornersRadii = new float[8];
        }
        return this.mCornersRadii;
    }

    public static RoundingParams asCircle() {
        return new RoundingParams().setRoundAsCircle(true);
    }

    public static RoundingParams fromCornersRadius(float f) {
        return new RoundingParams().setCornersRadius(f);
    }

    public static RoundingParams fromCornersRadii(float f, float f2, float f3, float f4) {
        return new RoundingParams().setCornersRadii(f, f2, f3, f4);
    }

    public static RoundingParams fromCornersRadii(float[] fArr) {
        return new RoundingParams().setCornersRadii(fArr);
    }

    public RoundingParams setBorderWidth(float f) {
        Preconditions.checkArgument(f >= BitmapDescriptorFactory.HUE_RED, "the border width cannot be < 0");
        this.mBorderWidth = f;
        return this;
    }

    public float getBorderWidth() {
        return this.mBorderWidth;
    }

    public RoundingParams setBorderColor(int i) {
        this.mBorderColor = i;
        return this;
    }

    public int getBorderColor() {
        return this.mBorderColor;
    }

    public RoundingParams setBorder(int i, float f) {
        Preconditions.checkArgument(f >= BitmapDescriptorFactory.HUE_RED, "the border width cannot be < 0");
        this.mBorderWidth = f;
        this.mBorderColor = i;
        return this;
    }

    public RoundingParams setPadding(float f) {
        Preconditions.checkArgument(f >= BitmapDescriptorFactory.HUE_RED, "the padding cannot be < 0");
        this.mPadding = f;
        return this;
    }

    public float getPadding() {
        return this.mPadding;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RoundingParams roundingParams = (RoundingParams) obj;
        if (this.mRoundAsCircle != roundingParams.mRoundAsCircle || this.mOverlayColor != roundingParams.mOverlayColor || Float.compare(roundingParams.mBorderWidth, this.mBorderWidth) != 0 || this.mBorderColor != roundingParams.mBorderColor || Float.compare(roundingParams.mPadding, this.mPadding) != 0 || this.mRoundingMethod != roundingParams.mRoundingMethod) {
            return false;
        }
        return Arrays.equals(this.mCornersRadii, roundingParams.mCornersRadii);
    }

    public int hashCode() {
        int i = 0;
        int floatToIntBits = ((((this.mBorderWidth != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(this.mBorderWidth) : 0) + (((((this.mCornersRadii != null ? Arrays.hashCode(this.mCornersRadii) : 0) + (((this.mRoundAsCircle ? 1 : 0) + ((this.mRoundingMethod != null ? this.mRoundingMethod.hashCode() : 0) * 31)) * 31)) * 31) + this.mOverlayColor) * 31)) * 31) + this.mBorderColor) * 31;
        if (this.mPadding != BitmapDescriptorFactory.HUE_RED) {
            i = Float.floatToIntBits(this.mPadding);
        }
        return floatToIntBits + i;
    }
}
