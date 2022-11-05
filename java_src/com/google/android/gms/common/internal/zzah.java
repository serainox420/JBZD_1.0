package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
/* loaded from: classes.dex */
public class zzah extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzah> CREATOR = new zzai();
    @Deprecated
    private final Scope[] zzaEX;
    private final int zzaGG;
    private final int zzaGH;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzah(int i, int i2, int i3, Scope[] scopeArr) {
        this.zzaiI = i;
        this.zzaGG = i2;
        this.zzaGH = i3;
        this.zzaEX = scopeArr;
    }

    public zzah(int i, int i2, Scope[] scopeArr) {
        this(1, i, i2, null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzai.zza(this, parcel, i);
    }

    public int zzyk() {
        return this.zzaGG;
    }

    public int zzyl() {
        return this.zzaGH;
    }

    @Deprecated
    public Scope[] zzym() {
        return this.zzaEX;
    }
}
