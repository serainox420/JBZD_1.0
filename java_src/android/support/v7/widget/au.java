package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;
/* compiled from: TintResources.java */
/* loaded from: classes.dex */
class au extends ai {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Context> f881a;

    public au(Context context, Resources resources) {
        super(resources);
        this.f881a = new WeakReference<>(context);
    }

    @Override // android.support.v7.widget.ai, android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f881a.get();
        if (drawable != null && context != null) {
            h.a();
            h.a(context, i, drawable);
        }
        return drawable;
    }
}
