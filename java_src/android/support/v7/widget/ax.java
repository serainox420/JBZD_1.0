package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import java.lang.ref.WeakReference;
/* compiled from: VectorEnabledTintResources.java */
@RestrictTo
/* loaded from: classes.dex */
public class ax extends Resources {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Context> f886a;

    public static boolean a() {
        return android.support.v7.app.e.l() && Build.VERSION.SDK_INT <= 20;
    }

    public ax(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f886a = new WeakReference<>(context);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Context context = this.f886a.get();
        return context != null ? h.a().a(context, this, i) : super.getDrawable(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable a(int i) {
        return super.getDrawable(i);
    }
}
