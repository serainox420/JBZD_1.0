package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public abstract class zzc {
    protected final DataHolder zzaBi;
    protected int zzaDL;
    private int zzaDM;

    public zzc(DataHolder dataHolder, int i) {
        this.zzaBi = (DataHolder) zzac.zzw(dataHolder);
        zzcG(i);
    }

    public boolean equals(Object obj) {
        if (obj instanceof zzc) {
            zzc zzcVar = (zzc) obj;
            return zzaa.equal(Integer.valueOf(zzcVar.zzaDL), Integer.valueOf(this.zzaDL)) && zzaa.equal(Integer.valueOf(zzcVar.zzaDM), Integer.valueOf(this.zzaDM)) && zzcVar.zzaBi == this.zzaBi;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getBoolean(String str) {
        return this.zzaBi.zze(str, this.zzaDL, this.zzaDM);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getByteArray(String str) {
        return this.zzaBi.zzg(str, this.zzaDL, this.zzaDM);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float getFloat(String str) {
        return this.zzaBi.zzf(str, this.zzaDL, this.zzaDM);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getInteger(String str) {
        return this.zzaBi.zzc(str, this.zzaDL, this.zzaDM);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getLong(String str) {
        return this.zzaBi.zzb(str, this.zzaDL, this.zzaDM);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getString(String str) {
        return this.zzaBi.zzd(str, this.zzaDL, this.zzaDM);
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzaDL), Integer.valueOf(this.zzaDM), this.zzaBi);
    }

    public boolean isDataValid() {
        return !this.zzaBi.isClosed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(String str, CharArrayBuffer charArrayBuffer) {
        this.zzaBi.zza(str, this.zzaDL, this.zzaDM, charArrayBuffer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzcG(int i) {
        zzac.zzaw(i >= 0 && i < this.zzaBi.getCount());
        this.zzaDL = i;
        this.zzaDM = this.zzaBi.zzcI(this.zzaDL);
    }

    public boolean zzdf(String str) {
        return this.zzaBi.zzdf(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Uri zzdg(String str) {
        return this.zzaBi.zzh(str, this.zzaDL, this.zzaDM);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzdh(String str) {
        return this.zzaBi.zzi(str, this.zzaDL, this.zzaDM);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int zzxi() {
        return this.zzaDL;
    }
}
