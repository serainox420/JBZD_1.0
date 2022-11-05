package pl.jbzd.app.view;

import android.support.v7.widget.Toolbar;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.b;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class BaseActivity_ViewBinding implements Unbinder {
    private BaseActivity b;

    public BaseActivity_ViewBinding(BaseActivity baseActivity, View view) {
        this.b = baseActivity;
        baseActivity.toolbar = (Toolbar) b.b(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        baseActivity.txtToolbarTitle = (TextView) b.b(view, R.id.txtToolbarTitle, "field 'txtToolbarTitle'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        BaseActivity baseActivity = this.b;
        if (baseActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        baseActivity.toolbar = null;
        baseActivity.txtToolbarTitle = null;
    }
}
