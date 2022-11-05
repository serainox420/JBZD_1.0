package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.reflect.Method;
/* compiled from: ActionBarDrawerToggleHoneycomb.java */
@TargetApi(11)
/* loaded from: classes.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f571a = {16843531};

    public static a a(a aVar, Activity activity, Drawable drawable, int i) {
        a aVar2 = new a(activity);
        if (aVar2.f572a != null) {
            try {
                android.app.ActionBar actionBar = activity.getActionBar();
                aVar2.f572a.invoke(actionBar, drawable);
                aVar2.b.invoke(actionBar, Integer.valueOf(i));
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator via JB-MR2 API", e);
            }
        } else if (aVar2.c != null) {
            aVar2.c.setImageDrawable(drawable);
        } else {
            Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator");
        }
        return aVar2;
    }

    public static a a(a aVar, Activity activity, int i) {
        if (aVar == null) {
            aVar = new a(activity);
        }
        if (aVar.f572a != null) {
            try {
                android.app.ActionBar actionBar = activity.getActionBar();
                aVar.b.invoke(actionBar, Integer.valueOf(i));
                if (Build.VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set content description via JB-MR2 API", e);
            }
        }
        return aVar;
    }

    public static Drawable a(Activity activity) {
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(f571a);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    /* compiled from: ActionBarDrawerToggleHoneycomb.java */
    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public Method f572a;
        public Method b;
        public ImageView c;

        a(Activity activity) {
            try {
                this.f572a = android.app.ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.b = android.app.ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            } catch (NoSuchMethodException e) {
                View findViewById = activity.findViewById(16908332);
                if (findViewById != null) {
                    ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                    if (viewGroup.getChildCount() == 2) {
                        View childAt = viewGroup.getChildAt(0);
                        View childAt2 = childAt.getId() != 16908332 ? childAt : viewGroup.getChildAt(1);
                        if (childAt2 instanceof ImageView) {
                            this.c = (ImageView) childAt2;
                        }
                    }
                }
            }
        }
    }
}
