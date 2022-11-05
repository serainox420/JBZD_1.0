package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.q;
import android.support.v4.app.u;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public class SupportErrorDialogFragment extends q {
    private Dialog mDialog = null;
    private DialogInterface.OnCancelListener zzayl = null;

    public static SupportErrorDialogFragment newInstance(Dialog dialog) {
        return newInstance(dialog, null);
    }

    public static SupportErrorDialogFragment newInstance(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
        Dialog dialog2 = (Dialog) zzac.zzb(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        supportErrorDialogFragment.mDialog = dialog2;
        if (onCancelListener != null) {
            supportErrorDialogFragment.zzayl = onCancelListener;
        }
        return supportErrorDialogFragment;
    }

    @Override // android.support.v4.app.q, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (this.zzayl != null) {
            this.zzayl.onCancel(dialogInterface);
        }
    }

    @Override // android.support.v4.app.q
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.mDialog == null) {
            setShowsDialog(false);
        }
        return this.mDialog;
    }

    @Override // android.support.v4.app.q
    public void show(u uVar, String str) {
        super.show(uVar, str);
    }
}
