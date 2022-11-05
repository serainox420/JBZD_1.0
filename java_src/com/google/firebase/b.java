package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzam;
import com.google.android.gms.common.util.zzw;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f3546a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;

    private b(String str, String str2, String str3, String str4, String str5, String str6) {
        zzac.zza(!zzw.zzdz(str), "ApplicationId must be set.");
        this.b = str;
        this.f3546a = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
    }

    public static b a(Context context) {
        zzam zzamVar = new zzam(context);
        String string = zzamVar.getString("google_app_id");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return new b(string, zzamVar.getString("google_api_key"), zzamVar.getString("firebase_database_url"), zzamVar.getString("ga_trackingId"), zzamVar.getString("gcm_defaultSenderId"), zzamVar.getString("google_storage_bucket"));
    }

    public String a() {
        return this.f3546a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return zzaa.equal(this.b, bVar.b) && zzaa.equal(this.f3546a, bVar.f3546a) && zzaa.equal(this.c, bVar.c) && zzaa.equal(this.d, bVar.d) && zzaa.equal(this.e, bVar.e) && zzaa.equal(this.f, bVar.f);
    }

    public int hashCode() {
        return zzaa.hashCode(this.b, this.f3546a, this.c, this.d, this.e, this.f);
    }

    public String toString() {
        return zzaa.zzv(this).zzg("applicationId", this.b).zzg("apiKey", this.f3546a).zzg("databaseUrl", this.c).zzg("gcmSenderId", this.e).zzg("storageBucket", this.f).toString();
    }
}
