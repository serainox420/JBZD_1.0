package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.google.android.gms.R;
/* loaded from: classes2.dex */
public class zzbby {
    private final Intent mIntent;
    private final Context zzaRZ;
    private final Context zzanM;
    private final zzbcj zzbIx;

    public zzbby(Intent intent, Context context, Context context2, zzbcj zzbcjVar) {
        this.zzanM = context;
        this.zzaRZ = context2;
        this.mIntent = intent;
        this.zzbIx = zzbcjVar;
    }

    private void zzp(String str, String str2, String str3) {
        AlertDialog create = new AlertDialog.Builder(this.zzanM).create();
        create.setTitle(str);
        create.setMessage(str2);
        create.setButton(-1, str3, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzbby.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String packageName = zzbby.this.zzanM.getPackageName();
                Intent launchIntentForPackage = zzbby.this.zzanM.getPackageManager().getLaunchIntentForPackage(packageName);
                if (launchIntentForPackage == null) {
                    String valueOf = String.valueOf(packageName);
                    zzbbu.zzbh(valueOf.length() != 0 ? "No launch activity found for package name: ".concat(valueOf) : new String("No launch activity found for package name: "));
                    return;
                }
                String valueOf2 = String.valueOf(packageName);
                zzbbu.zzbg(valueOf2.length() != 0 ? "Invoke the launch activity for package name: ".concat(valueOf2) : new String("Invoke the launch activity for package name: "));
                zzbby.this.zzanM.startActivity(launchIntentForPackage);
            }
        });
        create.show();
    }

    public void zzSf() {
        try {
            this.zzbIx.zzx(this.mIntent.getData());
            zzp(this.zzaRZ.getResources().getString(R.string.tagmanager_preview_dialog_title), this.zzaRZ.getResources().getString(R.string.tagmanager_preview_dialog_message), this.zzaRZ.getResources().getString(R.string.tagmanager_preview_dialog_button));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbbu.e(valueOf.length() != 0 ? "Calling preview threw an exception: ".concat(valueOf) : new String("Calling preview threw an exception: "));
        }
    }
}
