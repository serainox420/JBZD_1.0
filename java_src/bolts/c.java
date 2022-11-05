package bolts;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.applinks.AppLinkData;
/* compiled from: AppLinks.java */
/* loaded from: classes.dex */
public final class c {
    public static Bundle a(Intent intent) {
        return intent.getBundleExtra("al_applink_data");
    }

    public static Bundle b(Intent intent) {
        Bundle a2 = a(intent);
        if (a2 == null) {
            return null;
        }
        return a2.getBundle(AppLinkData.ARGUMENTS_EXTRAS_KEY);
    }
}
