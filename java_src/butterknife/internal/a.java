package butterknife.internal;

import android.view.View;
/* compiled from: DebouncingOnClickListener.java */
/* loaded from: classes.dex */
public abstract class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    static boolean f955a = true;
    private static final Runnable b = new Runnable() { // from class: butterknife.internal.a.1
        @Override // java.lang.Runnable
        public void run() {
            a.f955a = true;
        }
    };

    public abstract void a(View view);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (f955a) {
            f955a = false;
            view.post(b);
            a(view);
        }
    }
}
