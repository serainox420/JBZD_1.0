package com.google.android.gms.tagmanager;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
/* loaded from: classes2.dex */
public class PreviewActivity extends Activity {
    private void zzp(String str, String str2, String str3) {
        AlertDialog create = new AlertDialog.Builder(this).create();
        create.setTitle(str);
        create.setMessage(str2);
        create.setButton(-1, str3, new DialogInterface.OnClickListener(this) { // from class: com.google.android.gms.tagmanager.PreviewActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        create.show();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            zzbo.zzbg("Preview activity");
            Uri data = getIntent().getData();
            if (!TagManager.getInstance(this).zzv(data)) {
                String valueOf = String.valueOf(data);
                String sb = new StringBuilder(String.valueOf(valueOf).length() + 73).append("Cannot preview the app with the uri: ").append(valueOf).append(". Launching current version instead.").toString();
                zzbo.zzbh(sb);
                zzp("Preview failure", sb, "Continue");
            }
            Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
            if (launchIntentForPackage == null) {
                String valueOf2 = String.valueOf(getPackageName());
                zzbo.zzbg(valueOf2.length() != 0 ? "No launch activity found for package name: ".concat(valueOf2) : new String("No launch activity found for package name: "));
                return;
            }
            String valueOf3 = String.valueOf(getPackageName());
            zzbo.zzbg(valueOf3.length() != 0 ? "Invoke the launch activity for package name: ".concat(valueOf3) : new String("Invoke the launch activity for package name: "));
            startActivity(launchIntentForPackage);
        } catch (Exception e) {
            String valueOf4 = String.valueOf(e.getMessage());
            zzbo.e(valueOf4.length() != 0 ? "Calling preview threw an exception: ".concat(valueOf4) : new String("Calling preview threw an exception: "));
        }
    }
}
