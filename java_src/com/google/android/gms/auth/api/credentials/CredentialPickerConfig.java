package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public final class CredentialPickerConfig extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new zzb();
    private final boolean mShowCancelButton;
    final int zzaiI;
    private final boolean zzajn;
    @Deprecated
    private final boolean zzajo;
    private final int zzajp;

    /* loaded from: classes.dex */
    public static class Builder {
        private boolean zzajn = false;
        private boolean mShowCancelButton = true;
        private int zzajq = 1;

        public CredentialPickerConfig build() {
            return new CredentialPickerConfig(this);
        }

        @Deprecated
        public Builder setForNewAccount(boolean z) {
            this.zzajq = z ? 3 : 1;
            return this;
        }

        public Builder setPrompt(int i) {
            this.zzajq = i;
            return this;
        }

        public Builder setShowAddAccountButton(boolean z) {
            this.zzajn = z;
            return this;
        }

        public Builder setShowCancelButton(boolean z) {
            this.mShowCancelButton = z;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Prompt {
        public static final int CONTINUE = 1;
        public static final int SIGN_IN = 2;
        public static final int SIGN_UP = 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CredentialPickerConfig(int i, boolean z, boolean z2, boolean z3, int i2) {
        int i3 = 3;
        boolean z4 = true;
        this.zzaiI = i;
        this.zzajn = z;
        this.mShowCancelButton = z2;
        if (i < 2) {
            this.zzajo = z3;
            this.zzajp = !z3 ? 1 : i3;
            return;
        }
        this.zzajo = i2 != 3 ? false : z4;
        this.zzajp = i2;
    }

    private CredentialPickerConfig(Builder builder) {
        this(2, builder.zzajn, builder.mShowCancelButton, false, builder.zzajq);
    }

    @Deprecated
    public boolean isForNewAccount() {
        return this.zzajp == 3;
    }

    public boolean shouldShowAddAccountButton() {
        return this.zzajn;
    }

    public boolean shouldShowCancelButton() {
        return this.mShowCancelButton;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzqW() {
        return this.zzajp;
    }
}
