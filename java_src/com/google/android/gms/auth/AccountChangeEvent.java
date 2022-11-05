package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public class AccountChangeEvent extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new zza();
    final int mVersion;
    final long zzait;
    final String zzaiu;
    final int zzaiv;
    final int zzaiw;
    final String zzaix;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountChangeEvent(int i, long j, String str, int i2, int i3, String str2) {
        this.mVersion = i;
        this.zzait = j;
        this.zzaiu = (String) zzac.zzw(str);
        this.zzaiv = i2;
        this.zzaiw = i3;
        this.zzaix = str2;
    }

    public AccountChangeEvent(long j, String str, int i, int i2, String str2) {
        this.mVersion = 1;
        this.zzait = j;
        this.zzaiu = (String) zzac.zzw(str);
        this.zzaiv = i;
        this.zzaiw = i2;
        this.zzaix = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AccountChangeEvent)) {
            return false;
        }
        AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
        return this.mVersion == accountChangeEvent.mVersion && this.zzait == accountChangeEvent.zzait && zzaa.equal(this.zzaiu, accountChangeEvent.zzaiu) && this.zzaiv == accountChangeEvent.zzaiv && this.zzaiw == accountChangeEvent.zzaiw && zzaa.equal(this.zzaix, accountChangeEvent.zzaix);
    }

    public String getAccountName() {
        return this.zzaiu;
    }

    public String getChangeData() {
        return this.zzaix;
    }

    public int getChangeType() {
        return this.zzaiv;
    }

    public int getEventIndex() {
        return this.zzaiw;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.mVersion), Long.valueOf(this.zzait), this.zzaiu, Integer.valueOf(this.zzaiv), Integer.valueOf(this.zzaiw), this.zzaix);
    }

    public String toString() {
        String str = "UNKNOWN";
        switch (this.zzaiv) {
            case 1:
                str = "ADDED";
                break;
            case 2:
                str = "REMOVED";
                break;
            case 3:
                str = "RENAMED_FROM";
                break;
            case 4:
                str = "RENAMED_TO";
                break;
        }
        String str2 = this.zzaiu;
        String str3 = this.zzaix;
        return new StringBuilder(String.valueOf(str2).length() + 91 + String.valueOf(str).length() + String.valueOf(str3).length()).append("AccountChangeEvent {accountName = ").append(str2).append(", changeType = ").append(str).append(", changeData = ").append(str3).append(", eventIndex = ").append(this.zzaiw).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
