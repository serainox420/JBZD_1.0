package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzams extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzams> CREATOR = new zzamt();
    final String zzWD;
    final boolean zzaQL;
    final String zzaQM;
    final String zzaQN;
    final String zzadi;
    final int zzaiI;
    final String zzakb;
    final boolean zzaxu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzams(int i, boolean z, boolean z2, String str, String str2, String str3, String str4, String str5) {
        this.zzaiI = i;
        this.zzaQL = z;
        this.zzaxu = z2;
        this.zzWD = str;
        this.zzadi = str2;
        this.zzakb = str3;
        this.zzaQM = str4;
        this.zzaQN = str5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzams) {
            return this.zzWD.equals(((zzams) obj).zzWD);
        }
        return false;
    }

    public int hashCode() {
        return this.zzWD.hashCode();
    }

    public String toString() {
        boolean z = this.zzaQL;
        boolean z2 = this.zzaxu;
        String str = this.zzWD;
        String str2 = this.zzadi;
        String str3 = this.zzakb;
        String str4 = this.zzaQM;
        String str5 = this.zzaQN;
        return new StringBuilder(String.valueOf(str).length() + 98 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length()).append("Collaborator [isMe=").append(z).append(", isAnonymous=").append(z2).append(", sessionId=").append(str).append(", userId=").append(str2).append(", displayName=").append(str3).append(", color=").append(str4).append(", photoUrl=").append(str5).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzamt.zza(this, parcel, i);
    }
}
