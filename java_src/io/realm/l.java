package io.realm;

import android.content.Context;
import io.realm.b;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmFileException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.RealmNotifier;
import io.realm.internal.SharedRealm;
import io.realm.internal.Table;
import io.realm.p;
import java.io.File;
import java.io.FileNotFoundException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: Realm.java */
/* loaded from: classes.dex */
public class l extends b {
    private static p h;

    /* compiled from: Realm.java */
    /* loaded from: classes3.dex */
    public interface a {

        /* compiled from: Realm.java */
        /* renamed from: io.realm.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public interface InterfaceC0596a {
            void a(Throwable th);
        }

        /* compiled from: Realm.java */
        /* loaded from: classes3.dex */
        public interface b {
            void a();
        }

        void a(l lVar);
    }

    @Override // io.realm.b
    public /* bridge */ /* synthetic */ boolean a() {
        return super.a();
    }

    @Override // io.realm.b
    public /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    @Override // io.realm.b
    public /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    @Override // io.realm.b, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    @Override // io.realm.b
    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    @Override // io.realm.b
    public /* bridge */ /* synthetic */ String f() {
        return super.f();
    }

    @Override // io.realm.b
    public /* bridge */ /* synthetic */ p g() {
        return super.g();
    }

    @Override // io.realm.b
    public /* bridge */ /* synthetic */ long h() {
        return super.h();
    }

    @Override // io.realm.b
    public /* bridge */ /* synthetic */ boolean j() {
        return super.j();
    }

    l(p pVar) {
        super(pVar);
    }

    public static synchronized void a(Context context) {
        synchronized (l.class) {
            if (b.f5754a == null) {
                if (context == null) {
                    throw new IllegalArgumentException("Non-null context required.");
                }
                io.realm.internal.k.a(context);
                h = new p.a(context).b();
                io.realm.internal.h.a().a(context);
                b.f5754a = context.getApplicationContext();
                SharedRealm.a(new File(context.getFilesDir(), ".realm.temp"));
            }
        }
    }

    public static l k() {
        if (h == null) {
            throw new IllegalStateException("Call `Realm.init(Context)` before calling this method.");
        }
        return (l) n.a(h, l.class);
    }

    public static l b(p pVar) {
        if (pVar == null) {
            throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
        }
        return (l) n.a(pVar, l.class);
    }

