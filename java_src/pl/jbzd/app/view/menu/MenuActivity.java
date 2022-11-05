package pl.jbzd.app.view.menu;

import android.os.Bundle;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.a;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import butterknife.BindView;
import pl.jbzd.R;
import pl.jbzd.app.view.BaseActivity;
/* loaded from: classes3.dex */
public abstract class MenuActivity extends BaseActivity {
    protected a h;
    @BindView
    public DrawerLayout layDrawer;
    @BindView
    public RecyclerView rvMenu;

    @Override // pl.jbzd.app.view.AuthActivity, pl.jbzd.core.MvpBaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // pl.jbzd.app.view.BaseActivity, pl.jbzd.core.MvpBaseActivity, android.support.v7.app.AppCompatActivity, android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        this.h = new a(this, this.layDrawer, this.toolbar, R.string.drawer_open, R.string.drawer_close) { // from class: pl.jbzd.app.view.menu.MenuActivity.1
            @Override // android.support.v7.app.a, android.support.v4.widget.DrawerLayout.f
            public void a(View view) {
                super.a(view);
                MenuActivity.this.invalidateOptionsMenu();
            }

            @Override // android.support.v7.app.a, android.support.v4.widget.DrawerLayout.f
            public void b(View view) {
                super.b(view);
                MenuActivity.this.invalidateOptionsMenu();
            }

            @Override // android.support.v7.app.a, android.support.v4.widget.DrawerLayout.f
            public void a(View view, float f) {
                super.a(view, f);
            }
        };
        this.layDrawer.a(this.h);
        this.layDrawer.post(new Runnable() { // from class: pl.jbzd.app.view.menu.MenuActivity.2
            @Override // java.lang.Runnable
            public void run() {
                MenuActivity.this.h.a();
            }
        });
        this.rvMenu.setHasFixedSize(true);
        this.rvMenu.setLayoutManager(new LinearLayoutManager(this));
        this.rvMenu.addItemDecoration(new pl.jbzd.core.ui.a.a(pl.jbzd.core.a.a.a(1)));
    }
}
