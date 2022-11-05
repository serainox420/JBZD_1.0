package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: AppCompatDrawableManager.java */
@RestrictTo
/* loaded from: classes.dex */
public final class h {
    private static h b;
    private WeakHashMap<Context, android.support.v4.f.l<ColorStateList>> j;
    private android.support.v4.f.a<String, c> k;
    private android.support.v4.f.l<String> l;
    private final Object m = new Object();
    private final WeakHashMap<Context, android.support.v4.f.f<WeakReference<Drawable.ConstantState>>> n = new WeakHashMap<>(0);
    private TypedValue o;
    private boolean p;

    /* renamed from: a  reason: collision with root package name */
    private static final PorterDuff.Mode f901a = PorterDuff.Mode.SRC_IN;
    private static final b c = new b(6);
    private static final int[] d = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
    private static final int[] e = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
    private static final int[] f = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl_dark, R.drawable.abc_text_select_handle_middle_mtrl_dark, R.drawable.abc_text_select_handle_right_mtrl_dark, R.drawable.abc_text_select_handle_left_mtrl_light, R.drawable.abc_text_select_handle_middle_mtrl_light, R.drawable.abc_text_select_handle_right_mtrl_light};
    private static final int[] g = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
    private static final int[] h = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
    private static final int[] i = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material};

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppCompatDrawableManager.java */
    /* loaded from: classes.dex */
    public interface c {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    public static h a() {
        if (b == null) {
            b = new h();
            a(b);
        }
        return b;
    }

    private static void a(h hVar) {
        if (Build.VERSION.SDK_INT < 24) {
            hVar.a("vector", new d());
            if (Build.VERSION.SDK_INT >= 11) {
                hVar.a("animated-vector", new a());
            }
        }
    }

    public Drawable a(Context context, int i2) {
        return a(context, i2, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Drawable a(Context context, int i2, boolean z) {
        e(context);
        Drawable d2 = d(context, i2);
        if (d2 == null) {
            d2 = c(context, i2);
        }
        if (d2 == null) {
            d2 = android.support.v4.content.b.a(context, i2);
        }
        if (d2 != null) {
            d2 = a(context, i2, z, d2);
        }
        if (d2 != null) {
            w.b(d2);
        }
        return d2;
    }

    public void a(Context context) {
        synchronized (this.m) {
            android.support.v4.f.f<WeakReference<Drawable.ConstantState>> fVar = this.n.get(context);
            if (fVar != null) {
                fVar.c();
            }
        }
    }

    private static long a(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    private Drawable c(Context context, int i2) {
        if (this.o == null) {
            this.o = new TypedValue();
        }
        TypedValue typedValue = this.o;
        context.getResources().getValue(i2, typedValue, true);
        long a2 = a(typedValue);
        Drawable a3 = a(context, a2);
        if (a3 == null) {
            if (i2 == R.drawable.abc_cab_background_top_material) {
                a3 = new LayerDrawable(new Drawable[]{a(context, R.drawable.abc_cab_background_internal_bg), a(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            }
            if (a3 != null) {
                a3.setChangingConfigurations(typedValue.changingConfigurations);
                a(context, a2, a3);
            }
        }
        return a3;
    }

    private Drawable a(Context context, int i2, boolean z, Drawable drawable) {
        ColorStateList b2 = b(context, i2);
        if (b2 != null) {
            if (w.c(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable g2 = android.support.v4.b.a.a.g(drawable);
            android.support.v4.b.a.a.a(g2, b2);
            PorterDuff.Mode a2 = a(i2);
            if (a2 != null) {
                android.support.v4.b.a.a.a(g2, a2);
                return g2;
            }
            return g2;
        } else if (i2 == R.drawable.abc_seekbar_track_material) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            a(layerDrawable.findDrawableByLayerId(16908288), aq.a(context, R.attr.colorControlNormal), f901a);
            a(layerDrawable.findDrawableByLayerId(16908303), aq.a(context, R.attr.colorControlNormal), f901a);
            a(layerDrawable.findDrawableByLayerId(16908301), aq.a(context, R.attr.colorControlActivated), f901a);
            return drawable;
        } else if (i2 == R.drawable.abc_ratingbar_material || i2 == R.drawable.abc_ratingbar_indicator_material || i2 == R.drawable.abc_ratingbar_small_material) {
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            a(layerDrawable2.findDrawableByLayerId(16908288), aq.c(context, R.attr.colorControlNormal), f901a);
            a(layerDrawable2.findDrawableByLayerId(16908303), aq.a(context, R.attr.colorControlActivated), f901a);
            a(layerDrawable2.findDrawableByLayerId(16908301), aq.a(context, R.attr.colorControlActivated), f901a);
            return drawable;
        } else if (!a(context, i2, drawable) && z) {
            return null;
        } else {
            return drawable;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Drawable d(Context context, int i2) {
        Drawable drawable;
        XmlResourceParser xml;
        AttributeSet asAttributeSet;
        int next;
        if (this.k == null || this.k.isEmpty()) {
            return null;
        }
        if (this.l != null) {
            String a2 = this.l.a(i2);
            if ("appcompat_skip_skip".equals(a2) || (a2 != null && this.k.get(a2) == null)) {
                return null;
            }
        } else {
            this.l = new android.support.v4.f.l<>();
        }
        if (this.o == null) {
            this.o = new TypedValue();
        }
        TypedValue typedValue = this.o;
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        long a3 = a(typedValue);
        Drawable a4 = a(context, a3);
        if (a4 != null) {
            return a4;
        }
        if (typedValue.string != null && typedValue.string.toString().endsWith(".xml")) {
            try {
                xml = resources.getXml(i2);
                asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
            } catch (Exception e2) {
                Log.e("AppCompatDrawableManager", "Exception while inflating drawable", e2);
            }
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            String name = xml.getName();
            this.l.c(i2, name);
            c cVar = this.k.get(name);
            if (cVar != null) {
                a4 = cVar.a(context, xml, asAttributeSet, context.getTheme());
            }
            if (a4 != null) {
                a4.setChangingConfigurations(typedValue.changingConfigurations);
                if (a(context, a3, a4)) {
                }
            }
            drawable = a4;
            if (drawable != null) {
                this.l.c(i2, "appcompat_skip_skip");
                return drawable;
            }
            return drawable;
        }
        drawable = a4;
        if (drawable != null) {
        }
    }

    private Drawable a(Context context, long j) {
        synchronized (this.m) {
            android.support.v4.f.f<WeakReference<Drawable.ConstantState>> fVar = this.n.get(context);
            if (fVar == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> a2 = fVar.a(j);
            if (a2 != null) {
                Drawable.ConstantState constantState = a2.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                fVar.b(j);
            }
            return null;
        }
    }

    private boolean a(Context context, long j, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            synchronized (this.m) {
                android.support.v4.f.f<WeakReference<Drawable.ConstantState>> fVar = this.n.get(context);
                if (fVar == null) {
                    fVar = new android.support.v4.f.f<>();
                    this.n.put(context, fVar);
                }
                fVar.b(j, new WeakReference<>(constantState));
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Drawable a(Context context, ax axVar, int i2) {
        Drawable d2 = d(context, i2);
        if (d2 == null) {
            d2 = axVar.a(i2);
        }
        if (d2 != null) {
            return a(context, i2, false, d2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context, int i2, Drawable drawable) {
        int i3;
        int i4;
        PorterDuff.Mode mode;
        boolean z;
        PorterDuff.Mode mode2 = f901a;
        if (a(d, i2)) {
            i4 = R.attr.colorControlNormal;
            mode = mode2;
            z = true;
            i3 = -1;
        } else if (a(f, i2)) {
            i4 = R.attr.colorControlActivated;
            mode = mode2;
            z = true;
            i3 = -1;
        } else if (a(g, i2)) {
            z = true;
            mode = PorterDuff.Mode.MULTIPLY;
            i4 = 16842801;
            i3 = -1;
        } else if (i2 == R.drawable.abc_list_divider_mtrl_alpha) {
            i4 = 16842800;
            i3 = Math.round(40.8f);
            mode = mode2;
            z = true;
        } else if (i2 == R.drawable.abc_dialog_material_background) {
            i4 = 16842801;
            mode = mode2;
            z = true;
            i3 = -1;
        } else {
            i3 = -1;
            i4 = 0;
            mode = mode2;
            z = false;
        }
        if (z) {
            if (w.c(drawable)) {
                drawable = drawable.mutate();
            }
            drawable.setColorFilter(a(aq.a(context, i4), mode));
            if (i3 == -1) {
                return true;
            }
            drawable.setAlpha(i3);
            return true;
        }
        return false;
    }

    private void a(String str, c cVar) {
        if (this.k == null) {
            this.k = new android.support.v4.f.a<>();
        }
        this.k.put(str, cVar);
    }

    private static boolean a(int[] iArr, int i2) {
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    static PorterDuff.Mode a(int i2) {
        if (i2 != R.drawable.abc_switch_thumb_material) {
            return null;
        }
        return PorterDuff.Mode.MULTIPLY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList b(Context context, int i2) {
        ColorStateList e2 = e(context, i2);
        if (e2 == null) {
            if (i2 == R.drawable.abc_edit_text_material) {
                e2 = android.support.v7.a.a.b.a(context, R.color.abc_tint_edittext);
            } else if (i2 == R.drawable.abc_switch_track_mtrl_alpha) {
                e2 = android.support.v7.a.a.b.a(context, R.color.abc_tint_switch_track);
            } else if (i2 == R.drawable.abc_switch_thumb_material) {
                e2 = android.support.v7.a.a.b.a(context, R.color.abc_tint_switch_thumb);
            } else if (i2 == R.drawable.abc_btn_default_mtrl_shape) {
                e2 = b(context);
            } else if (i2 == R.drawable.abc_btn_borderless_material) {
                e2 = c(context);
            } else if (i2 == R.drawable.abc_btn_colored_material) {
                e2 = d(context);
            } else if (i2 == R.drawable.abc_spinner_mtrl_am_alpha || i2 == R.drawable.abc_spinner_textfield_background_material) {
                e2 = android.support.v7.a.a.b.a(context, R.color.abc_tint_spinner);
            } else if (a(e, i2)) {
                e2 = aq.b(context, R.attr.colorControlNormal);
            } else if (a(h, i2)) {
                e2 = android.support.v7.a.a.b.a(context, R.color.abc_tint_default);
            } else if (a(i, i2)) {
                e2 = android.support.v7.a.a.b.a(context, R.color.abc_tint_btn_checkable);
            } else if (i2 == R.drawable.abc_seekbar_thumb_material) {
                e2 = android.support.v7.a.a.b.a(context, R.color.abc_tint_seek_thumb);
            }
            if (e2 != null) {
                a(context, i2, e2);
            }
        }
        return e2;
    }

    private ColorStateList e(Context context, int i2) {
        android.support.v4.f.l<ColorStateList> lVar;
        if (this.j != null && (lVar = this.j.get(context)) != null) {
            return lVar.a(i2);
        }
        return null;
    }

    private void a(Context context, int i2, ColorStateList colorStateList) {
        if (this.j == null) {
            this.j = new WeakHashMap<>();
        }
        android.support.v4.f.l<ColorStateList> lVar = this.j.get(context);
        if (lVar == null) {
            lVar = new android.support.v4.f.l<>();
            this.j.put(context, lVar);
        }
        lVar.c(i2, colorStateList);
    }

    private ColorStateList b(Context context) {
        return f(context, aq.a(context, R.attr.colorButtonNormal));
    }

    private ColorStateList c(Context context) {
        return f(context, 0);
    }

    private ColorStateList d(Context context) {
        return f(context, aq.a(context, R.attr.colorAccent));
    }

    private ColorStateList f(Context context, int i2) {
        int a2 = aq.a(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{aq.f878a, aq.d, aq.b, aq.h}, new int[]{aq.c(context, R.attr.colorButtonNormal), android.support.v4.b.a.a(a2, i2), android.support.v4.b.a.a(a2, i2), i2});
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppCompatDrawableManager.java */
    /* loaded from: classes.dex */
    public static class b extends android.support.v4.f.g<Integer, PorterDuffColorFilter> {
        public b(int i) {
            super(i);
        }

        PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(b(i, mode)));
        }

        PorterDuffColorFilter a(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(b(i, mode)), porterDuffColorFilter);
        }

        private static int b(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Drawable drawable, at atVar, int[] iArr) {
        if (w.c(drawable) && drawable.mutate() != drawable) {
            Log.d("AppCompatDrawableManager", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (atVar.d || atVar.c) {
            drawable.setColorFilter(a(atVar.d ? atVar.f880a : null, atVar.c ? atVar.b : f901a, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    private static PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return a(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static PorterDuffColorFilter a(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter a2 = c.a(i2, mode);
        if (a2 == null) {
            PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(i2, mode);
            c.a(i2, mode, porterDuffColorFilter);
            return porterDuffColorFilter;
        }
        return a2;
    }

    private static void a(Drawable drawable, int i2, PorterDuff.Mode mode) {
        if (w.c(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = f901a;
        }
        drawable.setColorFilter(a(i2, mode));
    }

    private void e(Context context) {
        if (!this.p) {
            this.p = true;
            Drawable a2 = a(context, R.drawable.abc_vector_test);
            if (a2 == null || !a(a2)) {
                this.p = false;
                throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
            }
        }
    }

    private static boolean a(Drawable drawable) {
        return (drawable instanceof android.support.graphics.drawable.g) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppCompatDrawableManager.java */
    /* loaded from: classes.dex */
    public static class d implements c {
        d() {
        }

        @Override // android.support.v7.widget.h.c
        @SuppressLint({"NewApi"})
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return android.support.graphics.drawable.g.a(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppCompatDrawableManager.java */
    @TargetApi(11)
    /* loaded from: classes.dex */
    public static class a implements c {
        a() {
        }

        @Override // android.support.v7.widget.h.c
        @SuppressLint({"NewApi"})
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return android.support.graphics.drawable.c.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }
}
