package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzalr;
import com.google.android.gms.internal.zzbxt;
/* loaded from: classes2.dex */
public class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zza> CREATOR = new zzb();
    final long zzaKA;
    final long zzaKB;
    final long zzaKC;
    private volatile String zzaKD = null;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(int i, long j, long j2, long j3) {
        boolean z = true;
        zzac.zzax(j != -1);
        zzac.zzax(j2 != -1);
        zzac.zzax(j3 == -1 ? false : z);
        this.zzaiI = i;
        this.zzaKA = j;
        this.zzaKB = j2;
        this.zzaKC = j3;
    }

    public final String encodeToString() {
        if (this.zzaKD == null) {
            String encodeToString = Base64.encodeToString(zzAn(), 10);
            String valueOf = String.valueOf("ChangeSequenceNumber:");
            String valueOf2 = String.valueOf(encodeToString);
            this.zzaKD = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        return this.zzaKD;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zza)) {
            return false;
        }
        zza zzaVar = (zza) obj;
        return zzaVar.zzaKB == this.zzaKB && zzaVar.zzaKC == this.zzaKC && zzaVar.zzaKA == this.zzaKA;
    }

    public int hashCode() {
        String valueOf = String.valueOf(String.valueOf(this.zzaKA));
        String valueOf2 = String.valueOf(String.valueOf(this.zzaKB));
        String valueOf3 = String.valueOf(String.valueOf(this.zzaKC));
        return new StringBuilder(String.valueOf(valueOf).length() + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append(valueOf).append(valueOf2).append(valueOf3).toString().hashCode();
    }

    public String toString() {
        return encodeToString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    final byte[] zzAn() {
        zzalr zzalrVar = new zzalr();
        zzalrVar.versionCode = this.zzaiI;
        zzalrVar.zzaOC = this.zzaKA;
        zzalrVar.zzaOD = this.zzaKB;
        zzalrVar.zzaOE = this.zzaKC;
        return zzbxt.zzf(zzalrVar);
    }
}
