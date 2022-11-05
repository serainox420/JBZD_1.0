package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzboi;
import com.google.android.gms.internal.zzbom;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zza> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f3569a;
    final List<String> b;
    final List<String> c;

    public zza(int i, List<String> list, List<String> list2) {
        this.f3569a = i;
        this.b = list;
        this.c = list2;
    }

    public static zzboi a(zza zzaVar) {
        ArrayList arrayList = new ArrayList(zzaVar.b.size());
        for (String str : zzaVar.b) {
            arrayList.add(zzbom.zziM(str));
        }
        return new zzboi(arrayList, zzaVar.c);
    }

    public static zza a(zzboi zzboiVar) {
        List<List<String>> zzXp = zzboiVar.zzXp();
        ArrayList arrayList = new ArrayList(zzXp.size());
        for (List<String> list : zzXp) {
            arrayList.add(zzbom.zzW(list));
        }
        return new zza(1, arrayList, zzboiVar.zzXq());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}
