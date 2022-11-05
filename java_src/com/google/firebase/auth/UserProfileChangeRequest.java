package com.google.firebase.auth;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
/* loaded from: classes2.dex */
public class UserProfileChangeRequest extends zza {
    public static final Parcelable.Creator<UserProfileChangeRequest> CREATOR = new j();

    /* renamed from: a  reason: collision with root package name */
    public final int f3538a;
    private String b;
    private String c;
    private boolean d;
    private boolean e;
    private Uri f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserProfileChangeRequest(int i, String str, String str2, boolean z, boolean z2) {
        this.f3538a = i;
        this.b = str;
        this.c = str2;
        this.d = z;
        this.e = z2;
        this.f = TextUtils.isEmpty(str2) ? null : Uri.parse(str2);
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }

    public boolean d() {
        return this.e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j.a(this, parcel, i);
    }
}
