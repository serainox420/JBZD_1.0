package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzag;
/* loaded from: classes2.dex */
public final class zzaqk extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaqk> CREATOR = new zzaql();
    public final int versionCode;
    private zzag.zza zzbgk = null;
    private byte[] zzbgl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqk(int i, byte[] bArr) {
        this.versionCode = i;
        this.zzbgl = bArr;
        zzzT();
    }

    private void zzzR() {
        if (!zzzS()) {
            try {
                this.zzbgk = zzag.zza.zzd(this.zzbgl);
                this.zzbgl = null;
            } catch (zzbxs e) {
                throw new IllegalStateException(e);
            }
        }
        zzzT();
    }

    private boolean zzzS() {
        return this.zzbgk != null;
    }

    private void zzzT() {
        if (this.zzbgk != null || this.zzbgl == null) {
            if (this.zzbgk != null && this.zzbgl == null) {
                return;
            }
            if (this.zzbgk != null && this.zzbgl != null) {
                throw new IllegalStateException("Invalid internal representation - full");
            }
            if (this.zzbgk != null || this.zzbgl != null) {
                throw new IllegalStateException("Impossible");
            }
            throw new IllegalStateException("Invalid internal representation - empty");
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaql.zza(this, parcel, i);
    }

    public byte[] zzGM() {
        return this.zzbgl != null ? this.zzbgl : zzbxt.zzf(this.zzbgk);
    }

    public zzag.zza zzGN() {
        zzzR();
        return this.zzbgk;
    }
}
