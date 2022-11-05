package pl.jbzd.core.a;

import android.content.Context;
import android.graphics.Typeface;
import java.util.WeakHashMap;
/* compiled from: TypefaceProvider.java */
/* loaded from: classes3.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static g f6092a = null;
    private final WeakHashMap<CharSequence, Typeface> b = new WeakHashMap<>();

    public static g a() {
        if (f6092a == null) {
            f6092a = new g();
        }
        return f6092a;
    }

    private g() {
    }

    public Typeface a(Context context, String str) {
        Typeface typeface = this.b.get(str);
        if (typeface == null) {
            Typeface createFromAsset = Typeface.createFromAsset(context.getAssets(), str);
            this.b.put(str, createFromAsset);
            return createFromAsset;
        }
        return typeface;
    }
}
