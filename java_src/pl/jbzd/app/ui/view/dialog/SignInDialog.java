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
import com.mobsandgeeks.saripaar.annotation.NotEmpty;
import com.mobsandgeeks.saripaar.annotation.Password;
import java.util.List;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.EditText;
import pl.jbzd.core.ui.view.LoaderLayout;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes.dex */
public class SignInDialog extends pl.jbzd.app.ui.view.dialog.a implements Validator.ValidationListener {

    /* renamed from: a  reason: collision with root package name */
    private Unbinder f5941a;
    private Validator b;
    @BindView
    TextView btnRestorePassword;
    @BindView
    TextView btnSiginWithFacebook;
    @BindView
    TextView btnSignin;
    @BindView
    TextView btnSignup;
    @BindView
    TextView btnTerm;
    @BindView
    ImageView close;
    @BindView
    @NotEmpty(message = "Wprowdź adres email lub login")
    EditText email;
    @BindView
    LoaderLayout loader;
    @Password(message = "Hasło powinno mieć min. 6 znaków", min = 6, scheme = Password.Scheme.ANY)
    @BindView
    EditText password;

    /* loaded from: classes3.dex */
    public interface a {
        boolean a(SignInDialog signInDialog, View view);

        boolean a(SignInDialog signInDialog, View view, String str, String str2);

        boolean b(SignInDialog signInDialog, View view);

        boolean c(SignInDialog signInDialog, View view);

        boolean d(SignInDialog signInDialog, View view);

        boolean e(SignInDialog signInDialog, View view);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, R.style.TranslucentDialog);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_signin, viewGroup);
        this.f5941a = ButterKnife.a(this, inflate);
        getDialog().getWindow().setSoftInputMode(2);
        getDialog().getWindow().requestFeature(1);
        getDialog().getWindow().setLayout(-1, -1);
        getDialog().getWindow().setGravity(7);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getDialog().setCanceledOnTouchOutside(false);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.b = new Validator(this);
        this.b.setValidationListener(this);
        this.btnSignin.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.SignInDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                SignInDialog.this.b.validate();
            }
        });
        this.btnSiginWithFacebook.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.SignInDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) SignInDialog.this.getActivity();
                if (aVar != null && !aVar.a(SignInDialog.this, view2)) {
                    SignInDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        this.btnTerm.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.SignInDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) SignInDialog.this.getActivity();
                if (aVar != null && !aVar.b(SignInDialog.this, view2)) {
                    SignInDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        this.btnRestorePassword.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.SignInDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) SignInDialog.this.getActivity();
                if (aVar != null && !aVar.c(SignInDialog.this, view2)) {
                    SignInDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        this.btnSignup.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.SignInDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) SignInDialog.this.getActivity();
                if (aVar != null && !aVar.d(SignInDialog.this, view2)) {
                    SignInDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        this.close.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.SignInDialog.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) SignInDialog.this.getActivity();
                if (aVar != null && !aVar.e(SignInDialog.this, view2)) {
                    SignInDialog.this.dismissAllowingStateLoss();
                }
            }
        });
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f5941a != null) {
            this.f5941a.a();
        }
    }

    @Override // pl.jbzd.app.ui.view.dialog.a
    public void a(boolean z) {
        if (this.loader != null) {
            this.loader.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.mobsandgeeks.saripaar.Validator.ValidationListener
    public void onValidationSucceeded() {
        a aVar = (a) getActivity();
        if (aVar != null && !aVar.a(this, this.btnSignin, this.email.getText().toString().trim(), this.password.getText().toString().trim())) {
            dismissAllowingStateLoss();
        }
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
