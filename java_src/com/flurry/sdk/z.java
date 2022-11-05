package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    private final Map<b, a> f3108a = new HashMap();

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public dw f3109a;
        public y b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        String f3110a;
        dg b;
        e c;

        public b(String str, dg dgVar, e eVar) {
            this.f3110a = str;
            this.b = dgVar;
            if (eVar != null) {
                this.c = eVar.copy();
            }
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (!this.f3110a.equals(bVar.f3110a) && this.f3110a != null && !this.f3110a.equals(bVar.f3110a)) {
                return false;
            }
            if (this.b != bVar.b && this.b != null && !this.b.equals(bVar.b)) {
                return false;
            }
            return this.c == bVar.c || this.c == null || this.c.equals(bVar.c);
        }

        public final int hashCode() {
            int i = 17;
            if (this.f3110a != null) {
                i = this.f3110a.hashCode() ^ 17;
            }
            if (this.b != null) {
                i ^= this.b.hashCode();
            }
            if (this.c != null) {
                return i ^ this.c.hashCode();
            }
            return i;
        }
    }

    public final synchronized a a(String str, dg dgVar, e eVar) {
        a aVar;
        b bVar = new b(str, dgVar, eVar);
        aVar = this.f3108a.get(bVar);
        if (aVar == null) {
            aVar = new a();
            aVar.f3109a = new dw(str);
            aVar.b = new y(str);
            this.f3108a.put(bVar, aVar);
        }
        return aVar;
    }
}