    public static void c(p pVar) {
        if (pVar == null) {
            throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
        }
        h = pVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l a(p pVar, io.realm.internal.b[] bVarArr) {
        try {
            return b(pVar, bVarArr);
        } catch (RealmMigrationNeededException e) {
            if (pVar.f()) {
                d(pVar);
            } else {
                try {
                    a(pVar, e);
                } catch (FileNotFoundException e2) {
                    throw new RealmFileException(RealmFileException.Kind.NOT_FOUND, e2);
                }
            }
            return b(pVar, bVarArr);
        }
    }

    static l b(p pVar, io.realm.internal.b[] bVarArr) {
        l lVar = new l(pVar);
        long h2 = lVar.h();
        long d = pVar.d();
        io.realm.internal.b a2 = n.a(bVarArr, d);
        if (a2 != null) {
            lVar.f.f5743a = a2.clone();
        } else {
            boolean o = pVar.o();
            if (!o && h2 != -1) {
                if (h2 < d) {
                    lVar.i();
                    throw new RealmMigrationNeededException(pVar.l(), String.format("Realm on disk need to migrate from v%s to v%s", Long.valueOf(h2), Long.valueOf(d)));
                } else if (d < h2) {
                    lVar.i();
                    throw new IllegalArgumentException(String.format("Realm on disk is newer than the one specified: v%s vs. v%s", Long.valueOf(h2), Long.valueOf(d)));
                }
            }
            try {
                if (!o) {
                    a(lVar);
                } else {
                    b(lVar);
                }
            } catch (RuntimeException e) {
                lVar.i();
                throw e;
            }
        }
        return lVar;
    }

    private static void a(l lVar) {
        boolean z;
        a i;
        try {
            try {
                lVar.b();
                long h2 = lVar.h();
                z = h2 == -1;
                if (z) {
                    try {
                        lVar.a(lVar.d.d());
                    } catch (Throwable th) {
                        th = th;
                        if (z) {
                            lVar.c();
                        } else {
                            lVar.d();
                        }
                        throw th;
                    }
                }
                io.realm.internal.m h3 = lVar.d.h();
                Set<Class<? extends t>> a2 = h3.a();
                HashMap hashMap = new HashMap(a2.size());
                for (Class<? extends t> cls : a2) {
                    if (z) {
                        h3.a(cls, lVar.e);
                    }
                    hashMap.put(cls, h3.a(cls, lVar.e, false));
                }
                RealmSchema realmSchema = lVar.f;
                if (z) {
                    h2 = lVar.d.d();
                }
                realmSchema.f5743a = new io.realm.internal.b(h2, hashMap);
                if (z && (i = lVar.d.i()) != null) {
                    i.a(lVar);
                }
                if (z) {
                    lVar.c();
                } else {
                    lVar.d();
                }
            } catch (Exception e) {
                throw e;
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
        }
    }

    private static void b(l lVar) {
        a i;
        boolean z = true;
        boolean z2 = false;
        try {
            try {
                lVar.b();
                long h2 = lVar.h();
                boolean z3 = h2 == -1;
                io.realm.internal.m h3 = lVar.d.h();
                Set<Class<? extends t>> a2 = h3.a();
                ArrayList arrayList = new ArrayList();
                RealmSchema realmSchema = new RealmSchema();
                for (Class<? extends t> cls : a2) {
                    arrayList.add(h3.a(cls, realmSchema));
                }
                RealmSchema realmSchema2 = new RealmSchema(arrayList);
                long d = lVar.d.d();
                if (!lVar.e.a(realmSchema2)) {
                    z = false;
                } else if (h2 >= d) {
                    throw new IllegalArgumentException(String.format("The schema was changed but the schema version was not updated. The configured schema version (%d) must be higher than the one in the Realm file (%d) in order to update the schema.", Long.valueOf(d), Long.valueOf(h2)));
                } else {
                    lVar.e.a(realmSchema2, d);
                    lVar.a(d);
                }
                try {
                    HashMap hashMap = new HashMap(a2.size());
                    for (Class<? extends t> cls2 : a2) {
                        hashMap.put(cls2, h3.a(cls2, lVar.e, false));
                    }
                    RealmSchema realmSchema3 = lVar.f;
                    if (!z3) {
                        d = h2;
                    }
                    realmSchema3.f5743a = new io.realm.internal.b(d, hashMap);
                    if (z3 && (i = lVar.d.i()) != null) {
                        i.a(lVar);
                    }
                    if (z) {
                        lVar.c();
                    } else {
                        lVar.d();
                    }
                } catch (Throwable th) {
                    th = th;
                    z2 = z;
                    if (z2) {
                        lVar.c();
                    } else {
                        lVar.d();
                    }
                    throw th;
                }
            } catch (Exception e) {
                throw e;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <E extends t> E a(Class<E> cls, Object obj, boolean z, List<String> list) {
        return (E) a(cls, this.f.b(cls).a(obj), z, list);
    }

    public <E extends t> E a(E e) {
        c((l) e);
        return (E) a((l) e, false, (Map<t, io.realm.internal.l>) new HashMap());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends t> E b(E e) {
        c((l) e);
        c((Class<? extends t>) e.getClass());
        return (E) a((l) e, true, (Map<t, io.realm.internal.l>) new HashMap());
    }

    public <E extends t> List<E> a(Iterable<E> iterable) {
        if (iterable == null) {
            return new ArrayList(0);
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (E e : iterable) {
            c((l) e);
            arrayList.add(a((l) e, true, (Map<t, io.realm.internal.l>) hashMap));
        }
        return arrayList;
    }

    public <E extends t> v<E> a(Class<E> cls) {
        e();
        return v.a(this, cls);
    }

    public m a(a aVar, a.b bVar, a.InterfaceC0596a interfaceC0596a) {
        e();
        if (aVar == null) {
            throw new IllegalArgumentException("Transaction should not be null");
        }
        boolean a2 = this.e.d.a();
        if (bVar != null || interfaceC0596a != null) {
            this.e.d.a("Callback cannot be delivered on current thread.");
        }
        return new io.realm.internal.async.b(b.a(new AnonymousClass1(g(), aVar, a2, bVar, this.e.f5776a, interfaceC0596a)), b);
    }

    /* compiled from: Realm.java */
    /* renamed from: io.realm.l$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p f5803a;
        final /* synthetic */ a b;
        final /* synthetic */ boolean c;
        final /* synthetic */ a.b d;
        final /* synthetic */ RealmNotifier e;
        final /* synthetic */ a.InterfaceC0596a f;

        AnonymousClass1(p pVar, a aVar, boolean z, a.b bVar, RealmNotifier realmNotifier, a.InterfaceC0596a interfaceC0596a) {
            this.f5803a = pVar;
            this.b = aVar;
            this.c = z;
            this.d = bVar;
            this.e = realmNotifier;
            this.f = interfaceC0596a;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!Thread.currentThread().isInterrupted()) {
                final SharedRealm.b[] bVarArr = new SharedRealm.b[1];
                Throwable[] thArr = new Throwable[1];
                l b = l.b(this.f5803a);
                b.b();
                try {
                    this.b.a(b);
                } catch (Throwable th) {
                    try {
                        thArr[0] = th;
                    } finally {
                        b.close();
                    }
                }
                if (!Thread.currentThread().isInterrupted()) {
                    b.c();
                    bVarArr[0] = b.e.i();
                    final Throwable th2 = thArr[0];
                    if (this.c) {
                        if (bVarArr[0] != null && this.d != null) {
                            this.e.post(new Runnable() { // from class: io.realm.l.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (l.this.j()) {
                                        AnonymousClass1.this.d.a();
                                    } else if (l.this.e.i().compareTo(bVarArr[0]) < 0) {
                                        l.this.e.f5776a.addTransactionCallback(new Runnable() { // from class: io.realm.l.1.1.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                AnonymousClass1.this.d.a();
                                            }
                                        });
                                    } else {
                                        AnonymousClass1.this.d.a();
                                    }
                                }
                            });
                        } else if (th2 != null) {
                            this.e.post(new Runnable() { // from class: io.realm.l.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (AnonymousClass1.this.f != null) {
                                        AnonymousClass1.this.f.a(th2);
                                        return;
                                    }
                                    throw new RealmException("Async transaction failed", th2);
                                }
                            });
                        }
                    } else if (th2 != null) {
                        throw new RealmException("Async transaction failed", th2);
                    }
                }
            }
        }
    }

