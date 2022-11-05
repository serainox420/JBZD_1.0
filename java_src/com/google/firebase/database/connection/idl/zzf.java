package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzbon;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzf> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    final int f3572a;
    final String b;
    final String c;
    final boolean d;

    public zzf(int i, String str, String str2, boolean z) {
        this.f3572a = i;
        this.b = str;
        this.c = str2;
        this.d = z;
    }

    public static zzbon a(zzf zzfVar) {
        return new zzbon(zzfVar.b, zzfVar.c, zzfVar.d);
    }

    public static zzf a(zzbon zzbonVar) {
        return new zzf(1, zzbonVar.getHost(), zzbonVar.getNamespace(), zzbonVar.isSecure());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        d.a(this, parcel, i);
    }
}
