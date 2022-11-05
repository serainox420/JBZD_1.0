package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import java.util.List;
/* loaded from: classes2.dex */
public class zzban extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzban> CREATOR = new zzbao();
    final int zzaiI;
    final boolean zzbEp;
    final List<Scope> zzbEq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzban(int i, boolean z, List<Scope> list) {
        this.zzaiI = i;
        this.zzbEp = z;
        this.zzbEq = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbao.zza(this, parcel, i);
    }
}
