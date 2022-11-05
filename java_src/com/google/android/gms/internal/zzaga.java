package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzaga extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaga> CREATOR = new zzagb();
    public final int limit;
    public final int zzaKt;
    public final int[] zzaKu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaga(int i, int i2, int[] iArr) {
        this.zzaKt = i;
        this.limit = i2;
        this.zzaKu = iArr;
    }

    public boolean equals(Object obj) {
        int[] iArr;
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzaga)) {
            return false;
        }
        zzaga zzagaVar = (zzaga) obj;
        if (zzagaVar.limit == this.limit && zzagaVar.zzaKt == this.zzaKt && zzAl() == zzagaVar.zzAl()) {
            if (!zzAl()) {
                return true;
            }
            if (this.zzaKu.length != zzagaVar.zzaKu.length) {
                return false;
            }
            for (int i : zzagaVar.zzaKu) {
                int[] iArr2 = this.zzaKu;
                int length = iArr2.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = false;
                        break;
                    } else if (iArr2[i2] == i) {
                        z = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (!z) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i;
        if (this.zzaKu != null) {
            int[] iArr = this.zzaKu;
            int length = iArr.length;
            int i2 = 0;
            i = 0;
            while (i2 < length) {
                int i3 = (iArr[i2] * 13) + i;
                i2++;
                i = i3;
            }
        } else {
            i = 0;
        }
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(i), Integer.valueOf(this.zzaKt), Integer.valueOf(this.limit));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzagb.zza(this, parcel, i);
    }

    public boolean zzAl() {
        return this.zzaKu != null;
    }
}
