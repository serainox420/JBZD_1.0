package com.apprupt.sdk;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.apprupt.sdk.Logger;
import com.google.android.gms.drive.DriveFile;
/* loaded from: classes.dex */
class Launcher {

    /* renamed from: a  reason: collision with root package name */
    private Context f1914a;

    private boolean a(Intent intent) {
        return this.f1914a.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    private void b(Intent intent) {
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        if (Build.VERSION.SDK_INT < 21) {
            intent.addFlags(524288);
        }
        intent.addFlags(1073741824);
    }

    private Intent a(Uri uri, String str) {
        Intent intent = new Intent(str, uri);
        b(intent);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Uri uri) {
        return b(uri, "android.intent.action.VIEW");
    }

    private boolean b(Uri uri, String str) {
        return c(a(uri, str));
    }

    private boolean c(Intent intent) {
        boolean z = false;
        z = false;
        try {
            if (!a(intent)) {
                Logger.a("LAUNCHER2").a("Intent not callable " + intent.getData().toString());
            } else {
                this.f1914a.startActivity(intent);
                z = true;
            }
        } catch (ActivityNotFoundException e) {
            Logger.log a2 = Logger.a("LAUNCHER2");
            Object[] objArr = new Object[2];
            char c = z ? 1 : 0;
            char c2 = z ? 1 : 0;
            char c3 = z ? 1 : 0;
            objArr[c] = "Cannot find proper activity for intent";
            objArr[1] = e;
            a2.a(objArr);
        }
        return z;
    }

    /* renamed from: com.apprupt.sdk.Launcher$1  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri f1915a;
        final /* synthetic */ Launcher b;

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                this.b.a(this.f1915a);
            }
        }
    }
}
