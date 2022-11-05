package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzbor;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzn extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzn> CREATOR = new k();

    /* renamed from: a  reason: collision with root package name */
    final int f3573a;
    final List<String> b;
    final List<String> c;

    public zzn(int i, List<String> list, List<String> list2) {
        this.f3573a = i;
        this.b = list;
        this.c = list2;
    }

    public static zzbor a(zzn zznVar, Object obj) {
        return new zzbor(zznVar.b, zznVar.c, obj);
    }

    public static zzn a(zzbor zzborVar) {
        return new zzn(1, zzborVar.zzXW(), zzborVar.zzXX());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        k.a(this, parcel, i);
    }
}
