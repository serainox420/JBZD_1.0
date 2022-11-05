package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzk extends com.google.android.gms.common.internal.safeparcel.zza implements com.google.android.gms.wearable.zzd {
    public static final Parcelable.Creator<zzk> CREATOR = new zzl();
    private final String mAppId;
    private int mId;
    private final String zzRg;
    private final String zzaZc;
    private final String zzakb;
    private final String zzamJ;
    private final String zzaoc;
    private final String zzbTD;
    private final byte zzbTE;
    private final byte zzbTF;
    private final byte zzbTG;
    private final byte zzbTH;

    public zzk(int i, String str, String str2, String str3, String str4, String str5, String str6, byte b, byte b2, byte b3, byte b4, String str7) {
        this.mId = i;
        this.mAppId = str;
        this.zzbTD = str2;
        this.zzaoc = str3;
        this.zzamJ = str4;
        this.zzaZc = str5;
        this.zzakb = str6;
        this.zzbTE = b;
        this.zzbTF = b2;
        this.zzbTG = b3;
        this.zzbTH = b4;
        this.zzRg = str7;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzk zzkVar = (zzk) obj;
        if (this.mId != zzkVar.mId || this.zzbTE != zzkVar.zzbTE || this.zzbTF != zzkVar.zzbTF || this.zzbTG != zzkVar.zzbTG || this.zzbTH != zzkVar.zzbTH || !this.mAppId.equals(zzkVar.mAppId)) {
            return false;
        }
        if (this.zzbTD != null) {
            if (!this.zzbTD.equals(zzkVar.zzbTD)) {
                return false;
            }
        } else if (zzkVar.zzbTD != null) {
            return false;
        }
        if (!this.zzaoc.equals(zzkVar.zzaoc) || !this.zzamJ.equals(zzkVar.zzamJ) || !this.zzaZc.equals(zzkVar.zzaZc)) {
            return false;
        }
        if (this.zzakb != null) {
            if (!this.zzakb.equals(zzkVar.zzakb)) {
                return false;
            }
        } else if (zzkVar.zzakb != null) {
            return false;
        }
        if (this.zzRg != null) {
            z = this.zzRg.equals(zzkVar.zzRg);
        } else if (zzkVar.zzRg != null) {
            z = false;
        }
        return z;
    }

    public String getDisplayName() {
        return this.zzakb == null ? this.mAppId : this.zzakb;
    }

    public int getId() {
        return this.mId;
    }

    public String getPackageName() {
        return this.zzRg;
    }

    public String getTitle() {
        return this.zzamJ;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((((((((((this.zzakb != null ? this.zzakb.hashCode() : 0) + (((((((((this.zzbTD != null ? this.zzbTD.hashCode() : 0) + ((((this.mId + 31) * 31) + this.mAppId.hashCode()) * 31)) * 31) + this.zzaoc.hashCode()) * 31) + this.zzamJ.hashCode()) * 31) + this.zzaZc.hashCode()) * 31)) * 31) + this.zzbTE) * 31) + this.zzbTF) * 31) + this.zzbTG) * 31) + this.zzbTH) * 31;
        if (this.zzRg != null) {
            i = this.zzRg.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        int i = this.mId;
        String str = this.mAppId;
        String str2 = this.zzbTD;
        String str3 = this.zzaoc;
        String str4 = this.zzamJ;
        String str5 = this.zzaZc;
        String str6 = this.zzakb;
        byte b = this.zzbTE;
        byte b2 = this.zzbTF;
        byte b3 = this.zzbTG;
        byte b4 = this.zzbTH;
        String str7 = this.zzRg;
        return new StringBuilder(String.valueOf(str).length() + 211 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length()).append("AncsNotificationParcelable{, id=").append(i).append(", appId='").append(str).append("'").append(", dateTime='").append(str2).append("'").append(", notificationText='").append(str3).append("'").append(", title='").append(str4).append("'").append(", subtitle='").append(str5).append("'").append(", displayName='").append(str6).append("'").append(", eventId=").append((int) b).append(", eventFlags=").append((int) b2).append(", categoryId=").append((int) b3).append(", categoryCount=").append((int) b4).append(", packageName='").append(str7).append("'").append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }

    public String zzEv() {
        return this.zzaZc;
    }

    public String zzUm() {
        return this.zzbTD;
    }

    public String zzUn() {
        return this.zzaoc;
    }

    public byte zzUo() {
        return this.zzbTE;
    }

    public byte zzUp() {
        return this.zzbTF;
    }

    public byte zzUq() {
        return this.zzbTG;
    }

    public byte zzUr() {
        return this.zzbTH;
    }

    public String zzke() {
        return this.mAppId;
    }
}
