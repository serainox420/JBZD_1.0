package com.google.android.gms.tagmanager;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
/* loaded from: classes2.dex */
public class TagManagerPreviewActivity extends Activity {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        Log.v("GoogleTagManager", "TagManagerPreviewActivity created.");
        super.onCreate(bundle);
        if (getIntent().getData() == null) {
            Log.e("GoogleTagManager", "Activity intent has no data.");
        } else {
            zzae.zza(getIntent(), this);
        }
    }
}
