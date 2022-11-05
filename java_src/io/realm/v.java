package io.realm;

import io.realm.internal.Collection;
import io.realm.internal.LinkView;
import io.realm.internal.SortDescriptor;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.t;
/* compiled from: RealmQuery.java */
/* loaded from: classes3.dex */
public class v<E extends t> {

    /* renamed from: a  reason: collision with root package name */
    private b f5815a;
    private Class<E> b;
    private String c;
    private Table d;
    private RealmObjectSchema e;
    private LinkView f = null;
    private TableQuery g;

    public static <E extends t> v<E> a(l lVar, Class<E> cls) {
        return new v<>(lVar, cls);
    }

    private v(l lVar, Class<E> cls) {
        this.f5815a = lVar;
        this.b = cls;
        this.e = lVar.f.c(cls);
        this.d = this.e.f5740a;
        this.g = this.d.g();
    }

    public v<E> a(String str, Integer num) {
        this.f5815a.e();
        return b(str, num);
    }

    private v<E> b(String str, Integer num) {
        long[] a2 = this.e.a(str, RealmFieldType.INTEGER);
        if (num == null) {
            this.g.a(a2);
        } else {
            this.g.a(a2, num.intValue());
        }
        return this;
    }

    public v<E> a(String str, Boolean bool) {
        this.f5815a.e();
        return b(str, bool);
    }

    private v<E> b(String str, Boolean bool) {
        long[] a2 = this.e.a(str, RealmFieldType.BOOLEAN);
        if (bool == null) {
            this.g.a(a2);
        } else {
            this.g.a(a2, bool.booleanValue());
        }
        return this;
    }

    public v<E> a() {
        this.f5815a.e();
        return d();
    }

    private v<E> d() {
        this.g.c();
        return this;
    }

    public w<E> b() {
        this.f5815a.e();
        return a(this.g, null, null, true);
    }

    public w<E> a(String str, Sort sort) {
        this.f5815a.e();
        return a(this.g, SortDescriptor.a(this.g.a(), str, sort), null, true);
    }

    private boolean e() {
        return this.c != null;
    }

    public E c() {
        this.f5815a.e();
        long f = f();
        if (f >= 0) {
            return (E) this.f5815a.a(this.b, this.c, f);
        }
        return null;
    }

    private w<E> a(TableQuery tableQuery, SortDescriptor sortDescriptor, SortDescriptor sortDescriptor2, boolean z) {
        w<E> wVar;
        Collection collection = new Collection(this.f5815a.e, tableQuery, sortDescriptor, sortDescriptor2);
        if (e()) {
            wVar = new w<>(this.f5815a, collection, this.c);
        } else {
            wVar = new w<>(this.f5815a, collection, this.b);
        }
        if (z) {
            wVar.b();
        }
        return wVar;
    }

    private long f() {
        return this.g.d();
    }
}
