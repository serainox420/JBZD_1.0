package pl.jbzd.app.view;

import android.support.v7.widget.Toolbar;
import butterknife.BindView;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public abstract class BaseActivity extends AuthActivity {
    @BindView
    public Toolbar toolbar;
    @BindView
    public TextView txtToolbarTitle;

    @Override // pl.jbzd.core.MvpBaseActivity, android.support.v7.app.AppCompatActivity, android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        setSupportActionBar(this.toolbar);
        getSupportActionBar().a(true);
        getSupportActionBar().c(false);
    }
}
