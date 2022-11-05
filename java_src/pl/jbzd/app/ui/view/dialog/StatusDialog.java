package pl.jbzd.app.ui.view.dialog;

import android.app.DialogFragment;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class StatusDialog extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Unbinder f5954a;
    @BindView
    TextView button;
    private int d;
    @BindView
    TextView title;
    private String b = "";
    private String c = "";

    /* loaded from: classes3.dex */
    public interface a {
        boolean a(View view, int i);
    }

    public static StatusDialog a(int i, String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putInt("ARG_ID", i);
        bundle.putString("ARG_TITLE", str);
        bundle.putString("ARG_BUTTON", str2);
        StatusDialog statusDialog = new StatusDialog();
        statusDialog.setArguments(bundle);
        return statusDialog;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.d = getArguments().getInt("ARG_ID", 0);
        this.b = getArguments().getString("ARG_TITLE", "Sukces");
        this.c = getArguments().getString("ARG_BUTTON", "OK");
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_one_button, viewGroup);
        this.f5954a = ButterKnife.a(this, inflate);
        getDialog().getWindow().requestFeature(1);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.title.setText(this.b);
        this.button.setText(this.c);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.StatusDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) StatusDialog.this.getActivity();
                if (aVar != null && !aVar.a(view2, StatusDialog.this.d)) {
                    StatusDialog.this.dismissAllowingStateLoss();
                }
            }
        });
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f5954a != null) {
            this.f5954a.a();
        }
    }
}
