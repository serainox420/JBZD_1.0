package com.google.android.gms.wallet.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.google.android.gms.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public final class WalletFragmentStyle extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<WalletFragmentStyle> CREATOR = new zzc();
    Bundle zzbRL;
    int zzbSl;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface BuyButtonAppearance {
        public static final int ANDROID_PAY_DARK = 4;
        public static final int ANDROID_PAY_LIGHT = 5;
        public static final int ANDROID_PAY_LIGHT_WITH_BORDER = 6;
        @Deprecated
        public static final int GOOGLE_WALLET_CLASSIC = 1;
        @Deprecated
        public static final int GOOGLE_WALLET_GRAYSCALE = 2;
        @Deprecated
        public static final int GOOGLE_WALLET_MONOCHROME = 3;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface BuyButtonText {
        public static final int BUY_WITH = 5;
        public static final int DONATE_WITH = 7;
        public static final int LOGO_ONLY = 6;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Dimension {
        public static final int MATCH_PARENT = -1;
        public static final int UNIT_DIP = 1;
        public static final int UNIT_IN = 4;
        public static final int UNIT_MM = 5;
        public static final int UNIT_PT = 3;
        public static final int UNIT_PX = 0;
        public static final int UNIT_SP = 2;
        public static final int WRAP_CONTENT = -2;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface LogoImageType {
        public static final int ANDROID_PAY = 3;
        @Deprecated
        public static final int GOOGLE_WALLET_CLASSIC = 1;
        @Deprecated
        public static final int GOOGLE_WALLET_MONOCHROME = 2;
    }

    public WalletFragmentStyle() {
        this.zzbRL = new Bundle();
        this.zzbRL.putInt("buyButtonAppearanceDefault", 4);
        this.zzbRL.putInt("maskedWalletDetailsLogoImageTypeDefault", 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WalletFragmentStyle(Bundle bundle, int i) {
        this.zzbRL = bundle;
        this.zzbSl = i;
    }

    private static long zzB(int i, int i2) {
        return (i << 32) | (i2 & 4294967295L);
    }

    private static int zza(long j, DisplayMetrics displayMetrics) {
        int i;
        int i2 = (int) (j >>> 32);
        int i3 = (int) j;
        switch (i2) {
            case 0:
                i = 0;
                break;
            case 1:
                i = 1;
                break;
            case 2:
                i = 2;
                break;
            case 3:
                i = 3;
                break;
            case 4:
                i = 4;
                break;
            case 5:
                i = 5;
                break;
            case 128:
                return TypedValue.complexToDimensionPixelSize(i3, displayMetrics);
            case 129:
                return i3;
            default:
                throw new IllegalStateException(new StringBuilder(36).append("Unexpected unit or type: ").append(i2).toString());
        }
        return Math.round(TypedValue.applyDimension(i, Float.intBitsToFloat(i3), displayMetrics));
    }

    private static long zza(TypedValue typedValue) {
        switch (typedValue.type) {
            case 5:
                return zzB(128, typedValue.data);
            case 16:
                return zzoW(typedValue.data);
            default:
                throw new IllegalArgumentException(new StringBuilder(38).append("Unexpected dimension type: ").append(typedValue.type).toString());
        }
    }

    private void zza(TypedArray typedArray, int i, String str) {
        TypedValue peekValue;
        if (!this.zzbRL.containsKey(str) && (peekValue = typedArray.peekValue(i)) != null) {
            this.zzbRL.putLong(str, zza(peekValue));
        }
    }

    private void zza(TypedArray typedArray, int i, String str, String str2) {
        TypedValue peekValue;
        if (this.zzbRL.containsKey(str) || this.zzbRL.containsKey(str2) || (peekValue = typedArray.peekValue(i)) == null) {
            return;
        }
        if (peekValue.type < 28 || peekValue.type > 31) {
            this.zzbRL.putInt(str2, peekValue.resourceId);
        } else {
            this.zzbRL.putInt(str, peekValue.data);
        }
    }

    private static long zzb(int i, float f) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return zzB(i, Float.floatToIntBits(f));
            default:
                throw new IllegalArgumentException(new StringBuilder(30).append("Unrecognized unit: ").append(i).toString());
        }
    }

    private void zzb(TypedArray typedArray, int i, String str) {
        TypedValue peekValue;
        if (!this.zzbRL.containsKey(str) && (peekValue = typedArray.peekValue(i)) != null) {
            this.zzbRL.putInt(str, peekValue.data);
        }
    }

    private static long zzoW(int i) {
        if (i < 0) {
            if (i != -1 && i != -2) {
                throw new IllegalArgumentException(new StringBuilder(39).append("Unexpected dimension value: ").append(i).toString());
            }
            return zzB(129, i);
        }
        return zzb(0, i);
    }

    public WalletFragmentStyle setBuyButtonAppearance(int i) {
        this.zzbRL.putInt("buyButtonAppearance", i);
        return this;
    }

    public WalletFragmentStyle setBuyButtonHeight(int i) {
        this.zzbRL.putLong("buyButtonHeight", zzoW(i));
        return this;
    }

    public WalletFragmentStyle setBuyButtonHeight(int i, float f) {
        this.zzbRL.putLong("buyButtonHeight", zzb(i, f));
        return this;
    }

    public WalletFragmentStyle setBuyButtonText(int i) {
        this.zzbRL.putInt("buyButtonText", i);
        return this;
    }

    public WalletFragmentStyle setBuyButtonWidth(int i) {
        this.zzbRL.putLong("buyButtonWidth", zzoW(i));
        return this;
    }

    public WalletFragmentStyle setBuyButtonWidth(int i, float f) {
        this.zzbRL.putLong("buyButtonWidth", zzb(i, f));
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsBackgroundColor(int i) {
        this.zzbRL.remove("maskedWalletDetailsBackgroundResource");
        this.zzbRL.putInt("maskedWalletDetailsBackgroundColor", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsBackgroundResource(int i) {
        this.zzbRL.remove("maskedWalletDetailsBackgroundColor");
        this.zzbRL.putInt("maskedWalletDetailsBackgroundResource", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsButtonBackgroundColor(int i) {
        this.zzbRL.remove("maskedWalletDetailsButtonBackgroundResource");
        this.zzbRL.putInt("maskedWalletDetailsButtonBackgroundColor", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsButtonBackgroundResource(int i) {
        this.zzbRL.remove("maskedWalletDetailsButtonBackgroundColor");
        this.zzbRL.putInt("maskedWalletDetailsButtonBackgroundResource", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsButtonTextAppearance(int i) {
        this.zzbRL.putInt("maskedWalletDetailsButtonTextAppearance", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsHeaderTextAppearance(int i) {
        this.zzbRL.putInt("maskedWalletDetailsHeaderTextAppearance", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsLogoImageType(int i) {
        this.zzbRL.putInt("maskedWalletDetailsLogoImageType", i);
        return this;
    }

    @Deprecated
    public WalletFragmentStyle setMaskedWalletDetailsLogoTextColor(int i) {
        this.zzbRL.putInt("maskedWalletDetailsLogoTextColor", i);
        return this;
    }

    public WalletFragmentStyle setMaskedWalletDetailsTextAppearance(int i) {
        this.zzbRL.putInt("maskedWalletDetailsTextAppearance", i);
        return this;
    }

    public WalletFragmentStyle setStyleResourceId(int i) {
        this.zzbSl = i;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }

    public int zza(String str, DisplayMetrics displayMetrics, int i) {
        return this.zzbRL.containsKey(str) ? zza(this.zzbRL.getLong(str), displayMetrics) : i;
    }

    public void zzci(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(this.zzbSl <= 0 ? R.style.WalletFragmentDefaultStyle : this.zzbSl, R.styleable.WalletFragmentStyle);
        zza(obtainStyledAttributes, R.styleable.WalletFragmentStyle_buyButtonWidth, "buyButtonWidth");
        zza(obtainStyledAttributes, R.styleable.WalletFragmentStyle_buyButtonHeight, "buyButtonHeight");
        zzb(obtainStyledAttributes, R.styleable.WalletFragmentStyle_buyButtonText, "buyButtonText");
        zzb(obtainStyledAttributes, R.styleable.WalletFragmentStyle_buyButtonAppearance, "buyButtonAppearance");
        zzb(obtainStyledAttributes, R.styleable.WalletFragmentStyle_maskedWalletDetailsTextAppearance, "maskedWalletDetailsTextAppearance");
        zzb(obtainStyledAttributes, R.styleable.WalletFragmentStyle_maskedWalletDetailsHeaderTextAppearance, "maskedWalletDetailsHeaderTextAppearance");
        zza(obtainStyledAttributes, R.styleable.WalletFragmentStyle_maskedWalletDetailsBackground, "maskedWalletDetailsBackgroundColor", "maskedWalletDetailsBackgroundResource");
        zzb(obtainStyledAttributes, R.styleable.WalletFragmentStyle_maskedWalletDetailsButtonTextAppearance, "maskedWalletDetailsButtonTextAppearance");
        zza(obtainStyledAttributes, R.styleable.WalletFragmentStyle_maskedWalletDetailsButtonBackground, "maskedWalletDetailsButtonBackgroundColor", "maskedWalletDetailsButtonBackgroundResource");
        zzb(obtainStyledAttributes, R.styleable.WalletFragmentStyle_maskedWalletDetailsLogoTextColor, "maskedWalletDetailsLogoTextColor");
        zzb(obtainStyledAttributes, R.styleable.WalletFragmentStyle_maskedWalletDetailsLogoImageType, "maskedWalletDetailsLogoImageType");
        obtainStyledAttributes.recycle();
    }
}
