package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.l;
/* loaded from: classes.dex */
public class CustomTabActivity extends Activity {
    private static final int CUSTOM_TAB_REDIRECT_REQUEST_CODE = 2;
    private BroadcastReceiver closeReceiver;
    public static final String CUSTOM_TAB_REDIRECT_ACTION = CustomTabActivity.class.getSimpleName() + ".action_customTabRedirect";
    public static final String DESTROY_ACTION = CustomTabActivity.class.getSimpleName() + ".action_destroy";

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, CustomTabMainActivity.class);
        intent.setAction(CUSTOM_TAB_REDIRECT_ACTION);
        intent.putExtra(CustomTabMainActivity.EXTRA_URL, getIntent().getDataString());
        intent.addFlags(603979776);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == 0) {
            Intent intent2 = new Intent(CUSTOM_TAB_REDIRECT_ACTION);
            intent2.putExtra(CustomTabMainActivity.EXTRA_URL, getIntent().getDataString());
            l.a(this).a(intent2);
            this.closeReceiver = new BroadcastReceiver() { // from class: com.facebook.CustomTabActivity.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent3) {
                    CustomTabActivity.this.finish();
                }
            };
            l.a(this).a(this.closeReceiver, new IntentFilter(DESTROY_ACTION));
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        l.a(this).a(this.closeReceiver);
        super.onDestroy();
    }
}
