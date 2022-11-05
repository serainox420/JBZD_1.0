package com.adcolony.sdk;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.drive.DriveFile;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class MessagingLaunchActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private static final String f1002a = "MessagingLaunchActivity";

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        cb.b(f1002a, "onCreate ->" + intent, true);
        bz.aK().a(intent);
        a();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        cb.b(f1002a, "onNewIntent ->" + intent, true);
        bz.aK().a(intent);
        a();
    }

    private void a() {
        cb.b(f1002a, "start App", true);
        try {
            PackageManager packageManager = getPackageManager();
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            Collections.sort(queryIntentActivities, new ResolveInfo.DisplayNameComparator(packageManager));
            String packageName = getApplicationContext().getPackageName();
            if (bz.aK().aJ() == 0) {
                cb.b(f1002a, "startApp stackSize == 0", true);
                for (ResolveInfo resolveInfo : queryIntentActivities) {
                    if (packageName != null && resolveInfo.activityInfo.packageName.equals(packageName)) {
                        cb.b(f1002a, "Found startupActivity=" + resolveInfo.activityInfo.name, true);
                        String str = resolveInfo.activityInfo.name;
                        String str2 = resolveInfo.activityInfo.packageName;
                        Intent intent2 = new Intent();
                        intent2.addFlags(DriveFile.MODE_READ_ONLY);
                        intent2.setComponent(new ComponentName(str2, str));
                        startActivity(intent2);
                    }
                }
            } else {
                cb.b(f1002a, "StartApp activityStackSize != 0. not starting a main activity", true);
            }
            finish();
        } catch (Exception e) {
            bz.aK().a(e, "Caught Exception in MessageActivity", true);
            finish();
        }
    }
}
