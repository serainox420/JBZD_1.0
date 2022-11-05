package pl.jbzd.app.ui.view.dialog;

import android.app.DialogFragment;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.facebook.share.internal.ShareConstants;
import pl.jbzd.R;
import pl.jbzd.app.model.Media;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class ShareMenuDialog extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Unbinder f5935a;
    private Media b;
    @BindView
    TextView btnCancel;
    @BindView
    TextView btnCopy;
    @BindView
    TextView btnSave;
    @BindView
    TextView btnShare;
    @BindView
    LinearLayout dialog;
    @BindView
    RelativeLayout layout;

    /* loaded from: classes3.dex */
    public interface a {
        boolean a(ShareMenuDialog shareMenuDialog, View view, Media media);

        boolean b(ShareMenuDialog shareMenuDialog, View view, Media media);

        boolean c(ShareMenuDialog shareMenuDialog, View view, Media media);

        boolean d(ShareMenuDialog shareMenuDialog, View view, Media media);
    }

    public void a(Media media) {
        this.b = media;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.b = (Media) bundle.getParcelable(ShareConstants.WEB_DIALOG_PARAM_MEDIA);
            a(this.b);
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_menu, viewGroup);
        this.f5935a = ButterKnife.a(this, inflate);
        getDialog().getWindow().requestFeature(1);
        getDialog().getWindow().setLayout(-1, -1);
        getDialog().getWindow().setGravity(7);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getDialog().setCanceledOnTouchOutside(true);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setStyle(1, R.style.DefaultThemeDialog);
        this.btnShare.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.ShareMenuDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) ShareMenuDialog.this.getActivity();
                if (aVar != null && !aVar.a(ShareMenuDialog.this, view2, ShareMenuDialog.this.b)) {
                    ShareMenuDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        this.btnCopy.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.ShareMenuDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) ShareMenuDialog.this.getActivity();
                if (aVar != null && !aVar.b(ShareMenuDialog.this, view2, ShareMenuDialog.this.b)) {
                    ShareMenuDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        this.btnSave.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.ShareMenuDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) ShareMenuDialog.this.getActivity();
                if (aVar != null && !aVar.c(ShareMenuDialog.this, view2, ShareMenuDialog.this.b)) {
                    ShareMenuDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        this.btnCancel.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.ShareMenuDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) ShareMenuDialog.this.getActivity();
                if (aVar != null && !aVar.d(ShareMenuDialog.this, view2, ShareMenuDialog.this.b)) {
                    ShareMenuDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        this.layout.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.ShareMenuDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ShareMenuDialog.this.dismissAllowingStateLoss();
            }
        });
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f5935a != null) {
            this.f5935a.a();
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(ShareConstants.WEB_DIALOG_PARAM_MEDIA, this.b);
    }
}
