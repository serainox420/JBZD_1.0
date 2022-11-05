package android.support.v4.content;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
/* compiled from: ContextCompatHoneycomb.java */
@TargetApi(11)
/* loaded from: classes.dex */
class f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, Intent[] intentArr) {
        context.startActivities(intentArr);
    }
}
