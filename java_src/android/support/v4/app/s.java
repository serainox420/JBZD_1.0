package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* compiled from: FragmentController.java */
/* loaded from: classes.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private final t<?> f260a;

    public static final s a(t<?> tVar) {
        return new s(tVar);
    }

    private s(t<?> tVar) {
        this.f260a = tVar;
    }

    public u a() {
        return this.f260a.k();
    }

    public ac b() {
        return this.f260a.l();
    }

    public Fragment a(String str) {
        return this.f260a.d.b(str);
    }

    public void a(Fragment fragment) {
        this.f260a.d.a(this.f260a, this.f260a, fragment);
    }

    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f260a.d.a(view, str, context, attributeSet);
    }

    public void c() {
        this.f260a.d.m();
    }

    public Parcelable d() {
        return this.f260a.d.l();
    }

    public void a(Parcelable parcelable, w wVar) {
        this.f260a.d.a(parcelable, wVar);
    }

    public w e() {
        return this.f260a.d.k();
    }

    public void f() {
        this.f260a.d.n();
    }

    public void g() {
        this.f260a.d.o();
    }

    public void h() {
        this.f260a.d.p();
    }

    public void i() {
        this.f260a.d.q();
    }

    public void j() {
        this.f260a.d.r();
    }

    public void k() {
        this.f260a.d.s();
    }

    public void l() {
        this.f260a.d.t();
    }

    public void m() {
        this.f260a.d.v();
    }

    public void a(boolean z) {
        this.f260a.d.a(z);
    }

    public void b(boolean z) {
        this.f260a.d.b(z);
    }

    public void a(Configuration configuration) {
        this.f260a.d.a(configuration);
    }

    public void n() {
        this.f260a.d.w();
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        return this.f260a.d.a(menu, menuInflater);
    }

    public boolean a(Menu menu) {
        return this.f260a.d.a(menu);
    }

    public boolean a(MenuItem menuItem) {
        return this.f260a.d.a(menuItem);
    }

    public boolean b(MenuItem menuItem) {
        return this.f260a.d.b(menuItem);
    }

    public void b(Menu menu) {
        this.f260a.d.b(menu);
    }

    public boolean o() {
        return this.f260a.d.h();
    }

    public void p() {
        this.f260a.n();
    }

    public void c(boolean z) {
        this.f260a.a(z);
    }

    public void q() {
        this.f260a.o();
    }

    public void r() {
        this.f260a.p();
    }

    public android.support.v4.f.k<String, ac> s() {
        return this.f260a.q();
    }

    public void a(android.support.v4.f.k<String, ac> kVar) {
        this.f260a.a(kVar);
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f260a.b(str, fileDescriptor, printWriter, strArr);
    }
}
