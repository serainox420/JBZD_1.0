package pl.jbzd.app.ui.view.dialog;

import android.view.View;
import android.widget.ImageView;
import butterknife.Unbinder;
import butterknife.internal.b;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.EditText;
import pl.jbzd.core.ui.view.LoaderLayout;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class RestorePasswordDialog_ViewBinding implements Unbinder {
    private RestorePasswordDialog b;

    public RestorePasswordDialog_ViewBinding(RestorePasswordDialog restorePasswordDialog, View view) {
        this.b = restorePasswordDialog;
        restorePasswordDialog.edit = (EditText) b.b(view, R.id.edit, "field 'edit'", EditText.class);
        restorePasswordDialog.button = (TextView) b.b(view, R.id.button, "field 'button'", TextView.class);
        restorePasswordDialog.close = (ImageView) b.b(view, R.id.close, "field 'close'", ImageView.class);
        restorePasswordDialog.loader = (LoaderLayout) b.b(view, R.id.loader, "field 'loader'", LoaderLayout.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        RestorePasswordDialog restorePasswordDialog = this.b;
        if (restorePasswordDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        restorePasswordDialog.edit = null;
        restorePasswordDialog.button = null;
        restorePasswordDialog.close = null;
        restorePasswordDialog.loader = null;
    }
}
