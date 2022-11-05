package pl.jbzd.app.ui.view.dialog;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.b;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class StatusDialog_ViewBinding implements Unbinder {
    private StatusDialog b;

    public StatusDialog_ViewBinding(StatusDialog statusDialog, View view) {
        this.b = statusDialog;
        statusDialog.title = (TextView) b.b(view, R.id.title, "field 'title'", TextView.class);
        statusDialog.button = (TextView) b.b(view, R.id.button, "field 'button'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        StatusDialog statusDialog = this.b;
        if (statusDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        statusDialog.title = null;
        statusDialog.button = null;
    }
}
