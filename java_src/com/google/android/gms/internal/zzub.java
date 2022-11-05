package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes2.dex */
public class zzub extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzub> CREATOR = new zzuc();
    public final String name;
    public final int weight;
    public final String zzahB;
    public final boolean zzahC;
    public final boolean zzahD;
    public final String zzahE;
    public final zztv[] zzahF;
    final int[] zzahG;
    public final String zzahH;

    /* loaded from: classes2.dex */
    public static final class zza {
        private final String mName;
        private String zzahI;
        private boolean zzahJ;
        private boolean zzahL;
        private BitSet zzahN;
        private String zzahO;
        private int zzahK = 1;
        private final List<zztv> zzahM = new ArrayList();

        public zza(String str) {
            this.mName = str;
        }

        public zza zzZ(boolean z) {
            this.zzahJ = z;
            return this;
        }

        public zza zzaQ(int i) {
            if (this.zzahN == null) {
                this.zzahN = new BitSet();
            }
            this.zzahN.set(i);
            return this;
        }

        public zza zzaa(boolean z) {
            this.zzahL = z;
            return this;
        }

        public zza zzcn(String str) {
            this.zzahI = str;
            return this;
        }

        public zza zzco(String str) {
            this.zzahO = str;
            return this;
        }

        public zzub zzqH() {
            int[] iArr;
            int i = 0;
            if (this.zzahN != null) {
                iArr = new int[this.zzahN.cardinality()];
                int nextSetBit = this.zzahN.nextSetBit(0);
                while (nextSetBit >= 0) {
                    iArr[i] = nextSetBit;
                    nextSetBit = this.zzahN.nextSetBit(nextSetBit + 1);
                    i++;
                }
            } else {
                iArr = null;
            }
            return new zzub(this.mName, this.zzahI, this.zzahJ, this.zzahK, this.zzahL, null, (zztv[]) this.zzahM.toArray(new zztv[this.zzahM.size()]), iArr, this.zzahO);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzub(String str, String str2, boolean z, int i, boolean z2, String str3, zztv[] zztvVarArr, int[] iArr, String str4) {
        this.name = str;
        this.zzahB = str2;
        this.zzahC = z;
        this.weight = i;
        this.zzahD = z2;
        this.zzahE = str3;
        this.zzahF = zztvVarArr;
        this.zzahG = iArr;
        this.zzahH = str4;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzuc.zza(this, parcel, i);
    }
}
