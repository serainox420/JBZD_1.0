package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.util.Log;
import com.google.android.gms.internal.zzabf;
/* loaded from: classes2.dex */
public abstract class zzi implements DialogInterface.OnClickListener {
    public static zzi zza(final Activity activity, final Intent intent, final int i) {
        return new zzi() { // from class: com.google.android.gms.common.internal.zzi.1
            @Override // com.google.android.gms.common.internal.zzi
            public void zzxT() {
                if (intent != null) {
                    activity.startActivityForResult(intent, i);
                }
            }
        };
    }

    public static zzi zza(final Fragment fragment, final Intent intent, final int i) {
        return new zzi() { // from class: com.google.android.gms.common.internal.zzi.2
            @Override // com.google.android.gms.common.internal.zzi
            public void zzxT() {
                if (intent != null) {
                    fragment.startActivityForResult(intent, i);
                }
            }
        };
    }

    public static zzi zza(final zzabf zzabfVar, final Intent intent, final int i) {
        return new zzi() { // from class: com.google.android.gms.common.internal.zzi.3
            @Override // com.google.android.gms.common.internal.zzi
            public void zzxT() {
                if (intent != null) {
                    zzabfVar.startActivityForResult(intent, i);
                }
            }
        };
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            try {
                zzxT();
                dialogInterface.dismiss();
            } catch (ActivityNotFoundException e) {
                Log.e("DialogRedirect", "Failed to start resolution intent", e);
                dialogInterface.dismiss();
            }
        } catch (Throwable th) {
            dialogInterface.dismiss();
            throw th;
        }
    }

    protected abstract void zzxT();
}
