package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.app.ac;
import android.support.v4.content.k;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LoaderManager.java */
/* loaded from: classes.dex */
public class ad extends ac {

    /* renamed from: a  reason: collision with root package name */
    static boolean f225a = false;
    final android.support.v4.f.l<a> b = new android.support.v4.f.l<>();
    final android.support.v4.f.l<a> c = new android.support.v4.f.l<>();
    final String d;
    boolean e;
    boolean f;
    boolean g;
    t h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoaderManager.java */
    /* loaded from: classes.dex */
    public final class a implements k.a<Object>, k.b<Object> {

        /* renamed from: a  reason: collision with root package name */
        final int f226a;
        final Bundle b;
        ac.a<Object> c;
        android.support.v4.content.k<Object> d;
        boolean e;
        boolean f;
        Object g;
        boolean h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        a n;

        public a(int i, Bundle bundle, ac.a<Object> aVar) {
            this.f226a = i;
            this.b = bundle;
            this.c = aVar;
        }

        void a() {
            if (this.i && this.j) {
                this.h = true;
            } else if (!this.h) {
                this.h = true;
                if (ad.f225a) {
                    Log.v("LoaderManager", "  Starting: " + this);
                }
                if (this.d == null && this.c != null) {
                    this.d = this.c.onCreateLoader(this.f226a, this.b);
                }
                if (this.d != null) {
                    if (this.d.getClass().isMemberClass() && !Modifier.isStatic(this.d.getClass().getModifiers())) {
                        throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.d);
                    }
                    if (!this.m) {
                        this.d.registerListener(this.f226a, this);
                        this.d.registerOnLoadCanceledListener(this);
                        this.m = true;
                    }
                    this.d.startLoading();
                }
            }
        }

        void b() {
            if (ad.f225a) {
                Log.v("LoaderManager", "  Retaining: " + this);
            }
            this.i = true;
            this.j = this.h;
            this.h = false;
            this.c = null;
        }

        void c() {
            if (this.i) {
                if (ad.f225a) {
                    Log.v("LoaderManager", "  Finished Retaining: " + this);
                }
                this.i = false;
                if (this.h != this.j && !this.h) {
                    e();
                }
            }
            if (this.h && this.e && !this.k) {
                b(this.d, this.g);
            }
        }

        void d() {
            if (this.h && this.k) {
                this.k = false;
                if (this.e && !this.i) {
                    b(this.d, this.g);
                }
            }
        }

        void e() {
            if (ad.f225a) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.h = false;
            if (!this.i && this.d != null && this.m) {
                this.m = false;
                this.d.unregisterListener(this);
                this.d.unregisterOnLoadCanceledListener(this);
                this.d.stopLoading();
            }
        }

        void f() {
            String str;
            if (ad.f225a) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.l = true;
            boolean z = this.f;
            this.f = false;
            if (this.c != null && this.d != null && this.e && z) {
                if (ad.f225a) {
                    Log.v("LoaderManager", "  Resetting: " + this);
                }
                if (ad.this.h != null) {
                    String str2 = ad.this.h.d.u;
                    ad.this.h.d.u = "onLoaderReset";
                    str = str2;
                } else {
                    str = null;
                }
                try {
                    this.c.onLoaderReset(this.d);
                } finally {
                    if (ad.this.h != null) {
                        ad.this.h.d.u = str;
                    }
                }
            }
            this.c = null;
            this.g = null;
            this.e = false;
            if (this.d != null) {
                if (this.m) {
                    this.m = false;
                    this.d.unregisterListener(this);
                    this.d.unregisterOnLoadCanceledListener(this);
                }
                this.d.reset();
            }
            if (this.n != null) {
                this.n.f();
            }
        }

