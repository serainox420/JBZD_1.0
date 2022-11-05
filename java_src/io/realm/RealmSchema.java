package io.realm;

import io.realm.RealmObjectSchema;
import io.realm.internal.Table;
import io.realm.internal.Util;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public class RealmSchema {
    private static final String b = Table.f5781a;

    /* renamed from: a  reason: collision with root package name */
    io.realm.internal.b f5743a;
    private final Map<String, Table> c;
    private final Map<Class<? extends t>, Table> d;
    private final Map<Class<? extends t>, RealmObjectSchema> e;
    private final Map<String, RealmObjectSchema> f;
    private final b g;
    private long h;

    static native void nativeClose(long j);

    static native long nativeCreateFromList(long[] jArr);

    static native long[] nativeGetAll(long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmSchema(b bVar) {
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new HashMap();
        this.f = new HashMap();
        this.g = bVar;
        this.h = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmSchema() {
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new HashMap();
        this.f = new HashMap();
        this.g = null;
        this.h = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmSchema(ArrayList<RealmObjectSchema> arrayList) {
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new HashMap();
        this.f = new HashMap();
        long[] jArr = new long[arrayList.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < arrayList.size()) {
                jArr[i2] = arrayList.get(i2).b();
                i = i2 + 1;
            } else {
                this.h = nativeCreateFromList(jArr);
                this.g = null;
                return;
            }
        }
    }

    public long a() {
        return this.h;
    }

    public void b() {
        if (this.h != 0) {
            for (RealmObjectSchema realmObjectSchema : c()) {
                realmObjectSchema.a();
            }
            nativeClose(this.h);
        }
    }

    public RealmObjectSchema a(String str) {
        a(str, "Null or empty class names are not allowed");
        if (this.g == null) {
            if (!c(str)) {
                return null;
            }
            return this.f.get(str);
        }
        String str2 = b + str;
        if (!this.g.e.a(str2)) {
            return null;
        }
        Table b2 = this.g.e.b(str2);
        return new RealmObjectSchema(this.g, b2, new RealmObjectSchema.a(b2));
    }

    public Set<RealmObjectSchema> c() {
        int i = 0;
        if (this.g == null) {
            long[] nativeGetAll = nativeGetAll(this.h);
            LinkedHashSet linkedHashSet = new LinkedHashSet(nativeGetAll.length);
            while (i < nativeGetAll.length) {
                linkedHashSet.add(new RealmObjectSchema(nativeGetAll[i]));
                i++;
            }
            return linkedHashSet;
        }
        int g = (int) this.g.e.g();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(g);
        while (i < g) {
            String a2 = this.g.e.a(i);
            if (Table.c(a2)) {
                Table b2 = this.g.e.b(a2);
                linkedHashSet2.add(new RealmObjectSchema(this.g, b2, new RealmObjectSchema.a(b2)));
            }
            i++;
        }
        return linkedHashSet2;
    }

    public RealmObjectSchema b(String str) {
        a(str, "Null or empty class names are not allowed");
        if (this.g == null) {
            RealmObjectSchema realmObjectSchema = new RealmObjectSchema(str);
            this.f.put(str, realmObjectSchema);
            return realmObjectSchema;
        }
        String str2 = b + str;
        if (str2.length() > 56) {
            throw new IllegalArgumentException("Class name is too long. Limit is 56 characters: " + str.length());
        }
        if (this.g.e.a(str2)) {
            throw new IllegalArgumentException("Class already exists: " + str);
        }
        Table b2 = this.g.e.b(str2);
        return new RealmObjectSchema(this.g, b2, new RealmObjectSchema.a(b2));
    }

    public boolean c(String str) {
        return this.g == null ? this.f.containsKey(str) : this.g.e.a(Table.f5781a + str);
    }

    private void a(String str, String str2) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public io.realm.internal.c a(Class<? extends t> cls) {
        io.realm.internal.c a2 = this.f5743a.a(cls);
        if (a2 == null) {
            throw new IllegalStateException("No validated schema information found for " + this.g.d.h().a(cls));
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Table d(String str) {
        String str2 = Table.f5781a + str;
        Table table = this.c.get(str2);
        if (table == null) {
            if (!this.g.e.a(str2)) {
                throw new IllegalArgumentException("The class " + str2 + " doesn't exist in this Realm.");
            }
            Table b2 = this.g.e.b(str2);
            this.c.put(str2, b2);
            return b2;
        }
        return table;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Table b(Class<? extends t> cls) {
        Table table = this.d.get(cls);
        if (table == null) {
            Class<? extends t> a2 = Util.a(cls);
            if (a(a2, cls)) {
                table = this.d.get(a2);
            }
            if (table == null) {
                table = this.g.e.b(this.g.d.h().a(a2));
                this.d.put(a2, table);
            }
            if (a(a2, cls)) {
                this.d.put(cls, table);
            }
        }
        return table;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmObjectSchema c(Class<? extends t> cls) {
        RealmObjectSchema realmObjectSchema = this.e.get(cls);
        if (realmObjectSchema == null) {
            Class<? extends t> a2 = Util.a(cls);
            if (a(a2, cls)) {
                realmObjectSchema = this.e.get(a2);
            }
            if (realmObjectSchema == null) {
                realmObjectSchema = new RealmObjectSchema(this.g, b(cls), this.f5743a.a(a2).c());
                this.e.put(a2, realmObjectSchema);
            }
            if (a(a2, cls)) {
                this.e.put(cls, realmObjectSchema);
            }
        }
        return realmObjectSchema;
    }

    private static boolean a(Class<? extends t> cls, Class<? extends t> cls2) {
        return cls != cls2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Table table) {
        return table.h().substring(Table.f5781a.length());
    }
}
