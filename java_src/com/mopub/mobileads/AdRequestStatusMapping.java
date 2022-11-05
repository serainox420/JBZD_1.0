package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public class AdRequestStatusMapping {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, a> f4403a = new TreeMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum b {
        LOADING,
        LOADED,
        PLAYED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.f4403a.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) {
        this.f4403a.put(str, new a(b.LOADING));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2, String str3, String str4) {
        this.f4403a.put(str, new a(b.LOADED, str2, str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        if (!this.f4403a.containsKey(str)) {
            this.f4403a.put(str, new a(b.PLAYED));
        } else {
            this.f4403a.get(str).a(b.PLAYED);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(String str) {
        a aVar = this.f4403a.get(str);
        return aVar != null && b.LOADED.equals(aVar.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(String str) {
        if (!this.f4403a.containsKey(str)) {
            return false;
        }
        return this.f4403a.get(str).a() == b.LOADING;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f(String str) {
        if (!this.f4403a.containsKey(str)) {
            return null;
        }
        return this.f4403a.get(str).b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String g(String str) {
        if (!this.f4403a.containsKey(str)) {
            return null;
        }
        return this.f4403a.get(str).c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String h(String str) {
        if (!this.f4403a.containsKey(str)) {
            return null;
        }
        return this.f4403a.get(str).d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(String str) {
        if (!this.f4403a.containsKey(str)) {
            return;
        }
        this.f4403a.get(str).a((String) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(String str) {
        if (!this.f4403a.containsKey(str)) {
            return;
        }
        this.f4403a.get(str).b((String) null);
    }

    /* loaded from: classes3.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private b f4404a;
        private String b;
        private String c;
        private String d;

        public a(b bVar) {
            this(bVar, null, null, null);
        }

        public a(b bVar, String str, String str2, String str3) {
            Preconditions.checkNotNull(bVar);
            this.f4404a = bVar;
            this.b = str;
            this.c = str2;
            this.d = str3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public b a() {
            return this.f4404a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(b bVar) {
            this.f4404a = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String b() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String c() {
            return this.c;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            this.c = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String d() {
            return this.d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str) {
            this.d = str;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == null) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!this.f4404a.equals(aVar.f4404a) || !TextUtils.equals(this.b, aVar.b) || !TextUtils.equals(this.c, aVar.c) || !TextUtils.equals(this.d, aVar.d)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.c != null ? this.c.hashCode() : 0) + (((this.b != null ? this.b.hashCode() : 0) + ((this.f4404a.ordinal() + 899) * 31)) * 31)) * 31;
            if (this.d != null) {
                i = this.d.hashCode();
            }
            return hashCode + i;
        }
    }
}
