package pl.jbzd.app.view.menu;

import android.support.v4.widget.DrawerLayout;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import butterknife.internal.b;
import pl.jbzd.R;
import pl.jbzd.app.view.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class MenuActivity_ViewBinding extends BaseActivity_ViewBinding {
    private MenuActivity b;

    public MenuActivity_ViewBinding(MenuActivity menuActivity, View view) {
        super(menuActivity, view);
        this.b = menuActivity;
        menuActivity.layDrawer = (DrawerLayout) b.b(view, R.id.layDrawer, "field 'layDrawer'", DrawerLayout.class);
        menuActivity.rvMenu = (RecyclerView) b.b(view, R.id.rvMenu, "field 'rvMenu'", RecyclerView.class);
    }

    @Override // pl.jbzd.app.view.BaseActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        MenuActivity menuActivity = this.b;
        if (menuActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        menuActivity.layDrawer = null;
        menuActivity.rvMenu = null;
        super.a();
    }
}
