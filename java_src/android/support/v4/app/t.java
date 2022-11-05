package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* compiled from: FragmentHostCallback.java */
/* loaded from: classes.dex */
public abstract class t<E> extends r {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f261a;
    final Context b;
    final int c;
    final v d;
    private final Handler e;
    private android.support.v4.f.k<String, ac> f;
    private boolean g;
    private ad h;
    private boolean i;
    private boolean j;

    public abstract E g();

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, fragmentActivity.mHandler, 0);
    }

    t(Activity activity, Context context, Handler handler, int i) {
        this.d = new v();
        this.f261a = activity;
        this.b = context;
        this.e = handler;
        this.c = i;
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public boolean a(Fragment fragment) {
        return true;
    }

    public LayoutInflater b() {
        return (LayoutInflater) this.b.getSystemService("layout_inflater");
    }

    public void d() {
    }

    public void a(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (i != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        this.b.startActivity(intent);
    }

    public void a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        a.a(this.f261a, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public void a(Fragment fragment, String[] strArr, int i) {
    }

    public boolean a(String str) {
        return false;
    }

    public boolean e() {
        return true;
    }

    public int f() {
        return this.c;
    }

    @Override // android.support.v4.app.r
    public View a(int i) {
        return null;
    }

    @Override // android.support.v4.app.r
    public boolean a() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Activity h() {
        return this.f261a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context i() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Handler j() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v k() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad l() {
        if (this.h != null) {
            return this.h;
        }
        this.i = true;
        this.h = a("(root)", this.j, true);
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) {
        ad adVar;
        if (this.f != null && (adVar = (ad) this.f.get(str)) != null && !adVar.f) {
            adVar.h();
            this.f.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Fragment fragment) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        if (!this.j) {
            this.j = true;
            if (this.h != null) {
                this.h.b();
            } else if (!this.i) {
                this.h = a("(root)", this.j, false);
                if (this.h != null && !this.h.e) {
                    this.h.b();
                }
            }
            this.i = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.g = z;
        if (this.h != null && this.j) {
            this.j = false;
            if (z) {
                this.h.d();
            } else {
                this.h.c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        if (this.h != null) {
            this.h.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p() {
        if (this.f != null) {
            int size = this.f.size();
            ad[] adVarArr = new ad[size];
            for (int i = size - 1; i >= 0; i--) {
                adVarArr[i] = (ad) this.f.c(i);
            }
            for (int i2 = 0; i2 < size; i2++) {
                ad adVar = adVarArr[i2];
                adVar.e();
                adVar.g();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad a(String str, boolean z, boolean z2) {
        if (this.f == null) {
            this.f = new android.support.v4.f.k<>();
        }
        ad adVar = (ad) this.f.get(str);
        if (adVar == null && z2) {
            ad adVar2 = new ad(str, this, z);
            this.f.put(str, adVar2);
            return adVar2;
        } else if (z && adVar != null && !adVar.e) {
            adVar.b();
            return adVar;
        } else {
            return adVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public android.support.v4.f.k<String, ac> q() {
        boolean z;
        if (this.f != null) {
            int size = this.f.size();
            ad[] adVarArr = new ad[size];
            for (int i = size - 1; i >= 0; i--) {
                adVarArr[i] = (ad) this.f.c(i);
            }
            boolean m = m();
            z = false;
            for (int i2 = 0; i2 < size; i2++) {
                ad adVar = adVarArr[i2];
                if (!adVar.f && m) {
                    if (!adVar.e) {
                        adVar.b();
                    }
                    adVar.d();
                }
                if (adVar.f) {
                    z = true;
                } else {
                    adVar.h();
                    this.f.remove(adVar.d);
                }
            }
        } else {
            z = false;
        }
        if (z) {
            return this.f;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(android.support.v4.f.k<String, ac> kVar) {
        if (kVar != null) {
            int size = kVar.size();
            for (int i = 0; i < size; i++) {
                ((ad) kVar.c(i)).a(this);
            }
        }
        this.f = kVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.j);
        if (this.h != null) {
            printWriter.print(str);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.h)));
            printWriter.println(":");
            this.h.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
    }
}
