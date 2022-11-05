package io.realm;

import android.content.Context;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.CheckedRow;
import io.realm.internal.InvalidRow;
import io.realm.internal.SharedRealm;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.Util;
import io.realm.log.RealmLog;
import io.realm.n;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseRealm.java */
/* loaded from: classes.dex */
public abstract class b implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    static volatile Context f5754a;
    static final io.realm.internal.async.c b = io.realm.internal.async.c.a();
    public static final c g = new c();
    final long c = Thread.currentThread().getId();
    protected p d;
    protected SharedRealm e;
    RealmSchema f;

    /* compiled from: BaseRealm.java */
    /* loaded from: classes3.dex */
    protected interface a {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(p pVar) {
        this.d = pVar;
        this.e = SharedRealm.a(pVar, !(this instanceof l) ? null : new SharedRealm.a() { // from class: io.realm.b.1
            @Override // io.realm.internal.SharedRealm.a
            public void a(long j) {
                n.a((l) b.this);
            }
        }, true);
        this.f = new RealmSchema(this);
    }

    public boolean a() {
        e();
        return this.e.d();
    }

    public void b() {
        e();
        this.e.a();
    }

    public void c() {
        e();
        this.e.b();
        if (!j()) {
            io.realm.internal.h.a(this.d.o()).a(this.d, this.e.j());
        }
    }

    public void d() {
        e();
        this.e.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        if (this.e == null || this.e.k()) {
            throw new IllegalStateException("This Realm instance has already been closed, making it unusable.");
        }
        if (this.c != Thread.currentThread().getId()) {
            throw new IllegalStateException("Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created.");
        }
    }

    public String f() {
        return this.d.l();
    }

    public p g() {
        return this.d;
    }

    public long h() {
        return this.e.e();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.c != Thread.currentThread().getId()) {
            throw new IllegalStateException("Realm access from incorrect thread. Realm instance can only be closed on the thread it was created.");
        }
        n.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        if (this.e != null) {
            this.e.close();
            this.e = null;
        }
        if (this.f != null) {
            this.f.b();
        }
    }

    public boolean j() {
        if (this.c != Thread.currentThread().getId()) {
            throw new IllegalStateException("Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created.");
        }
        return this.e == null || this.e.k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        this.e.a(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v6 */
    public <E extends t> E a(Class<E> cls, String str, UncheckedRow uncheckedRow) {
        e eVar;
        if (str != null) {
            eVar = new e(this, CheckedRow.a(uncheckedRow));
        } else {
            eVar = (E) this.d.h().a(cls, this, uncheckedRow, this.f.a(cls), false, Collections.emptyList());
        }
        eVar.c().f();
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <E extends t> E a(Class<E> cls, long j, boolean z, List<String> list) {
        E e = (E) this.d.h().a(cls, this, this.f.b(cls).f(j), this.f.a(cls), z, list);
        ((io.realm.internal.l) e).c().f();
        return e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    public <E extends t> E a(Class<E> cls, String str, long j) {
        e eVar;
        boolean z = str != null;
        Table d = z ? this.f.d(str) : this.f.b(cls);
        if (z) {
            eVar = new e(this, j != -1 ? d.h(j) : InvalidRow.INSTANCE);
        } else {
            eVar = (E) this.d.h().a(cls, this, j != -1 ? d.f(j) : InvalidRow.INSTANCE, this.f.a(cls), false, Collections.emptyList());
        }
        io.realm.internal.l lVar = eVar;
        if (j != -1) {
            lVar.c().f();
        }
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(final p pVar) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        n.a(pVar, new n.a() { // from class: io.realm.b.2
            @Override // io.realm.n.a
            public void a(int i) {
                if (i != 0) {
                    throw new IllegalStateException("It's not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: " + p.this.l());
                }
                atomicBoolean.set(Util.a(p.this.l(), p.this.a(), p.this.b()));
            }
        });
        return atomicBoolean.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(final p pVar, final s sVar, final a aVar, RealmMigrationNeededException realmMigrationNeededException) throws FileNotFoundException {
        if (pVar == null) {
            throw new IllegalArgumentException("RealmConfiguration must be provided");
        }
        if (!pVar.o()) {
            if (sVar == null && pVar.e() == null) {
                throw new RealmMigrationNeededException(pVar.l(), "RealmMigration must be provided", realmMigrationNeededException);
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            n.a(pVar, new n.a() { // from class: io.realm.b.3
                @Override // io.realm.n.a
                public void a(int i) {
                    if (i != 0) {
                        throw new IllegalStateException("Cannot migrate a Realm file that is already open: " + p.this.l());
                    }
                    if (!new File(p.this.l()).exists()) {
                        atomicBoolean.set(true);
                        return;
                    }
                    s e = sVar == null ? p.this.e() : sVar;
                    d dVar = null;
                    try {
                        try {
                            dVar = d.b(p.this);
                            dVar.b();
                            e.a(dVar, dVar.h(), p.this.d());
                            dVar.a(p.this.d());
                            dVar.c();
                        } catch (RuntimeException e2) {
                            if (dVar != null) {
                                dVar.d();
                            }
                            throw e2;
                        }
                    } finally {
                        if (dVar != null) {
                            dVar.close();
                            aVar.a();
                        }
                    }
                }
            });
            if (atomicBoolean.get()) {
                throw new FileNotFoundException("Cannot migrate a Realm file which doesn't exist: " + pVar.l());
            }
        }
    }

    protected void finalize() throws Throwable {
        if (this.e != null && !this.e.k()) {
            RealmLog.b("Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory.", this.d.l());
        }
        super.finalize();
    }

    /* compiled from: BaseRealm.java */
    /* renamed from: io.realm.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0593b {

        /* renamed from: a  reason: collision with root package name */
        private b f5758a;
        private io.realm.internal.n b;
        private io.realm.internal.c c;
        private boolean d;
        private List<String> e;

        public void a(b bVar, io.realm.internal.n nVar, io.realm.internal.c cVar, boolean z, List<String> list) {
            this.f5758a = bVar;
            this.b = nVar;
            this.c = cVar;
            this.d = z;
            this.e = list;
        }

        public b a() {
            return this.f5758a;
        }

        public io.realm.internal.n b() {
            return this.b;
        }

        public io.realm.internal.c c() {
            return this.c;
        }

        public boolean d() {
            return this.d;
        }

        public List<String> e() {
            return this.e;
        }

        public void f() {
            this.f5758a = null;
            this.b = null;
            this.c = null;
            this.d = false;
            this.e = null;
        }
    }

    /* compiled from: BaseRealm.java */
    /* loaded from: classes3.dex */
    static final class c extends ThreadLocal<C0593b> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public C0593b initialValue() {
            return new C0593b();
        }
    }
}
