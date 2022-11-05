package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
/* loaded from: classes2.dex */
public class zzaec extends com.google.android.gms.common.internal.safeparcel.zza {
    private zzbwp zzaJc = null;
    private byte[] zzaJd;
    private static zzci zzaJa = new zzci() { // from class: com.google.android.gms.internal.zzaec.1
    };
    public static final int[] zzaJb = {0, 1};
    public static final Parcelable.Creator<zzaec> CREATOR = new zzaee();

    public zzaec(byte[] bArr) {
        this.zzaJd = (byte[]) com.google.android.gms.common.internal.zzac.zzw(bArr);
        zzzT();
    }

    private void zzzR() {
        if (!zzzS()) {
            try {
                this.zzaJc = zzbwp.zzac(this.zzaJd);
                this.zzaJd = null;
            } catch (zzbxs e) {
                Log.e("ContextData", "Could not deserialize context bytes.", e);
                throw new IllegalStateException(e);
            }
        }
        zzzT();
    }

    private void zzzT() {
        if (this.zzaJc != null || this.zzaJd == null) {
            if (this.zzaJc != null && this.zzaJd == null) {
                return;
            }
            if (this.zzaJc != null && this.zzaJd != null) {
                throw new IllegalStateException("Invalid internal representation - full");
            }
            if (this.zzaJc != null || this.zzaJd != null) {
                throw new IllegalStateException("Impossible");
            }
            throw new IllegalStateException("Invalid internal representation - empty");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaec)) {
            return false;
        }
        zzaec zzaecVar = (zzaec) obj;
        zzzR();
        zzaecVar.zzzR();
        return getId().equals(zzaecVar.getId()) && this.zzaJc.zzctg.version == zzaecVar.zzaJc.zzctg.version;
    }

    public String getId() {
        zzzR();
        return this.zzaJc.zzctf;
    }

    public int hashCode() {
        zzzR();
        return com.google.android.gms.common.internal.zzaa.hashCode(getId(), Integer.valueOf(this.zzaJc.zzctg.version));
    }

    public String toString() {
        zzzR();
        String valueOf = String.valueOf(this.zzaJc.toString());
        String valueOf2 = String.valueOf((Object) null);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaee.zza(this, parcel, i);
    }

    boolean zzzS() {
        return this.zzaJc != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] zzzU() {
        return this.zzaJd != null ? this.zzaJd : zzbxt.zzf(this.zzaJc);
    }
}
