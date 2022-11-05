package pl.jbzd.app.ui.view.dialog;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import butterknife.Unbinder;
import butterknife.internal.b;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class ShareMenuDialog_ViewBinding implements Unbinder {
    private ShareMenuDialog b;

    public ShareMenuDialog_ViewBinding(ShareMenuDialog shareMenuDialog, View view) {
        this.b = shareMenuDialog;
        shareMenuDialog.layout = (RelativeLayout) b.b(view, R.id.layout, "field 'layout'", RelativeLayout.class);
        shareMenuDialog.dialog = (LinearLayout) b.b(view, R.id.dialog, "field 'dialog'", LinearLayout.class);
        shareMenuDialog.btnShare = (TextView) b.b(view, R.id.btnShare, "field 'btnShare'", TextView.class);
        shareMenuDialog.btnCopy = (TextView) b.b(view, R.id.btnCopy, "field 'btnCopy'", TextView.class);
        shareMenuDialog.btnSave = (TextView) b.b(view, R.id.btnSave, "field 'btnSave'", TextView.class);
        shareMenuDialog.btnCancel = (TextView) b.b(view, R.id.btnCancel, "field 'btnCancel'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        ShareMenuDialog shareMenuDialog = this.b;
        if (shareMenuDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        shareMenuDialog.layout = null;
        shareMenuDialog.dialog = null;
        shareMenuDialog.btnShare = null;
        shareMenuDialog.btnCopy = null;
        shareMenuDialog.btnSave = null;
        shareMenuDialog.btnCancel = null;
    }
}
