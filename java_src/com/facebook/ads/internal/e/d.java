package com.facebook.ads.internal.e;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.AsyncTask;
import android.os.Looper;
import com.facebook.ads.internal.e.f;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final Context f2134a;
    private final h b = new h(this);
    private final c c = new c(this);
    private SQLiteOpenHelper d;

    public d(Context context) {
        this.f2134a = context;
    }

    private synchronized SQLiteDatabase g() {
        if (this.d == null) {
            this.d = new e(this.f2134a, this);
        }
        return this.d.getWritableDatabase();
    }

    public SQLiteDatabase a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot call getDatabase from the UI thread!");
        }
        return g();
    }

    public <T> AsyncTask a(final f<T> fVar, final a<T> aVar) {
        return com.facebook.ads.internal.util.h.a(new AsyncTask<Void, Void, T>() { // from class: com.facebook.ads.internal.e.d.1
            private f.a d;

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0 */
            /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
            @Override // android.os.AsyncTask
            /* renamed from: a */
            public T doInBackground(Void... voidArr) {
                T t = 0;
                try {
                    t = fVar.b();
                    this.d = fVar.c();
                    return t;
                } catch (SQLiteException e) {
                    this.d = f.a.UNKNOWN;
                    return t;
                }
            }

            @Override // android.os.AsyncTask
            protected void onPostExecute(T t) {
                if (this.d == null) {
                    aVar.a(t);
                } else {
                    aVar.a(this.d.a(), this.d.b());
                }
                aVar.a();
            }
        }, new Void[0]);
    }

    public AsyncTask a(final com.facebook.ads.internal.g.d dVar, a<String> aVar) {
        return a(new i<String>() { // from class: com.facebook.ads.internal.e.d.2
            @Override // com.facebook.ads.internal.e.f
            /* renamed from: a */
            public String b() {
                try {
                    SQLiteDatabase a2 = d.this.a();
                    a2.beginTransaction();
                    String a3 = dVar.d() != null ? d.this.c.a(d.this.b.a(dVar.d()), dVar.a().c, dVar.b(), dVar.e(), dVar.f(), dVar.g(), dVar.h()) : null;
                    a2.setTransactionSuccessful();
                    a2.endTransaction();
                    return a3;
                } catch (Exception e) {
                    a(f.a.DATABASE_INSERT);
                    return null;
                }
            }
        }, aVar);
    }

    public boolean a(String str) {
        return this.c.a(str);
    }

    public void b() {
        for (g gVar : c()) {
            gVar.d();
        }
        if (this.d != null) {
            this.d.close();
            this.d = null;
        }
    }

    public g[] c() {
        return new g[]{this.b, this.c};
    }

    public Cursor d() {
        return this.c.c();
    }

    public Cursor e() {
        return this.b.c();
    }

    public void f() {
        this.b.f();
    }
}
