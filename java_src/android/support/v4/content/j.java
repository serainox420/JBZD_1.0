package android.support.v4.content;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Intent;
/* compiled from: IntentCompatHoneycomb.java */
@TargetApi(11)
/* loaded from: classes.dex */
class j {
    public static Intent a(ComponentName componentName) {
        return Intent.makeMainActivity(componentName);
    }
}