        @Override // android.support.v4.content.k.a
        public void a(android.support.v4.content.k<Object> kVar) {
            if (ad.f225a) {
                Log.v("LoaderManager", "onLoadCanceled: " + this);
            }
            if (this.l) {
                if (ad.f225a) {
                    Log.v("LoaderManager", "  Ignoring load canceled -- destroyed");
                }
            } else if (ad.this.b.a(this.f226a) != this) {
                if (ad.f225a) {
                    Log.v("LoaderManager", "  Ignoring load canceled -- not active");
                }
            } else {
                a aVar = this.n;
                if (aVar != null) {
                    if (ad.f225a) {
                        Log.v("LoaderManager", "  Switching to pending loader: " + aVar);
                    }
                    this.n = null;
                    ad.this.b.b(this.f226a, null);
                    f();
                    ad.this.a(aVar);
                }
            }
        }

        @Override // android.support.v4.content.k.b
        public void a(android.support.v4.content.k<Object> kVar, Object obj) {
            if (ad.f225a) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (this.l) {
                if (ad.f225a) {
                    Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
                }
            } else if (ad.this.b.a(this.f226a) != this) {
                if (ad.f225a) {
                    Log.v("LoaderManager", "  Ignoring load complete -- not active");
                }
            } else {
                a aVar = this.n;
                if (aVar != null) {
                    if (ad.f225a) {
                        Log.v("LoaderManager", "  Switching to pending loader: " + aVar);
                    }
                    this.n = null;
                    ad.this.b.b(this.f226a, null);
                    f();
                    ad.this.a(aVar);
                    return;
                }
                if (this.g != obj || !this.e) {
                    this.g = obj;
                    this.e = true;
                    if (this.h) {
                        b(kVar, obj);
                    }
                }
                a a2 = ad.this.c.a(this.f226a);
                if (a2 != null && a2 != this) {
                    a2.f = false;
                    a2.f();
                    ad.this.c.c(this.f226a);
                }
                if (ad.this.h != null && !ad.this.a()) {
                    ad.this.h.d.g();
                }
            }
        }

