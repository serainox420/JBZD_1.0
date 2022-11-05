package com.apprupt.sdk;

import android.net.Uri;
import android.webkit.ValueCallback;
/* loaded from: classes.dex */
public interface CvBaseActivity {

    /* loaded from: classes.dex */
    public interface PermissionListener {
        boolean a(int i, String[] strArr, int[] iArr);
    }

    void a(ValueCallback<Uri> valueCallback);

    void a(String str);

    void b(ValueCallback<Uri[]> valueCallback);
}
