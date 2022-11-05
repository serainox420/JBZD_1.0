package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes2.dex */
public class zztp extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zztp> CREATOR = new zztq();
    public final Account account;
    final zztt[] zzahb;
    public final String zzahc;
    public final boolean zzahd;

    /* loaded from: classes2.dex */
    public static class zza {
        private List<zztt> zzahe;
        private String zzahf;
        private boolean zzahg;
        private Account zzahh;

        public zza zzY(boolean z) {
            this.zzahg = z;
            return this;
        }

        public zza zza(zztt zzttVar) {
            if (this.zzahe == null && zzttVar != null) {
                this.zzahe = new ArrayList();
            }
            if (zzttVar != null) {
                this.zzahe.add(zzttVar);
            }
            return this;
        }

        public zza zzb(Account account) {
            this.zzahh = account;
            return this;
        }

        public zza zzcl(String str) {
            this.zzahf = str;
            return this;
        }

        public zztp zzqE() {
            return new zztp(this.zzahf, this.zzahg, this.zzahh, this.zzahe != null ? (zztt[]) this.zzahe.toArray(new zztt[this.zzahe.size()]) : null);
        }
    }

    zztp(String str, boolean z, Account account, zztt... zzttVarArr) {
        this(zzttVarArr, str, z, account);
        if (zzttVarArr != null) {
            BitSet bitSet = new BitSet(zzua.zzqG());
            for (zztt zzttVar : zzttVarArr) {
                int i = zzttVar.zzaho;
                if (i != -1) {
                    if (bitSet.get(i)) {
                        String valueOf = String.valueOf(zzua.zzaP(i));
                        throw new IllegalArgumentException(valueOf.length() != 0 ? "Duplicate global search section type ".concat(valueOf) : new String("Duplicate global search section type "));
                    }
                    bitSet.set(i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztp(zztt[] zzttVarArr, String str, boolean z, Account account) {
        this.zzahb = zzttVarArr;
        this.zzahc = str;
        this.zzahd = z;
        this.account = account;
    }

    public boolean equals(Object obj) {
        if (obj instanceof zztp) {
            zztp zztpVar = (zztp) obj;
            return com.google.android.gms.common.internal.zzaa.equal(this.zzahc, zztpVar.zzahc) && com.google.android.gms.common.internal.zzaa.equal(Boolean.valueOf(this.zzahd), Boolean.valueOf(zztpVar.zzahd)) && com.google.android.gms.common.internal.zzaa.equal(this.account, zztpVar.account) && Arrays.equals(zzqD(), zztpVar.zzqD());
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzahc, Boolean.valueOf(this.zzahd), this.account, Integer.valueOf(Arrays.hashCode(this.zzahb)));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zztq.zza(this, parcel, i);
    }

    public zztt[] zzqD() {
        return this.zzahb;
    }
}
