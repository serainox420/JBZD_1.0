package pl.jbzd.app.view.settings;

import android.support.v7.widget.Toolbar;
import android.view.View;
import butterknife.internal.b;
import pl.jbzd.R;
import pl.jbzd.app.view.BaseActivity_ViewBinding;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class SettingsActivity_ViewBinding extends BaseActivity_ViewBinding {
    private SettingsActivity b;

    public SettingsActivity_ViewBinding(SettingsActivity settingsActivity, View view) {
        super(settingsActivity, view);
        this.b = settingsActivity;
        settingsActivity.toolbar = (Toolbar) b.b(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        settingsActivity.txtToolbarTitle = (TextView) b.b(view, R.id.txtToolbarTitle, "field 'txtToolbarTitle'", TextView.class);
    }

    @Override // pl.jbzd.app.view.BaseActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SettingsActivity settingsActivity = this.b;
        if (settingsActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        settingsActivity.toolbar = null;
        settingsActivity.txtToolbarTitle = null;
        super.a();
    }
}
