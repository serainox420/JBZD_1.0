package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public class zzi extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<zzi> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    private final Status f3529a;
    private final Thing b;

    public zzi(Status status, Thing thing) {
        this.f3529a = status;
        this.b = thing;
    }

    public Thing a() {
        return this.b;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.f3529a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        c.a(this, parcel, i);
    }
}
