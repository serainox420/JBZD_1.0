package android.support.v7.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.view.LayoutInflater;
/* compiled from: ContextThemeWrapper.java */
@RestrictTo
/* loaded from: classes.dex */
public class d extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    private int f695a;
    private Resources.Theme b;
    private LayoutInflater c;

    public d(Context context, int i) {
        super(context);
        this.f695a = i;
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.b = theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f695a != i) {
            this.f695a = i;
            b();
        }
    }

    public int a() {
        return this.f695a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        if (this.b != null) {
            return this.b;
        }
        if (this.f695a == 0) {
            this.f695a = R.style.Theme_AppCompat_Light;
        }
        b();
        return this.b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.c == null) {
                this.c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.c;
        }
        return getBaseContext().getSystemService(str);
    }

    protected void a(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    private void b() {
        boolean z = this.b == null;
        if (z) {
            this.b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.b.setTo(theme);
            }
        }
        a(this.b, this.f695a, z);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }
}