    private <E extends t> E a(E e, boolean z, Map<t, io.realm.internal.l> map) {
        e();
        return (E) this.d.h().a(this, e, z, map);
    }

    private <E extends t> void c(E e) {
        if (e == null) {
            throw new IllegalArgumentException("Null objects cannot be copied into Realm.");
        }
    }

    private void c(Class<? extends t> cls) {
        if (!this.f.b(cls).d()) {
            throw new IllegalArgumentException("A RealmObject with no @PrimaryKey cannot be updated: " + cls.toString());
        }
    }

    private static void a(p pVar, RealmMigrationNeededException realmMigrationNeededException) throws FileNotFoundException {
        b.a(pVar, (s) null, new b.a() { // from class: io.realm.l.2
            @Override // io.realm.b.a
            public void a() {
            }
        }, realmMigrationNeededException);
    }

    public static boolean d(p pVar) {
        return b.a(pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Table b(Class<? extends t> cls) {
        return this.f.b(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public io.realm.internal.b a(io.realm.internal.b[] bVarArr) {
        io.realm.internal.b bVar = null;
        long e = this.e.e();
        if (e != this.f.f5743a.a()) {
            io.realm.internal.m h2 = g().h();
            io.realm.internal.b a2 = n.a(bVarArr, e);
            if (a2 == null) {
                Set<Class<? extends t>> a3 = h2.a();
                HashMap hashMap = new HashMap(a3.size());
                try {
                    for (Class<? extends t> cls : a3) {
                        hashMap.put(cls, h2.a(cls, this.e, true));
                    }
                    a2 = new io.realm.internal.b(e, hashMap);
                    bVar = a2;
                } catch (RealmMigrationNeededException e2) {
                    throw e2;
                }
            }
            this.f.f5743a.a(a2, h2);
        }
        return bVar;
    }

    public static Object l() {
        try {
            Constructor<?> constructor = Class.forName("io.realm.DefaultRealmModule").getDeclaredConstructors()[0];
            constructor.setAccessible(true);
            return constructor.newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
            return null;
        } catch (IllegalAccessException e2) {
            throw new RealmException("Could not create an instance of io.realm.DefaultRealmModule", e2);
        } catch (InstantiationException e3) {
            throw new RealmException("Could not create an instance of io.realm.DefaultRealmModule", e3);
        } catch (InvocationTargetException e4) {
            throw new RealmException("Could not create an instance of io.realm.DefaultRealmModule", e4);
        }
    }
}
