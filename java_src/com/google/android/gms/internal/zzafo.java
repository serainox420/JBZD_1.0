package com.google.android.gms.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.text.TextUtils;
import com.google.android.gms.awareness.AwarenessOptions;
/* loaded from: classes2.dex */
public class zzafo extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzafo> CREATOR = new zzafp();
    public final String moduleId;
    public final String packageName;
    public final int pid;
    public final int uid;
    public final String zzaJT;
    public final int zzaJU;
    public final int zzaJV;
    public final String zzaJW;
    public final String zzaJX;
    public final int zzaJY;
    private zzcc zzaJZ;

    public zzafo(String str, String str2, int i, String str3, int i2, int i3, String str4, String str5, int i4, int i5) {
        this.zzaJT = str;
        this.packageName = str2;
        this.uid = i;
        this.moduleId = str3;
        this.zzaJU = i2;
        this.zzaJV = i3;
        this.zzaJW = str4;
        this.zzaJX = str5;
        this.zzaJY = i4;
        this.pid = i5;
    }

    public static zzafo zzG(Context context, String str) {
        return new zzafo(str, context.getPackageName(), Process.myUid(), context.getPackageName(), com.google.android.gms.common.util.zzd.zzC(context, context.getPackageName()), 3, null, null, -1, Process.myPid());
    }

    public static zzafo zza(Context context, String str, AwarenessOptions awarenessOptions) {
        return new zzafo(awarenessOptions.getAccount() != null ? awarenessOptions.getAccount().name : str, context.getPackageName(), Process.myUid(), awarenessOptions.zzrE(), com.google.android.gms.common.util.zzd.zzC(context, context.getPackageName()), awarenessOptions.zzrF(), awarenessOptions.zzrG(), awarenessOptions.zzrH(), awarenessOptions.zzrI(), Process.myPid());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzafo)) {
            return false;
        }
        zzafo zzafoVar = (zzafo) obj;
        return this.uid == zzafoVar.uid && this.zzaJU == zzafoVar.zzaJU && this.zzaJV == zzafoVar.zzaJV && this.zzaJY == zzafoVar.zzaJY && TextUtils.equals(this.zzaJT, zzafoVar.zzaJT) && TextUtils.equals(this.packageName, zzafoVar.packageName) && TextUtils.equals(this.moduleId, zzafoVar.moduleId) && TextUtils.equals(this.zzaJW, zzafoVar.zzaJW) && TextUtils.equals(this.zzaJX, zzafoVar.zzaJX);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaJT, this.packageName, Integer.valueOf(this.uid), this.moduleId, Integer.valueOf(this.zzaJU), Integer.valueOf(this.zzaJV), this.zzaJW, this.zzaJX, Integer.valueOf(this.zzaJY));
    }

    public byte[] toByteArray() {
        return com.google.android.gms.common.internal.safeparcel.zzd.zza(this);
    }

    public String toString() {
        String valueOf = String.valueOf(zzAj());
        String str = this.packageName;
        int i = this.uid;
        String str2 = this.moduleId;
        int i2 = this.zzaJU;
        String valueOf2 = String.valueOf(zzAk());
        String str3 = this.zzaJW;
        String str4 = this.zzaJX;
        return new StringBuilder(String.valueOf(valueOf).length() + 68 + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(valueOf2).length() + String.valueOf(str3).length() + String.valueOf(str4).length()).append("(accnt=").append(valueOf).append(", ").append(str).append("(").append(i).append("):").append(str2).append(", vrsn=").append(i2).append(", ").append(valueOf2).append(", 3pPkg = ").append(str3).append(" ,  3pMdlId = ").append(str4).append(")").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzafp.zza(this, parcel, i);
    }

    public zzcc zzAj() {
        if (this.zzaJT == null) {
            return null;
        }
        if (this.zzaJZ == null) {
            this.zzaJZ = new zzcc(this.zzaJT);
        }
        return this.zzaJZ;
    }

    public String zzAk() {
        return Integer.toString(this.zzaJV);
    }
}
