package pl.jbzd.app.view.settings;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.y;
import android.support.v7.widget.Toolbar;
import android.view.View;
import butterknife.BindView;
import com.google.android.gms.analytics.HitBuilders;
import pl.jbzd.R;
import pl.jbzd.app.view.BaseActivity;
import pl.jbzd.app.view.main.MainActivity;
import pl.jbzd.app.view.menu.model.Item;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class SettingsActivity extends BaseActivity {
    @BindView
    public Toolbar toolbar;
    @BindView
    public TextView txtToolbarTitle;

    @Override // pl.jbzd.app.view.AuthActivity
    public void b() {
    }

    @Override // pl.jbzd.app.view.AuthActivity
    public void c() {
    }

    @Override // pl.jbzd.app.view.AuthActivity, pl.jbzd.core.MvpBaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.user_activity);
        setSupportActionBar(this.toolbar);
        getSupportActionBar().c(false);
        ((Toolbar.LayoutParams) this.txtToolbarTitle.getLayoutParams()).f530a = 17;
        this.txtToolbarTitle.setText(R.string.menu_settings);
        new Handler().post(new Runnable() { // from class: pl.jbzd.app.view.settings.SettingsActivity.1
            @Override // java.lang.Runnable
            public void run() {
                SettingsActivity.this.getSupportActionBar().b(true);
                SettingsActivity.this.getSupportActionBar().a(true);
            }
        });
        this.toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.settings.SettingsActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SettingsActivity.this.onBackPressed();
            }
        });
        if (bundle == null) {
            SettingsFragment settingsFragment = (SettingsFragment) getSupportFragmentManager().a(MainActivity.FragmentType.SETTINGS.name());
            if (settingsFragment == null) {
                settingsFragment = SettingsFragment.a(new Item());
            }
            y a2 = getSupportFragmentManager().a();
            if (settingsFragment.isAdded()) {
                a2.c(settingsFragment);
            } else {
                a2.a(R.id.fragmentContainer, settingsFragment, MainActivity.FragmentType.SETTINGS.name());
            }
            a2.b();
        }
    }

    @Override // pl.jbzd.app.view.AuthActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (e() != null) {
            e().setScreenName("Ustawienia");
            e().send(new HitBuilders.ScreenViewBuilder().build());
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        a(true);
    }

    private void a(boolean z) {
        finish();
        overridePendingTransition(0, z ? R.anim.from_right_to_left : 0);
    }
}
