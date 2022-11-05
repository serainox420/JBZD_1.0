package android.support.v7.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.view.at;
import android.support.v7.appcompat.R;
import android.view.ViewConfiguration;
/* compiled from: ActionBarPolicy.java */
@RestrictTo
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Context f693a;

    public static a a(Context context) {
        return new a(context);
    }

    private a(Context context) {
        this.f693a = context;
    }

    public int a() {
        Resources resources = this.f693a.getResources();
        int b = android.support.v4.content.a.a.b(resources);
        int a2 = android.support.v4.content.a.a.a(resources);
        if (android.support.v4.content.a.a.c(resources) > 600 || b > 600 || ((b > 960 && a2 > 720) || (b > 720 && a2 > 960))) {
            return 5;
        }
        if (b >= 500 || ((b > 640 && a2 > 480) || (b > 480 && a2 > 640))) {
            return 4;
        }
        if (b >= 360) {
            return 3;
        }
        return 2;
    }

    public boolean b() {
        return Build.VERSION.SDK_INT >= 19 || !at.a(ViewConfiguration.get(this.f693a));
    }

    public int c() {
        return this.f693a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public boolean d() {
        return this.f693a.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs);
    }

    public int e() {
        TypedArray obtainStyledAttributes = this.f693a.obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0);
        Resources resources = this.f693a.getResources();
        if (!d()) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(R.dimen.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return layoutDimension;
    }

    public boolean f() {
        return this.f693a.getApplicationInfo().targetSdkVersion < 14;
    }

    public int g() {
        return this.f693a.getResources().getDimensionPixelSize(R.dimen.abc_action_bar_stacked_tab_max_width);
    }
}
