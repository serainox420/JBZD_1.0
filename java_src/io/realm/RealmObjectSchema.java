package io.realm;

import io.realm.internal.Table;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public class RealmObjectSchema {
    private static final Map<Class<?>, b> b = new HashMap();
    private static final Map<Class<?>, b> c;

    /* renamed from: a  reason: collision with root package name */
    final Table f5740a;
    private final io.realm.b d;
    private final Map<String, Long> e;
    private final long f;

    static native void nativeAddProperty(long j, long j2);

    static native void nativeClose(long j);

    static native long nativeCreateRealmObjectSchema(String str);

    static native String nativeGetClassName(long j);

    static native long[] nativeGetProperties(long j);

    static {
        b.put(String.class, new b(RealmFieldType.STRING, true));
        b.put(Short.TYPE, new b(RealmFieldType.INTEGER, false));
        b.put(Short.class, new b(RealmFieldType.INTEGER, true));
        b.put(Integer.TYPE, new b(RealmFieldType.INTEGER, false));
        b.put(Integer.class, new b(RealmFieldType.INTEGER, true));
        b.put(Long.TYPE, new b(RealmFieldType.INTEGER, false));
        b.put(Long.class, new b(RealmFieldType.INTEGER, true));
        b.put(Float.TYPE, new b(RealmFieldType.FLOAT, false));
        b.put(Float.class, new b(RealmFieldType.FLOAT, true));
        b.put(Double.TYPE, new b(RealmFieldType.DOUBLE, false));
        b.put(Double.class, new b(RealmFieldType.DOUBLE, true));
        b.put(Boolean.TYPE, new b(RealmFieldType.BOOLEAN, false));
        b.put(Boolean.class, new b(RealmFieldType.BOOLEAN, true));
        b.put(Byte.TYPE, new b(RealmFieldType.INTEGER, false));
        b.put(Byte.class, new b(RealmFieldType.INTEGER, true));
        b.put(byte[].class, new b(RealmFieldType.BINARY, true));
        b.put(Date.class, new b(RealmFieldType.DATE, true));
        c = new HashMap();
        c.put(u.class, new b(RealmFieldType.OBJECT, false));
        c.put(q.class, new b(RealmFieldType.LIST, false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmObjectSchema(io.realm.b bVar, Table table, Map<String, Long> map) {
        this.d = bVar;
        this.f5740a = table;
        this.e = map;
        this.f = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmObjectSchema(String str) {
        this.d = null;
        this.f5740a = null;
        this.e = null;
        this.f = nativeCreateRealmObjectSchema(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RealmObjectSchema(long j) {
        this.d = null;
        this.f5740a = null;
        this.e = null;
        this.f = j;
    }

    public void a() {
        if (this.f != 0) {
            for (Property property : d()) {
                property.b();
            }
            nativeClose(this.f);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long b() {
        return this.f;
    }

    public String c() {
        return this.d == null ? nativeGetClassName(this.f) : this.f5740a.h().substring(Table.f5781a.length());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RealmObjectSchema a(Property property) {
        if (this.d != null && this.f == 0) {
            throw new IllegalArgumentException("Don't use this method.");
        }
        nativeAddProperty(this.f, property.a());
        return this;
    }

    private Set<Property> d() {
        if (this.d == null) {
            long[] nativeGetProperties = nativeGetProperties(this.f);
            LinkedHashSet linkedHashSet = new LinkedHashSet(nativeGetProperties.length);
            for (long j : nativeGetProperties) {
                linkedHashSet.add(new Property(j));
            }
            return linkedHashSet;
        }
        throw new IllegalArgumentException("Not possible");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long[] a(String str, RealmFieldType... realmFieldTypeArr) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("Non-empty fieldname must be provided");
        }
        if (str.startsWith(".") || str.endsWith(".")) {
            throw new IllegalArgumentException("Illegal field name. It cannot start or end with a '.': " + str);
        }
        Table table = this.f5740a;
        boolean z = realmFieldTypeArr != null && realmFieldTypeArr.length > 0;
        if (str.contains(".")) {
            String[] split = str.split("\\.");
            long[] jArr = new long[split.length];
            for (int i = 0; i < split.length - 1; i++) {
                long a2 = table.a(split[i]);
                if (a2 < 0) {
                    throw new IllegalArgumentException("Invalid query: " + split[i] + " does not refer to a class.");
                }
                RealmFieldType c2 = table.c(a2);
                if (c2 == RealmFieldType.OBJECT || c2 == RealmFieldType.LIST) {
                    table = table.e(a2);
                    jArr[i] = a2;
                } else {
                    throw new IllegalArgumentException("Invalid query: " + split[i] + " does not refer to a class.");
                }
            }
            String str2 = split[split.length - 1];
            long a3 = table.a(str2);
            jArr[split.length - 1] = a3;
            if (a3 < 0) {
                throw new IllegalArgumentException(str2 + " is not a field name in class " + table.h());
            }
            if (z && !a(table.c(a3), realmFieldTypeArr)) {
                throw new IllegalArgumentException(String.format("Field '%s': type mismatch.", split[split.length - 1]));
            }
            return jArr;
        }
        Long a4 = a(str);
        if (a4 == null) {
            throw new IllegalArgumentException(String.format("Field '%s' does not exist.", str));
        }
        RealmFieldType c3 = table.c(a4.longValue());
        if (z && !a(c3, realmFieldTypeArr)) {
            throw new IllegalArgumentException(String.format("Field '%s': type mismatch. Was %s, expected %s.", str, c3, Arrays.toString(realmFieldTypeArr)));
        }
        return new long[]{a4.longValue()};
    }

    private boolean a(RealmFieldType realmFieldType, RealmFieldType[] realmFieldTypeArr) {
        for (RealmFieldType realmFieldType2 : realmFieldTypeArr) {
            if (realmFieldType2 == realmFieldType) {
                return true;
            }
        }
        return false;
    }

    Long a(String str) {
        return this.e.get(str);
    }

    /* loaded from: classes3.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        public final RealmFieldType f5742a;
        public final boolean b;

        public b(RealmFieldType realmFieldType, boolean z) {
            this.f5742a = realmFieldType;
            this.b = z;
        }
    }

    /* loaded from: classes3.dex */
    static final class a implements Map<String, Long> {

        /* renamed from: a  reason: collision with root package name */
        private final Table f5741a;

        public a(Table table) {
            this.f5741a = table;
        }

        @Override // java.util.Map
        /* renamed from: a */
        public Long get(Object obj) {
            long a2 = this.f5741a.a((String) obj);
            if (a2 < 0) {
                return null;
            }
            return Long.valueOf(a2);
        }

        @Override // java.util.Map
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public boolean containsValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public Set<Map.Entry<String, Long>> entrySet() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public Set<String> keySet() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        /* renamed from: a */
        public Long put(String str, Long l) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public void putAll(Map<? extends String, ? extends Long> map) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        /* renamed from: b */
        public Long remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public int size() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public Collection<Long> values() {
            throw new UnsupportedOperationException();
        }
    }
}
