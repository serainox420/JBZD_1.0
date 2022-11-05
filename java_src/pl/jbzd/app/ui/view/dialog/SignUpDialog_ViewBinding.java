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
public class SignUpDialog_ViewBinding implements Unbinder {
    private SignUpDialog b;

    public SignUpDialog_ViewBinding(SignUpDialog signUpDialog, View view) {
        this.b = signUpDialog;
        signUpDialog.login = (EditText) b.b(view, R.id.login, "field 'login'", EditText.class);
        signUpDialog.email = (EditText) b.b(view, R.id.email, "field 'email'", EditText.class);
        signUpDialog.password = (EditText) b.b(view, R.id.password, "field 'password'", EditText.class);
        signUpDialog.passwordConfirm = (EditText) b.b(view, R.id.passwordConfirm, "field 'passwordConfirm'", EditText.class);
        signUpDialog.btnSignup = (TextView) b.b(view, R.id.btnSignup, "field 'btnSignup'", TextView.class);
        signUpDialog.btnTerm = (TextView) b.b(view, R.id.btnTerm, "field 'btnTerm'", TextView.class);
        signUpDialog.btnLogin = (TextView) b.b(view, R.id.btnLogin, "field 'btnLogin'", TextView.class);
        signUpDialog.btnSignup2 = (TextView) b.b(view, R.id.btnSignup2, "field 'btnSignup2'", TextView.class);
        signUpDialog.close = (ImageView) b.b(view, R.id.close, "field 'close'", ImageView.class);
        signUpDialog.loader = (LoaderLayout) b.b(view, R.id.loader, "field 'loader'", LoaderLayout.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        SignUpDialog signUpDialog = this.b;
        if (signUpDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        signUpDialog.login = null;
        signUpDialog.email = null;
        signUpDialog.password = null;
        signUpDialog.passwordConfirm = null;
        signUpDialog.btnSignup = null;
        signUpDialog.btnTerm = null;
        signUpDialog.btnLogin = null;
        signUpDialog.btnSignup2 = null;
        signUpDialog.close = null;
        signUpDialog.loader = null;
    }
}
