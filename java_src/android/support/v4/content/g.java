package android.support.v4.content;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
/* compiled from: ContextCompatJellybean.java */
@TargetApi(16)
/* loaded from: classes.dex */
class g {
    public static void a(Context context, Intent[] intentArr, Bundle bundle) {
        context.startActivities(intentArr, bundle);
    }

    public static void a(Context context, Intent intent, Bundle bundle) {
        context.startActivity(intent, bundle);
    }
}
