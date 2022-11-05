package pl.jbzd.app.ui.view.dialog;

import android.app.DialogFragment;
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
import com.mobsandgeeks.saripaar.annotation.Email;
import java.util.List;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.EditText;
import pl.jbzd.core.ui.view.LoaderLayout;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes.dex */
public class RestorePasswordDialog extends DialogFragment implements Validator.ValidationListener {

    /* renamed from: a  reason: collision with root package name */
    private Unbinder f5932a;
    private Validator b;
    @BindView
    TextView button;
    @BindView
    ImageView close;
    @Email(message = "Wprowdź poprawny adres email")
    @BindView
    EditText edit;
    @BindView
    LoaderLayout loader;

    /* loaded from: classes3.dex */
    public interface a {
        boolean a(RestorePasswordDialog restorePasswordDialog, View view);

        boolean a(RestorePasswordDialog restorePasswordDialog, View view, String str);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, R.style.TranslucentDialog);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_restore_password, viewGroup);
        this.f5932a = ButterKnife.a(this, inflate);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.b = new Validator(this);
        this.b.setValidationListener(this);
        getDialog().getWindow().requestFeature(1);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getDialog().setCanceledOnTouchOutside(false);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.RestorePasswordDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                RestorePasswordDialog.this.b.validate();
            }
        });
        this.close.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.RestorePasswordDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) RestorePasswordDialog.this.getActivity();
                if (aVar != null && !aVar.a(RestorePasswordDialog.this, view2)) {
                    RestorePasswordDialog.this.dismissAllowingStateLoss();
                }
            }
        });
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f5932a != null) {
            this.f5932a.a();
        }
    }

    public void a(boolean z) {
        if (this.loader != null) {
            this.loader.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.mobsandgeeks.saripaar.Validator.ValidationListener
    public void onValidationSucceeded() {
        a aVar = (a) getActivity();
        if (aVar != null && !aVar.a(this, this.button, this.edit.getText().toString().trim())) {
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
