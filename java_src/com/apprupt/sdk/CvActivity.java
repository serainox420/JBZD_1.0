package com.apprupt.sdk;

import android.app.Activity;
import android.os.Bundle;
/* loaded from: classes.dex */
public class CvActivity extends CvBaseActivityImpl {
    private boolean e = false;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CvSDK.c();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        CvSDK.b((Activity) this);
        if (this.e) {
            CvSDK.c();
        }
        this.e = true;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        CvSDK.a();
    }
}
