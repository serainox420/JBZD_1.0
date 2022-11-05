package pl.jbzd.core;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import butterknife.ButterKnife;
import butterknife.Unbinder;
/* compiled from: MvpBaseFragment.java */
/* loaded from: classes3.dex */
public abstract class a extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private Unbinder f6088a;

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((MvpApplication) getActivity().getApplication()).a(this);
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f6088a = ButterKnife.a(this, view);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f6088a != null) {
            this.f6088a.a();
        }
    }
}