        void b(android.support.v4.content.k<Object> kVar, Object obj) {
            String str;
            if (this.c != null) {
                if (ad.this.h == null) {
                    str = null;
                } else {
                    String str2 = ad.this.h.d.u;
                    ad.this.h.d.u = "onLoadFinished";
                    str = str2;
                }
                try {
                    if (ad.f225a) {
                        Log.v("LoaderManager", "  onLoadFinished in " + kVar + ": " + kVar.dataToString(obj));
                    }
                    this.c.onLoadFinished(kVar, obj);
                    this.f = true;
                } finally {
                    if (ad.this.h != null) {
                        ad.this.h.d.u = str;
                    }
                }
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f226a);
            sb.append(" : ");
            android.support.v4.f.d.a(this.d, sb);
            sb.append("}}");
            return sb.toString();
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f226a);
            printWriter.print(" mArgs=");
            printWriter.println(this.b);
            printWriter.print(str);
            printWriter.print("mCallbacks=");
            printWriter.println(this.c);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.d);
            if (this.d != null) {
                this.d.dump(str + "  ", fileDescriptor, printWriter, strArr);
            }
            if (this.e || this.f) {
                printWriter.print(str);
                printWriter.print("mHaveData=");
                printWriter.print(this.e);
                printWriter.print("  mDeliveredData=");
                printWriter.println(this.f);
                printWriter.print(str);
                printWriter.print("mData=");
                printWriter.println(this.g);
            }
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.h);
            printWriter.print(" mReportNextStart=");
            printWriter.print(this.k);
            printWriter.print(" mDestroyed=");
            printWriter.println(this.l);
            printWriter.print(str);
            printWriter.print("mRetaining=");
            printWriter.print(this.i);
            printWriter.print(" mRetainingStarted=");
            printWriter.print(this.j);
            printWriter.print(" mListenerRegistered=");
            printWriter.println(this.m);
            if (this.n != null) {
                printWriter.print(str);
                printWriter.println("Pending Loader ");
                printWriter.print(this.n);
                printWriter.println(":");
                this.n.a(str + "  ", fileDescriptor, printWriter, strArr);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(String str, t tVar, boolean z) {
        this.d = str;
        this.h = tVar;
        this.e = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(t tVar) {
        this.h = tVar;
    }

    private a b(int i, Bundle bundle, ac.a<Object> aVar) {
        a aVar2 = new a(i, bundle, aVar);
        aVar2.d = aVar.onCreateLoader(i, bundle);
        return aVar2;
    }

    private a c(int i, Bundle bundle, ac.a<Object> aVar) {
        try {
            this.g = true;
            a b = b(i, bundle, aVar);
            a(b);
            return b;
        } finally {
            this.g = false;
        }
    }

    void a(a aVar) {
        this.b.b(aVar.f226a, aVar);
        if (this.e) {
            aVar.a();
        }
    }

    @Override // android.support.v4.app.ac
    public <D> android.support.v4.content.k<D> a(int i, Bundle bundle, ac.a<D> aVar) {
        if (this.g) {
            throw new IllegalStateException("Called while creating a loader");
        }
        a a2 = this.b.a(i);
        if (f225a) {
            Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
        }
        if (a2 == null) {
            a2 = c(i, bundle, aVar);
            if (f225a) {
                Log.v("LoaderManager", "  Created new loader " + a2);
            }
        } else {
            if (f225a) {
                Log.v("LoaderManager", "  Re-using existing loader " + a2);
            }
            a2.c = aVar;
        }
        if (a2.e && this.e) {
            a2.b(a2.d, a2.g);
        }
        return (android.support.v4.content.k<D>) a2.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (f225a) {
            Log.v("LoaderManager", "Starting in " + this);
        }
        if (this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStart when already started: " + this, runtimeException);
            return;
        }
        this.e = true;
        for (int b = this.b.b() - 1; b >= 0; b--) {
            this.b.e(b).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (f225a) {
            Log.v("LoaderManager", "Stopping in " + this);
        }
        if (!this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStop when not started: " + this, runtimeException);
            return;
        }
        for (int b = this.b.b() - 1; b >= 0; b--) {
            this.b.e(b).e();
        }
        this.e = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        if (f225a) {
            Log.v("LoaderManager", "Retaining in " + this);
        }
        if (!this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doRetain when not started: " + this, runtimeException);
            return;
        }
        this.f = true;
        this.e = false;
        for (int b = this.b.b() - 1; b >= 0; b--) {
            this.b.e(b).b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        if (this.f) {
            if (f225a) {
                Log.v("LoaderManager", "Finished Retaining in " + this);
            }
            this.f = false;
            for (int b = this.b.b() - 1; b >= 0; b--) {
                this.b.e(b).c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        for (int b = this.b.b() - 1; b >= 0; b--) {
            this.b.e(b).k = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        for (int b = this.b.b() - 1; b >= 0; b--) {
            this.b.e(b).d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        if (!this.f) {
            if (f225a) {
                Log.v("LoaderManager", "Destroying Active in " + this);
            }
            for (int b = this.b.b() - 1; b >= 0; b--) {
                this.b.e(b).f();
            }
            this.b.c();
        }
        if (f225a) {
            Log.v("LoaderManager", "Destroying Inactive in " + this);
        }
        for (int b2 = this.c.b() - 1; b2 >= 0; b2--) {
            this.c.e(b2).f();
        }
        this.c.c();
        this.h = null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        android.support.v4.f.d.a(this.h, sb);
        sb.append("}}");
        return sb.toString();
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.b.b() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < this.b.b(); i++) {
                a e = this.b.e(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.b.d(i));
                printWriter.print(": ");
                printWriter.println(e.toString());
                e.a(str2, fileDescriptor, printWriter, strArr);
            }
        }
        if (this.c.b() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            for (int i2 = 0; i2 < this.c.b(); i2++) {
                a e2 = this.c.e(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.c.d(i2));
                printWriter.print(": ");
                printWriter.println(e2.toString());
                e2.a(str3, fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // android.support.v4.app.ac
    public boolean a() {
        int b = this.b.b();
        boolean z = false;
        for (int i = 0; i < b; i++) {
            a e = this.b.e(i);
            z |= e.h && !e.f;
        }
        return z;
    }
}
