package com.google.firebase.messaging;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.Map;
/* loaded from: classes2.dex */
public final class RemoteMessage extends zza {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new f();

    /* renamed from: a  reason: collision with root package name */
    Bundle f3596a;
    private Map<String, String> b;
    private a c;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f3597a;
        private final String b;
        private final String[] c;
        private final String d;
        private final String e;
        private final String[] f;
        private final String g;
        private final String h;
        private final String i;
        private final String j;
        private final String k;
        private final Uri l;

        private a(Bundle bundle) {
            this.f3597a = b.a(bundle, "gcm.n.title");
            this.b = b.b(bundle, "gcm.n.title");
            this.c = a(bundle, "gcm.n.title");
            this.d = b.a(bundle, "gcm.n.body");
            this.e = b.b(bundle, "gcm.n.body");
            this.f = a(bundle, "gcm.n.body");
            this.g = b.a(bundle, "gcm.n.icon");
            this.h = b.d(bundle);
            this.i = b.a(bundle, "gcm.n.tag");
            this.j = b.a(bundle, "gcm.n.color");
            this.k = b.a(bundle, "gcm.n.click_action");
            this.l = b.b(bundle);
        }

        private String[] a(Bundle bundle, String str) {
            Object[] c = b.c(bundle, str);
            if (c == null) {
                return null;
            }
            String[] strArr = new String[c.length];
            for (int i = 0; i < c.length; i++) {
                strArr[i] = String.valueOf(c[i]);
            }
            return strArr;
        }

        public String a() {
            return this.d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RemoteMessage(Bundle bundle) {
        this.f3596a = bundle;
    }

    public Map<String, String> a() {
        if (this.b == null) {
            this.b = new android.support.v4.f.a();
            for (String str : this.f3596a.keySet()) {
                Object obj = this.f3596a.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals("message_type") && !str.equals("collapse_key")) {
                        this.b.put(str, str2);
                    }
                }
            }
        }
        return this.b;
    }

    public a b() {
        if (this.c == null && b.a(this.f3596a)) {
            this.c = new a(this.f3596a);
        }
        return this.c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        f.a(this, parcel, i);
    }
}
