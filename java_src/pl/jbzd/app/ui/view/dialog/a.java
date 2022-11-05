package pl.jbzd.app.ui.view.dialog;

import android.app.DialogFragment;
/* compiled from: LoadingDialog.java */
/* loaded from: classes3.dex */
public abstract class a extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private int f5956a = -1;

    public abstract void a(boolean z);

    public void a(int i) {
        this.f5956a = i;
    }

    public int a() {
        return this.f5956a;
    }

    @Override // android.app.DialogFragment
    public void dismiss() {
        this.f5956a = -1;
        super.dismiss();
    }

    @Override // android.app.DialogFragment
    public void dismissAllowingStateLoss() {
        this.f5956a = -1;
        super.dismissAllowingStateLoss();
    }
}
