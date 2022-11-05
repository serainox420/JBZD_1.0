package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
/* compiled from: ActivityCompatJB.java */
@TargetApi(16)
/* loaded from: classes.dex */
class e {
    public static void a(Activity activity, Intent intent, int i, Bundle bundle) {
        activity.startActivityForResult(intent, i, bundle);
    }

    public static void a(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    public static void a(Activity activity) {
        activity.finishAffinity();
    }
}
