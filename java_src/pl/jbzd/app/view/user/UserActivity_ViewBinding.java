package pl.jbzd.app.view.user;

import android.support.v7.widget.Toolbar;
import android.view.View;
import butterknife.internal.b;
import pl.jbzd.R;
import pl.jbzd.app.view.BaseActivity_ViewBinding;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class UserActivity_ViewBinding extends BaseActivity_ViewBinding {
    private UserActivity b;

    public UserActivity_ViewBinding(UserActivity userActivity, View view) {
        super(userActivity, view);
        this.b = userActivity;
        userActivity.toolbar = (Toolbar) b.b(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        userActivity.txtToolbarTitle = (TextView) b.b(view, R.id.txtToolbarTitle, "field 'txtToolbarTitle'", TextView.class);
    }

    @Override // pl.jbzd.app.view.BaseActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        UserActivity userActivity = this.b;
        if (userActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        userActivity.toolbar = null;
        userActivity.txtToolbarTitle = null;
        super.a();
    }
}
