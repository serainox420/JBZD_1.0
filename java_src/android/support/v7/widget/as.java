package android.support.v7.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.RestrictTo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* compiled from: TintContextWrapper.java */
@RestrictTo
/* loaded from: classes.dex */
public class as extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f879a = new Object();
    private static ArrayList<WeakReference<as>> b;
    private final Resources c;
    private final Resources.Theme d;

    public static Context a(Context context) {
        if (b(context)) {
            synchronized (f879a) {
                if (b == null) {
                    b = new ArrayList<>();
                } else {
                    for (int size = b.size() - 1; size >= 0; size--) {
                        WeakReference<as> weakReference = b.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            b.remove(size);
                        }
                    }
                    for (int size2 = b.size() - 1; size2 >= 0; size2--) {
                        WeakReference<as> weakReference2 = b.get(size2);
                        as asVar = weakReference2 != null ? weakReference2.get() : null;
                        if (asVar != null && asVar.getBaseContext() == context) {
                            return asVar;
                        }
                    }
                }
                as asVar2 = new as(context);
                b.add(new WeakReference<>(asVar2));
                return asVar2;
            }
        }
        return context;
    }

    private static boolean b(Context context) {
        if ((context instanceof as) || (context.getResources() instanceof au) || (context.getResources() instanceof ax)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 21 || ax.a();
    }

    private as(Context context) {
        super(context);
        if (ax.a()) {
            this.c = new ax(this, context.getResources());
            this.d = this.c.newTheme();
            this.d.setTo(context.getTheme());
            return;
        }
        this.c = new au(this, context.getResources());
        this.d = null;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        return this.d == null ? super.getTheme() : this.d;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.d == null) {
            super.setTheme(i);
        } else {
            this.d.applyStyle(i, true);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.c.getAssets();
    }
}
