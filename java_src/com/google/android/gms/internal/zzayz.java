package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class zzayz extends com.google.android.gms.common.internal.safeparcel.zza implements Comparable<zzayz> {
    public static final Parcelable.Creator<zzayz> CREATOR = new zzaza();
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    public static final zza zzbBG = new zza();
    public final String name;
    final String zzaGV;
    final long zzbBC;
    final byte[] zzbBD;
    public final int zzbBE;
    public final int zzbBF;
    final boolean zzbhn;
    final double zzbhp;

    /* loaded from: classes2.dex */
    public static class zza implements Comparator<zzayz> {
        @Override // java.util.Comparator
        /* renamed from: zza */
        public int compare(zzayz zzayzVar, zzayz zzayzVar2) {
            return zzayzVar.zzbBF == zzayzVar2.zzbBF ? zzayzVar.name.compareTo(zzayzVar2.name) : zzayzVar.zzbBF - zzayzVar2.zzbBF;
        }
    }

    public zzayz(String str, long j, boolean z, double d, String str2, byte[] bArr, int i, int i2) {
        this.name = str;
        this.zzbBC = j;
        this.zzbhn = z;
        this.zzbhp = d;
        this.zzaGV = str2;
        this.zzbBD = bArr;
        this.zzbBE = i;
        this.zzbBF = i2;
    }

    private static int compare(byte b, byte b2) {
        return b - b2;
    }

    private static int compare(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    private static int compare(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    private static int compare(String str, String str2) {
        if (str == str2) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (str2 != null) {
            return str.compareTo(str2);
        }
        return 1;
    }

    private static int compare(boolean z, boolean z2) {
        if (z == z2) {
            return 0;
        }
        return z ? 1 : -1;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzayz)) {
            return false;
        }
        zzayz zzayzVar = (zzayz) obj;
        if (!com.google.android.gms.common.internal.zzaa.equal(this.name, zzayzVar.name) || this.zzbBE != zzayzVar.zzbBE || this.zzbBF != zzayzVar.zzbBF) {
            return false;
        }
        switch (this.zzbBE) {
            case 1:
                return this.zzbBC == zzayzVar.zzbBC;
            case 2:
                return this.zzbhn == zzayzVar.zzbhn;
            case 3:
                return this.zzbhp == zzayzVar.zzbhp;
            case 4:
                return com.google.android.gms.common.internal.zzaa.equal(this.zzaGV, zzayzVar.zzaGV);
            case 5:
                return Arrays.equals(this.zzbBD, zzayzVar.zzbBD);
            default:
                throw new AssertionError(new StringBuilder(31).append("Invalid enum value: ").append(this.zzbBE).toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        zza(sb);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaza.zza(this, parcel, i);
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public int compareTo(zzayz zzayzVar) {
        int compareTo = this.name.compareTo(zzayzVar.name);
        if (compareTo != 0) {
            return compareTo;
        }
        int compare = compare(this.zzbBE, zzayzVar.zzbBE);
        if (compare != 0) {
            return compare;
        }
        switch (this.zzbBE) {
            case 1:
                return compare(this.zzbBC, zzayzVar.zzbBC);
            case 2:
                return compare(this.zzbhn, zzayzVar.zzbhn);
            case 3:
                return Double.compare(this.zzbhp, zzayzVar.zzbhp);
            case 4:
                return compare(this.zzaGV, zzayzVar.zzaGV);
            case 5:
                if (this.zzbBD == zzayzVar.zzbBD) {
                    return 0;
                }
                if (this.zzbBD == null) {
                    return -1;
                }
                if (zzayzVar.zzbBD == null) {
                    return 1;
                }
                for (int i = 0; i < Math.min(this.zzbBD.length, zzayzVar.zzbBD.length); i++) {
                    int compare2 = compare(this.zzbBD[i], zzayzVar.zzbBD[i]);
                    if (compare2 != 0) {
                        return compare2;
                    }
                }
                return compare(this.zzbBD.length, zzayzVar.zzbBD.length);
            default:
                throw new AssertionError(new StringBuilder(31).append("Invalid enum value: ").append(this.zzbBE).toString());
        }
    }

    public String zza(StringBuilder sb) {
        sb.append("Flag(");
        sb.append(this.name);
        sb.append(", ");
        switch (this.zzbBE) {
            case 1:
                sb.append(this.zzbBC);
                break;
            case 2:
                sb.append(this.zzbhn);
                break;
            case 3:
                sb.append(this.zzbhp);
                break;
            case 4:
                sb.append("'");
                sb.append(this.zzaGV);
                sb.append("'");
                break;
            case 5:
                if (this.zzbBD != null) {
                    sb.append("'");
                    sb.append(new String(this.zzbBD, UTF_8));
                    sb.append("'");
                    break;
                } else {
                    sb.append("null");
                    break;
                }
            default:
                String str = this.name;
                throw new AssertionError(new StringBuilder(String.valueOf(str).length() + 27).append("Invalid type: ").append(str).append(", ").append(this.zzbBE).toString());
        }
        sb.append(", ");
        sb.append(this.zzbBE);
        sb.append(", ");
        sb.append(this.zzbBF);
        sb.append(")");
        return sb.toString();
    }
}
