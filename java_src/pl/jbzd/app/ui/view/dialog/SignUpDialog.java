package pl.jbzd.app.ui.view.dialog;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.mobsandgeeks.saripaar.ValidationError;
import com.mobsandgeeks.saripaar.Validator;
import com.mobsandgeeks.saripaar.annotation.ConfirmPassword;
import com.mobsandgeeks.saripaar.annotation.Email;
import com.mobsandgeeks.saripaar.annotation.Length;
import com.mobsandgeeks.saripaar.annotation.Password;
import java.util.List;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.EditText;
import pl.jbzd.core.ui.view.LoaderLayout;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes.dex */
public class SignUpDialog extends pl.jbzd.app.ui.view.dialog.a implements Validator.ValidationListener {

    /* renamed from: a  reason: collision with root package name */
    private Unbinder f5948a;
    private Validator b;
    @BindView
    TextView btnLogin;
    @BindView
    TextView btnSignup;
    @BindView
    TextView btnSignup2;
    @BindView
    TextView btnTerm;
    private int c = 0;
    @BindView
    ImageView close;
    @Email(message = "Wprowdź poprawny adres email")
    @BindView
    EditText email;
    @BindView
    LoaderLayout loader;
    @BindView
    @Length(message = "Wprowdź poprawny login", min = 6)
    EditText login;
    @Password(message = "Hasło powinno mieć min. 6 znaków", min = 6, scheme = Password.Scheme.ANY)
    @BindView
    EditText password;
    @BindView
    @ConfirmPassword(message = "Wprowadzone hasła nie są takie same")
    EditText passwordConfirm;

    /* loaded from: classes3.dex */
    public interface a {
        boolean a(SignUpDialog signUpDialog, View view);

        boolean a(SignUpDialog signUpDialog, View view, String str, String str2, String str3, String str4);

        boolean b(SignUpDialog signUpDialog, View view);

        boolean c(SignUpDialog signUpDialog, View view);

        boolean d(SignUpDialog signUpDialog, View view);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, R.style.TranslucentDialog);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_signup, viewGroup);
        this.f5948a = ButterKnife.a(this, inflate);
        getDialog().getWindow().setSoftInputMode(2);
        getDialog().getWindow().requestFeature(1);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getDialog().setCanceledOnTouchOutside(false);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.b = new Validator(this);
        this.b.setValidationListener(this);
        this.btnSignup.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.SignUpDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                SignUpDialog.this.c = SignUpDialog.this.btnSignup.getId();
                SignUpDialog.this.b.validate();
            }
        });
        this.btnSignup2.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.SignUpDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) SignUpDialog.this.getActivity();
                if (aVar != null && !aVar.a(SignUpDialog.this, view2)) {
                    SignUpDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        this.btnTerm.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.SignUpDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) SignUpDialog.this.getActivity();
                if (aVar != null && !aVar.c(SignUpDialog.this, view2)) {
                    SignUpDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        this.btnLogin.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.SignUpDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) SignUpDialog.this.getActivity();
                if (aVar != null && !aVar.b(SignUpDialog.this, view2)) {
                    SignUpDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        this.close.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.SignUpDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) SignUpDialog.this.getActivity();
                if (aVar != null && !aVar.d(SignUpDialog.this, view2)) {
                    SignUpDialog.this.dismissAllowingStateLoss();
                }
            }
        });
    }

    @Override // pl.jbzd.app.ui.view.dialog.a
    public void a(boolean z) {
        if (this.loader != null) {
            this.loader.setVisibility(z ? 0 : 8);
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f5948a != null) {
            this.f5948a.a();
        }
    }

    @Override // com.mobsandgeeks.saripaar.Validator.ValidationListener
    public void onValidationSucceeded() {
        a aVar = (a) getActivity();
        if (aVar != null) {
            if (!aVar.a(this, this.c == this.btnSignup2.getId() ? this.btnSignup2 : this.btnSignup, this.login.getText().toString().trim(), this.email.getText().toString().trim(), this.password.getText().toString().trim(), this.passwordConfirm.getText().toString().trim())) {
                dismissAllowingStateLoss();
            }
        }
        this.c = 0;
    }

    @Override // com.mobsandgeeks.saripaar.Validator.ValidationListener
    public void onValidationFailed(List<ValidationError> list) {
        if (getActivity() != null) {
            for (ValidationError validationError : list) {
                View view = validationError.getView();
                String collatedErrorMessage = validationError.getCollatedErrorMessage(getActivity());
                if (view instanceof EditText) {
                    ((EditText) view).setError(collatedErrorMessage);
                } else {
                    Toast.makeText(getActivity(), collatedErrorMessage, 0).show();
                }
            }
        }
    }
}
