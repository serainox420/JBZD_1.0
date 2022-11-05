package com.google.android.gms.wallet.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.ReflectedParcelable;
/* loaded from: classes2.dex */
public final class WalletFragmentOptions extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<WalletFragmentOptions> CREATOR = new zzb();
    private int mTheme;
    private int zzaKF;
    private int zzbRt;
    private WalletFragmentStyle zzbSj;

    /* loaded from: classes2.dex */
    public final class Builder {
        private Builder() {
        }

        public WalletFragmentOptions build() {
            return WalletFragmentOptions.this;
        }

        public Builder setEnvironment(int i) {
            WalletFragmentOptions.this.zzbRt = i;
            return this;
        }

        public Builder setFragmentStyle(int i) {
            WalletFragmentOptions.this.zzbSj = new WalletFragmentStyle().setStyleResourceId(i);
            return this;
        }

        public Builder setFragmentStyle(WalletFragmentStyle walletFragmentStyle) {
            WalletFragmentOptions.this.zzbSj = walletFragmentStyle;
            return this;
        }

        public Builder setMode(int i) {
            WalletFragmentOptions.this.zzaKF = i;
            return this;
        }

        public Builder setTheme(int i) {
            WalletFragmentOptions.this.mTheme = i;
            return this;
        }
    }

    private WalletFragmentOptions() {
        this.zzbRt = 3;
        this.zzbSj = new WalletFragmentStyle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WalletFragmentOptions(int i, int i2, WalletFragmentStyle walletFragmentStyle, int i3) {
        this.zzbRt = i;
        this.mTheme = i2;
        this.zzbSj = walletFragmentStyle;
        this.zzaKF = i3;
    }

    public static Builder newBuilder() {
        WalletFragmentOptions walletFragmentOptions = new WalletFragmentOptions();
        walletFragmentOptions.getClass();
        return new Builder();
    }

    public static WalletFragmentOptions zzc(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WalletFragmentOptions);
        int i = obtainStyledAttributes.getInt(R.styleable.WalletFragmentOptions_appTheme, 0);
        int i2 = obtainStyledAttributes.getInt(R.styleable.WalletFragmentOptions_environment, 1);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.WalletFragmentOptions_fragmentStyle, 0);
        int i3 = obtainStyledAttributes.getInt(R.styleable.WalletFragmentOptions_fragmentMode, 1);
        obtainStyledAttributes.recycle();
        WalletFragmentOptions walletFragmentOptions = new WalletFragmentOptions();
        walletFragmentOptions.mTheme = i;
        walletFragmentOptions.zzbRt = i2;
        walletFragmentOptions.zzbSj = new WalletFragmentStyle().setStyleResourceId(resourceId);
        walletFragmentOptions.zzbSj.zzci(context);
        walletFragmentOptions.zzaKF = i3;
        return walletFragmentOptions;
    }

    public int getEnvironment() {
        return this.zzbRt;
    }

    public WalletFragmentStyle getFragmentStyle() {
        return this.zzbSj;
    }

    public int getMode() {
        return this.zzaKF;
    }

    public int getTheme() {
        return this.mTheme;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public void zzci(Context context) {
        if (this.zzbSj != null) {
            this.zzbSj.zzci(context);
        }
    }
}
