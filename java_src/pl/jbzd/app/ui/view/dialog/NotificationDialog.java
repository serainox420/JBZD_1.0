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
import pl.jbzd.core.ui.view.toggleswitch.BaseToggleSwitch;
import pl.jbzd.core.ui.view.toggleswitch.ToggleSwitch;
/* loaded from: classes3.dex */
public class NotificationDialog extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Unbinder f5930a;
    private boolean b = false;
    @BindView
    ToggleSwitch mySwitch;
    @BindView
    TextView title;

    /* loaded from: classes3.dex */
    public interface a {
        boolean b(View view, boolean z);
    }

    public static NotificationDialog a(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("NOTIFICATIONS_ON", z);
        NotificationDialog notificationDialog = new NotificationDialog();
        notificationDialog.setArguments(bundle);
        return notificationDialog;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b = getArguments().getBoolean("NOTIFICATIONS_ON", false);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_switch, viewGroup);
        this.f5930a = ButterKnife.a(this, inflate);
        getDialog().getWindow().requestFeature(1);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        return inflate;
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.b) {
            this.mySwitch.setCheckedTogglePosition(1);
            this.title.setText(R.string.popup_notifications_on);
        } else {
            this.mySwitch.setCheckedTogglePosition(0);
            this.title.setText(R.string.popup_notifications_off);
        }
        this.mySwitch.setOnToggleSwitchChangeListener(new BaseToggleSwitch.a() { // from class: pl.jbzd.app.ui.view.dialog.NotificationDialog.1
            @Override // pl.jbzd.core.ui.view.toggleswitch.BaseToggleSwitch.a
            public void a(int i, boolean z) {
                if (z) {
                    a aVar = (a) NotificationDialog.this.getActivity();
                    if (aVar != null) {
                        aVar.b(NotificationDialog.this.mySwitch, i == 1);
                    }
                    if (i == 1) {
                        NotificationDialog.this.title.setText(R.string.popup_notifications_on);
                    } else {
                        NotificationDialog.this.title.setText(R.string.popup_notifications_off);
                    }
                }
            }
        });
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f5930a != null) {
            this.f5930a.a();
        }
    }
}
