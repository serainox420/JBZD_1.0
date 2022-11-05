package pl.jbzd.app.view.settings;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.a;
import butterknife.internal.b;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class SettingsFragment_ViewBinding implements Unbinder {
    private SettingsFragment b;
    private View c;
    private View d;
    private View e;
    private View f;
    private View g;
    private View h;
    private View i;

    public SettingsFragment_ViewBinding(final SettingsFragment settingsFragment, View view) {
        this.b = settingsFragment;
        View a2 = b.a(view, R.id.btnLoginLogout, "field 'btnLoginLogout' and method 'login'");
        settingsFragment.btnLoginLogout = (TextView) b.c(a2, R.id.btnLoginLogout, "field 'btnLoginLogout'", TextView.class);
        this.c = a2;
        a2.setOnClickListener(new a() { // from class: pl.jbzd.app.view.settings.SettingsFragment_ViewBinding.1
            @Override // butterknife.internal.a
            public void a(View view2) {
                settingsFragment.login(view2);
            }
        });
        View a3 = b.a(view, R.id.btnFacebookConnect, "method 'connectWithFacebok'");
        this.d = a3;
        a3.setOnClickListener(new a() { // from class: pl.jbzd.app.view.settings.SettingsFragment_ViewBinding.2
            @Override // butterknife.internal.a
            public void a(View view2) {
                settingsFragment.connectWithFacebok(view2);
            }
        });
        View a4 = b.a(view, R.id.btnFanpage, "method 'gotoFanpage'");
        this.e = a4;
        a4.setOnClickListener(new a() { // from class: pl.jbzd.app.view.settings.SettingsFragment_ViewBinding.3
            @Override // butterknife.internal.a
            public void a(View view2) {
                settingsFragment.gotoFanpage(view2);
            }
        });
        View a5 = b.a(view, R.id.btnFriends, "method 'inviteYourFriends'");
        this.f = a5;
        a5.setOnClickListener(new a() { // from class: pl.jbzd.app.view.settings.SettingsFragment_ViewBinding.4
            @Override // butterknife.internal.a
            public void a(View view2) {
                settingsFragment.inviteYourFriends(view2);
            }
        });
        View a6 = b.a(view, R.id.btnGooglePlay, "method 'gotoGooglePlay'");
        this.g = a6;
        a6.setOnClickListener(new a() { // from class: pl.jbzd.app.view.settings.SettingsFragment_ViewBinding.5
            @Override // butterknife.internal.a
            public void a(View view2) {
                settingsFragment.gotoGooglePlay(view2);
            }
        });
        View a7 = b.a(view, R.id.btnNotifications, "method 'setNotificationsy'");
        this.h = a7;
        a7.setOnClickListener(new a() { // from class: pl.jbzd.app.view.settings.SettingsFragment_ViewBinding.6
            @Override // butterknife.internal.a
            public void a(View view2) {
                settingsFragment.setNotificationsy(view2);
            }
        });
        View a8 = b.a(view, R.id.btnClearMemory, "method 'clearMemory'");
        this.i = a8;
        a8.setOnClickListener(new a() { // from class: pl.jbzd.app.view.settings.SettingsFragment_ViewBinding.7
            @Override // butterknife.internal.a
            public void a(View view2) {
                settingsFragment.clearMemory(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void a() {
        SettingsFragment settingsFragment = this.b;
        if (settingsFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        settingsFragment.btnLoginLogout = null;
        this.c.setOnClickListener(null);
        this.c = null;
        this.d.setOnClickListener(null);
        this.d = null;
        this.e.setOnClickListener(null);
        this.e = null;
        this.f.setOnClickListener(null);
        this.f = null;
        this.g.setOnClickListener(null);
        this.g = null;
        this.h.setOnClickListener(null);
        this.h = null;
        this.i.setOnClickListener(null);
        this.i = null;
    }
}
