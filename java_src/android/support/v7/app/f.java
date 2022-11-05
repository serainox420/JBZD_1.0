package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.a;
import android.support.v7.appcompat.R;
import android.support.v7.view.b;
import android.support.v7.widget.av;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.Window;
import java.lang.Thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppCompatDelegateImplBase.java */
@TargetApi(9)
/* loaded from: classes.dex */
public abstract class f extends e {
    private static boolean m;
    private static final boolean n;
    private static final int[] o;

    /* renamed from: a  reason: collision with root package name */
    final Context f576a;
    final Window b;
    final Window.Callback c;
    final Window.Callback d;
    final d e;
    ActionBar f;
    MenuInflater g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    private CharSequence p;
    private boolean q;
    private boolean r;

    abstract void a(int i, Menu menu);

    abstract boolean a(int i, KeyEvent keyEvent);

    abstract boolean a(KeyEvent keyEvent);

    abstract android.support.v7.view.b b(b.a aVar);

    abstract void b(CharSequence charSequence);

    abstract boolean b(int i, Menu menu);

    abstract void m();

    static {
        n = Build.VERSION.SDK_INT < 21;
        if (n && !m) {
            final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: android.support.v7.app.f.1
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread, Throwable th) {
                    if (a(th)) {
                        Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                        notFoundException.initCause(th.getCause());
                        notFoundException.setStackTrace(th.getStackTrace());
                        defaultUncaughtExceptionHandler.uncaughtException(thread, notFoundException);
                        return;
                    }
                    defaultUncaughtExceptionHandler.uncaughtException(thread, th);
                }

                private boolean a(Throwable th) {
                    String message;
                    if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                        return false;
                    }
                    return message.contains("drawable") || message.contains("Drawable");
                }
            });
            m = true;
        }
        o = new int[]{16842836};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Context context, Window window, d dVar) {
        this.f576a = context;
        this.b = window;
        this.e = dVar;
        this.c = this.b.getCallback();
        if (this.c instanceof b) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        this.d = a(this.c);
        this.b.setCallback(this.d);
        av a2 = av.a(context, (AttributeSet) null, o);
        Drawable b2 = a2.b(0);
        if (b2 != null) {
            this.b.setBackgroundDrawable(b2);
        }
        a2.a();
    }

    Window.Callback a(Window.Callback callback) {
        return new b(callback);
    }

    @Override // android.support.v7.app.e
    public ActionBar a() {
        m();
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ActionBar n() {
        return this.f;
    }

    @Override // android.support.v7.app.e
    public MenuInflater b() {
        if (this.g == null) {
            m();
            this.g = new android.support.v7.view.g(this.f != null ? this.f.c() : this.f576a);
        }
        return this.g;
    }

    @Override // android.support.v7.app.e
    public final a.InterfaceC0036a h() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context o() {
        Context context = null;
        ActionBar a2 = a();
        if (a2 != null) {
            context = a2.c();
        }
        if (context == null) {
            return this.f576a;
        }
        return context;
    }

    /* compiled from: AppCompatDelegateImplBase.java */
    /* loaded from: classes.dex */
    private class a implements a.InterfaceC0036a {
        a() {
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public Drawable a() {
            av a2 = av.a(b(), (AttributeSet) null, new int[]{R.attr.homeAsUpIndicator});
            Drawable a3 = a2.a(0);
            a2.a();
            return a3;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public Context b() {
            return f.this.o();
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public boolean c() {
            ActionBar a2 = f.this.a();
            return (a2 == null || (a2.a() & 4) == 0) ? false : true;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public void a(Drawable drawable, int i) {
            ActionBar a2 = f.this.a();
            if (a2 != null) {
                a2.a(drawable);
                a2.b(i);
            }
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public void a(int i) {
            ActionBar a2 = f.this.a();
            if (a2 != null) {
                a2.b(i);
            }
        }
    }

    @Override // android.support.v7.app.e
    public void c() {
        this.q = true;
    }

    @Override // android.support.v7.app.e
    public void d() {
        this.q = false;
    }

    @Override // android.support.v7.app.e
    public void g() {
        this.r = true;
    }

    public boolean p() {
        return false;
    }

    @Override // android.support.v7.app.e
    public boolean j() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean q() {
        return this.r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Window.Callback r() {
        return this.b.getCallback();
    }

    @Override // android.support.v7.app.e
    public final void a(CharSequence charSequence) {
        this.p = charSequence;
        b(charSequence);
    }

    @Override // android.support.v7.app.e
    public void c(Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final CharSequence s() {
        return this.c instanceof Activity ? ((Activity) this.c).getTitle() : this.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AppCompatDelegateImplBase.java */
    /* loaded from: classes.dex */
    public class b extends android.support.v7.view.i {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Window.Callback callback) {
            super(callback);
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return f.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || f.this.a(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof android.support.v7.view.menu.h)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            android.support.v7.view.menu.h hVar = menu instanceof android.support.v7.view.menu.h ? (android.support.v7.view.menu.h) menu : null;
            if (i == 0 && hVar == null) {
                return false;
            }
            if (hVar != null) {
                hVar.c(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (hVar != null) {
                hVar.c(false);
                return onPreparePanel;
            }
            return onPreparePanel;
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            f.this.b(i, menu);
            return true;
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            f.this.a(i, menu);
        }
    }
}
