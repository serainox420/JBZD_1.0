package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
@Deprecated
/* loaded from: classes.dex */
public final class NotifyTransactionStatusRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<NotifyTransactionStatusRequest> CREATOR = new zzp();
    int status;
    String zzbPS;
    String zzbRg;

    /* loaded from: classes2.dex */
    public final class Builder {
        private Builder() {
        }

        public NotifyTransactionStatusRequest build() {
            boolean z = true;
            zzac.zzb(!TextUtils.isEmpty(NotifyTransactionStatusRequest.this.zzbPS), "googleTransactionId is required");
            if (NotifyTransactionStatusRequest.this.status < 1 || NotifyTransactionStatusRequest.this.status > 8) {
                z = false;
            }
            zzac.zzb(z, "status is an unrecognized value");
            return NotifyTransactionStatusRequest.this;
        }

        public Builder setDetailedReason(String str) {
            NotifyTransactionStatusRequest.this.zzbRg = str;
            return this;
        }

        public Builder setGoogleTransactionId(String str) {
            NotifyTransactionStatusRequest.this.zzbPS = str;
            return this;
        }

        public Builder setStatus(int i) {
            NotifyTransactionStatusRequest.this.status = i;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public interface Status {
        public static final int SUCCESS = 1;

        /* loaded from: classes2.dex */
        public interface Error {
            public static final int AVS_DECLINE = 7;
            public static final int BAD_CARD = 4;
            public static final int BAD_CVC = 3;
            public static final int DECLINED = 5;
            public static final int FRAUD_DECLINE = 8;
            public static final int OTHER = 6;
            public static final int UNKNOWN = 2;
        }
    }

    NotifyTransactionStatusRequest() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotifyTransactionStatusRequest(String str, int i, String str2) {
        this.zzbPS = str;
        this.status = i;
        this.zzbRg = str2;
    }

    public static Builder newBuilder() {
        NotifyTransactionStatusRequest notifyTransactionStatusRequest = new NotifyTransactionStatusRequest();
        notifyTransactionStatusRequest.getClass();
        return new Builder();
    }

    public String getDetailedReason() {
        return this.zzbRg;
    }

    public String getGoogleTransactionId() {
        return this.zzbPS;
    }

    public int getStatus() {
        return this.status;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzp.zza(this, parcel, i);
    }
}
