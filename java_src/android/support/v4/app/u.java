package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.RestrictTo;
import android.support.v4.app.Fragment;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;
/* compiled from: FragmentManager.java */
/* loaded from: classes.dex */
public abstract class u {

    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    public interface b {
        void a();
    }

    public abstract Fragment.SavedState a(Fragment fragment);

    public abstract Fragment a(Bundle bundle, String str);

    public abstract Fragment a(String str);

    public abstract y a();

    public abstract void a(int i, int i2);

    public abstract void a(Bundle bundle, String str, Fragment fragment);

    public abstract void a(b bVar);

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract boolean b();

    public abstract void c();

    public abstract boolean d();

    public abstract int e();

    @RestrictTo
    public abstract List<Fragment> f();

    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public void a(u uVar, Fragment fragment, Context context) {
        }

        public void b(u uVar, Fragment fragment, Context context) {
        }

        public void a(u uVar, Fragment fragment, Bundle bundle) {
        }

        public void b(u uVar, Fragment fragment, Bundle bundle) {
        }

        public void a(u uVar, Fragment fragment, View view, Bundle bundle) {
        }

        public void a(u uVar, Fragment fragment) {
        }

        public void b(u uVar, Fragment fragment) {
        }

        public void c(u uVar, Fragment fragment) {
        }

        public void d(u uVar, Fragment fragment) {
        }

        public void c(u uVar, Fragment fragment, Bundle bundle) {
        }

        public void e(u uVar, Fragment fragment) {
        }

        public void f(u uVar, Fragment fragment) {
        }

        public void g(u uVar, Fragment fragment) {
        }
    }
}
