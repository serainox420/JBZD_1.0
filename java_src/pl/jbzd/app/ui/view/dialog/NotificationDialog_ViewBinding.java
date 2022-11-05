package pl.jbzd.app.ui.view.dialog;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.b;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.TextView;
import pl.jbzd.core.ui.view.toggleswitch.ToggleSwitch;
/* loaded from: classes3.dex */
public class NotificationDialog_ViewBinding implements Unbinder {
    private NotificationDialog b;

    public NotificationDialog_ViewBinding(NotificationDialog notificationDialog, View view) {
        this.b = notificationDialog;
        notificationDialog.title = (TextView) b.b(view, R.id.title, "field 'title'", TextView.class);
        notificationDialog.mySwitch = (ToggleSwitch) b.b(view, R.id.mySwitch, "field 'mySwitch'", ToggleSwitch.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        NotificationDialog notificationDialog = this.b;
        if (notificationDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        notificationDialog.title = null;
        notificationDialog.mySwitch = null;
    }
}
