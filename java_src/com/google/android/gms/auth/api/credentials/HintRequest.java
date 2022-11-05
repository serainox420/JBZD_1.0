package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public final class HintRequest extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<HintRequest> CREATOR = new zzd();
    final int zzaiI;
    private final boolean zzajA;
    private final String[] zzajs;
    private final boolean zzajv;
    private final String zzajw;
    private final String zzajx;
    private final CredentialPickerConfig zzajy;
    private final boolean zzajz;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private boolean zzajA;
        private String[] zzajs;
        private String zzajw;
        private String zzajx;
        private boolean zzajz;
        private CredentialPickerConfig zzajy = new CredentialPickerConfig.Builder().build();
        private boolean zzajv = false;

        public HintRequest build() {
            if (this.zzajs == null) {
                this.zzajs = new String[0];
            }
            if (this.zzajz || this.zzajA || this.zzajs.length != 0) {
                return new HintRequest(this);
            }
            throw new IllegalStateException("At least one authentication method must be specified");
        }

        public Builder setAccountTypes(String... strArr) {
            if (strArr == null) {
                strArr = new String[0];
            }
            this.zzajs = strArr;
            return this;
        }

        public Builder setEmailAddressIdentifierSupported(boolean z) {
            this.zzajz = z;
            return this;
        }

        public Builder setHintPickerConfig(CredentialPickerConfig credentialPickerConfig) {
            this.zzajy = (CredentialPickerConfig) zzac.zzw(credentialPickerConfig);
            return this;
        }

        public Builder setIdTokenNonce(String str) {
            this.zzajx = str;
            return this;
        }

        public Builder setIdTokenRequested(boolean z) {
            this.zzajv = z;
            return this;
        }

        public Builder setPhoneNumberIdentifierSupported(boolean z) {
            this.zzajA = z;
            return this;
        }

        public Builder setServerClientId(String str) {
            this.zzajw = str;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HintRequest(int i, CredentialPickerConfig credentialPickerConfig, boolean z, boolean z2, String[] strArr, boolean z3, String str, String str2) {
        this.zzaiI = i;
        this.zzajy = (CredentialPickerConfig) zzac.zzw(credentialPickerConfig);
        this.zzajz = z;
        this.zzajA = z2;
        this.zzajs = (String[]) zzac.zzw(strArr);
        if (this.zzaiI < 2) {
            this.zzajv = true;
            this.zzajw = null;
            this.zzajx = null;
            return;
        }
        this.zzajv = z3;
        this.zzajw = str;
        this.zzajx = str2;
    }

    private HintRequest(Builder builder) {
        this(2, builder.zzajy, builder.zzajz, builder.zzajA, builder.zzajs, builder.zzajv, builder.zzajw, builder.zzajx);
    }

    public String[] getAccountTypes() {
        return this.zzajs;
    }

    public CredentialPickerConfig getHintPickerConfig() {
        return this.zzajy;
    }

    public String getIdTokenNonce() {
        return this.zzajx;
    }

    public String getServerClientId() {
        return this.zzajw;
    }

    public boolean isEmailAddressIdentifierSupported() {
        return this.zzajz;
    }

    public boolean isIdTokenRequested() {
        return this.zzajv;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    public boolean zzqX() {
        return this.zzajA;
    }
}
