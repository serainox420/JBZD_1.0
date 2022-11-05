package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzg extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzg> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    private final String f3528a;
    private final String b;

    public zzg(String str, String str2) {
        this.f3528a = str;
        this.b = str2;
    }

    public String a() {
        return this.f3528a;
    }

    public String b() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}
