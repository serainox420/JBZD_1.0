package io.realm;

import android.content.Context;
import android.text.TextUtils;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmFileException;
import io.realm.internal.SharedRealm;
import io.realm.l;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* compiled from: RealmConfiguration.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    protected static final io.realm.internal.m f5811a;
    private static final Object b = l.l();
    private static Boolean c;
    private final File d;
    private final String e;
    private final String f;
    private final String g;
    private final byte[] h;
    private final long i;
    private final s j;
    private final boolean k;
    private final SharedRealm.Durability l;
    private final io.realm.internal.m m;
    private final io.realm.a.b n;
    private final l.a o;

    static {
        if (b != null) {
            io.realm.internal.m a2 = a(b.getClass().getCanonicalName());
            if (!a2.b()) {
                throw new ExceptionInInitializerError("RealmTransformer doesn't seem to be applied. Please update the project configuration to use the Realm Gradle plugin. See https://realm.io/news/android-installation-change/");
            }
            f5811a = a2;
            return;
        }
        f5811a = null;
    }

    protected p(File file, String str, String str2, String str3, byte[] bArr, long j, s sVar, boolean z, SharedRealm.Durability durability, io.realm.internal.m mVar, io.realm.a.b bVar, l.a aVar) {
        this.d = file;
        this.e = str;
        this.f = str2;
        this.g = str3;
        this.h = bArr;
        this.i = j;
        this.j = sVar;
        this.k = z;
        this.l = durability;
        this.m = mVar;
        this.n = bVar;
        this.o = aVar;
    }

    public File a() {
        return this.d;
    }

    public String b() {
        return this.e;
    }

    public byte[] c() {
        if (this.h == null) {
            return null;
        }
        return Arrays.copyOf(this.h, this.h.length);
    }

    public long d() {
        return this.i;
    }

    public s e() {
        return this.j;
    }

    public boolean f() {
        return this.k;
    }

    public SharedRealm.Durability g() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public io.realm.internal.m h() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l.a i() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        return !TextUtils.isEmpty(this.g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InputStream k() throws IOException {
        return b.f5754a.getAssets().open(this.g);
    }

    public String l() {
        return this.f;
    }

    public io.realm.a.b m() {
        if (this.n == null) {
            throw new UnsupportedOperationException("RxJava seems to be missing from the classpath. Remember to add it as a compile dependency. See https://realm.io/docs/java/latest/#rxjava for more details.");
        }
        return this.n;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        if (this.i != pVar.i || this.k != pVar.k || !this.d.equals(pVar.d) || !this.e.equals(pVar.e) || !this.f.equals(pVar.f) || !Arrays.equals(this.h, pVar.h) || !this.l.equals(pVar.l)) {
            return false;
        }
        if (this.j != null) {
            if (!this.j.equals(pVar.j)) {
                return false;
            }
        } else if (pVar.j != null) {
            return false;
        }
        if (this.n != null) {
            if (!this.n.equals(pVar.n)) {
                return false;
            }
        } else if (pVar.n != null) {
            return false;
        }
        if (this.o != null) {
            if (!this.o.equals(pVar.o)) {
                return false;
            }
        } else if (pVar.o != null) {
            return false;
        }
        return this.m.equals(pVar.m);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.n != null ? this.n.hashCode() : 0) + (((((((this.k ? 1 : 0) + (((this.j != null ? this.j.hashCode() : 0) + (((((this.h != null ? Arrays.hashCode(this.h) : 0) + (((((this.d.hashCode() * 31) + this.e.hashCode()) * 31) + this.f.hashCode()) * 31)) * 31) + ((int) this.i)) * 31)) * 31)) * 31) + this.m.hashCode()) * 31) + this.l.hashCode()) * 31)) * 31;
        if (this.o != null) {
            i = this.o.hashCode();
        }
        return hashCode + i;
    }

    protected static io.realm.internal.m a(Set<Object> set, Set<Class<? extends t>> set2) {
        if (set2.size() > 0) {
            return new io.realm.internal.a.b(f5811a, set2);
        }
        if (set.size() == 1) {
            return a(set.iterator().next().getClass().getCanonicalName());
        }
        io.realm.internal.m[] mVarArr = new io.realm.internal.m[set.size()];
        int i = 0;
        for (Object obj : set) {
            mVarArr[i] = a(obj.getClass().getCanonicalName());
            i++;
        }
        return new io.realm.internal.a.a(mVarArr);
    }

    private static io.realm.internal.m a(String str) {
        String[] split = str.split("\\.");
        String format = String.format("io.realm.%s%s", split[split.length - 1], "Mediator");
        try {
            Constructor<?> constructor = Class.forName(format).getDeclaredConstructors()[0];
            constructor.setAccessible(true);
            return (io.realm.internal.m) constructor.newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
            throw new RealmException("Could not find " + format, e);
        } catch (IllegalAccessException e2) {
            throw new RealmException("Could not create an instance of " + format, e2);
        } catch (InstantiationException e3) {
            throw new RealmException("Could not create an instance of " + format, e3);
        } catch (InvocationTargetException e4) {
            throw new RealmException("Could not create an instance of " + format, e4);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("realmDirectory: ").append(this.d.toString());
        sb.append("\n");
        sb.append("realmFileName : ").append(this.e);
        sb.append("\n");
        sb.append("canonicalPath: ").append(this.f);
        sb.append("\n");
        sb.append("key: ").append("[length: ").append(this.h == null ? 0 : 64).append("]");
        sb.append("\n");
        sb.append("schemaVersion: ").append(Long.toString(this.i));
        sb.append("\n");
        sb.append("migration: ").append(this.j);
        sb.append("\n");
        sb.append("deleteRealmIfMigrationNeeded: ").append(this.k);
        sb.append("\n");
        sb.append("durability: ").append(this.l);
        sb.append("\n");
        sb.append("schemaMediator: ").append(this.m);
        return sb.toString();
    }

    static synchronized boolean n() {
        boolean booleanValue;
        synchronized (p.class) {
            if (c == null) {
                try {
                    Class.forName("a.a");
                    c = true;
                } catch (ClassNotFoundException e) {
                    c = false;
                }
            }
            booleanValue = c.booleanValue();
        }
        return booleanValue;
    }

    protected static String a(File file) {
        try {
            return file.getCanonicalPath();
        } catch (IOException e) {
            throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, "Could not resolve the canonical path to the Realm file: " + file.getAbsolutePath(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean o() {
        return false;
    }

    /* compiled from: RealmConfiguration.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private File f5812a;
        private String b;
        private String c;
        private byte[] d;
        private long e;
        private s f;
        private boolean g;
        private SharedRealm.Durability h;
        private HashSet<Object> i;
        private HashSet<Class<? extends t>> j;
        private io.realm.a.b k;
        private l.a l;

        public a() {
            this(b.f5754a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Context context) {
            this.i = new HashSet<>();
            this.j = new HashSet<>();
            if (context == null) {
                throw new IllegalStateException("Call `Realm.init(Context)` before creating a RealmConfiguration");
            }
            io.realm.internal.k.a(context);
            a(context);
        }

        private void a(Context context) {
            this.f5812a = context.getFilesDir();
            this.b = "default.realm";
            this.d = null;
            this.e = 0L;
            this.f = null;
            this.g = false;
            this.h = SharedRealm.Durability.FULL;
            if (p.b != null) {
                this.i.add(p.b);
            }
        }

        public a a() {
            if (this.c != null && this.c.length() != 0) {
                throw new IllegalStateException("Realm cannot clear its schema when previously configured to use an asset file by calling assetFile().");
            }
            this.g = true;
            return this;
        }

        public p b() {
            if (this.k == null && p.n()) {
                this.k = new io.realm.a.a();
            }
            return new p(this.f5812a, this.b, p.a(new File(this.f5812a, this.b)), this.c, this.d, this.e, this.f, this.g, this.h, p.a(this.i, this.j), this.k, this.l);
        }
    }
}
