package com.facebook.internal;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.c;
import com.facebook.FacebookSdk;
/* loaded from: classes.dex */
public class CustomTab {
    private Uri uri;

    public CustomTab(String str, Bundle bundle) {
        this.uri = Utility.buildUri(ServerProtocol.getDialogAuthority(), FacebookSdk.getGraphApiVersion() + "/" + ServerProtocol.DIALOG_PATH + str, bundle == null ? new Bundle() : bundle);
    }

    public void openCustomTab(Activity activity, String str) {
        c a2 = new c.a().a();
        a2.f12a.setPackage(str);
        a2.f12a.addFlags(1073741824);
        a2.a(activity, this.uri);
    }
}
