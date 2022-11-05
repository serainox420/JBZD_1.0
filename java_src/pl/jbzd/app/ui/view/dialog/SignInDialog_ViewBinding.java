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
public class SignInDialog_ViewBinding implements Unbinder {
    private SignInDialog b;

    public SignInDialog_ViewBinding(SignInDialog signInDialog, View view) {
        this.b = signInDialog;
        signInDialog.email = (EditText) b.b(view, R.id.email, "field 'email'", EditText.class);
        signInDialog.password = (EditText) b.b(view, R.id.password, "field 'password'", EditText.class);
        signInDialog.btnSignin = (TextView) b.b(view, R.id.btnSignin, "field 'btnSignin'", TextView.class);
        signInDialog.btnSiginWithFacebook = (TextView) b.b(view, R.id.btnSiginWithFacebook, "field 'btnSiginWithFacebook'", TextView.class);
        signInDialog.btnTerm = (TextView) b.b(view, R.id.btnTerm, "field 'btnTerm'", TextView.class);
        signInDialog.btnRestorePassword = (TextView) b.b(view, R.id.btnRestorePassword, "field 'btnRestorePassword'", TextView.class);
        signInDialog.btnSignup = (TextView) b.b(view, R.id.btnSignup, "field 'btnSignup'", TextView.class);
        signInDialog.close = (ImageView) b.b(view, R.id.close, "field 'close'", ImageView.class);
        signInDialog.loader = (LoaderLayout) b.b(view, R.id.loader, "field 'loader'", LoaderLayout.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        SignInDialog signInDialog = this.b;
        if (signInDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        signInDialog.email = null;
        signInDialog.password = null;
        signInDialog.btnSignin = null;
        signInDialog.btnSiginWithFacebook = null;
        signInDialog.btnTerm = null;
        signInDialog.btnRestorePassword = null;
        signInDialog.btnSignup = null;
        signInDialog.close = null;
        signInDialog.loader = null;
    }
}
