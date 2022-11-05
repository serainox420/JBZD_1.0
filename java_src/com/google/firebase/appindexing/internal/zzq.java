package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzq> CREATOR = new g();

    /* renamed from: a  reason: collision with root package name */
    private final String f3530a;
    private final String[] b;
    private final String[] c;

    public zzq(String str, String[] strArr, String[] strArr2) {
        this.f3530a = str;
        this.b = strArr;
        this.c = strArr2;
    }

    public String a() {
        return this.f3530a;
    }

    public String[] b() {
        return this.b;
    }

    public String[] c() {
        return this.c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        g.a(this, parcel, i);
    }
}
