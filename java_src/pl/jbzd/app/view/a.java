package pl.jbzd.app.view;

import android.content.Context;
import com.google.android.gms.analytics.Tracker;
/* compiled from: BaseFragment.java */
/* loaded from: classes3.dex */
public abstract class a extends pl.jbzd.core.a implements pl.jbzd.app.b.a {

    /* renamed from: a  reason: collision with root package name */
    protected BaseActivity f5976a;

    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context != null && (context instanceof BaseActivity)) {
            this.f5976a = (BaseActivity) context;
        }
    }

    public BaseActivity c() {
        if (this.f5976a != null) {
            return this.f5976a;
        }
        if (getActivity() == null) {
            return null;
        }
        return (BaseActivity) getActivity();
    }

    public Tracker d() {
        BaseActivity c = c();
        if (c != null) {
            return c.e();
        }
        return null;
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }
}
