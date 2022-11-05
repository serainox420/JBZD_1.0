package android.support.v4.app;

import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* compiled from: NoSaveStateFrameLayout.java */
/* loaded from: classes.dex */
class ag extends FrameLayout {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewGroup a(View view) {
        ag agVar = new ag(view.getContext());
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            agVar.setLayoutParams(layoutParams);
        }
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        agVar.addView(view);
        return agVar;
    }

    public ag(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }
}
