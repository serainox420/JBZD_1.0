package com.millennialmedia.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.TimedMemoryCache;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class MMIntentWrapperActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4092a = MMIntentWrapperActivity.class.getSimpleName();
    private ActivityState b;

    /* loaded from: classes3.dex */
    public interface MMIntentWrapperListener {
        void onData(Intent intent);

        void onError(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ActivityState {

        /* renamed from: a  reason: collision with root package name */
        CountDownLatch f4094a;
        MMIntentWrapperListener b;
        Intent c;

        private ActivityState(MMIntentWrapperListener mMIntentWrapperListener, Intent intent) {
            this.f4094a = new CountDownLatch(1);
            this.b = mMIntentWrapperListener;
            this.c = intent;
        }
    }

    public static void launch(Context context, Intent intent, MMIntentWrapperListener mMIntentWrapperListener) {
        if (mMIntentWrapperListener == null) {
            MMLog.e(f4092a, "Unable to launch MMIntentWrapperActivity, provided MMIntentWrapperListener instance is null");
            return;
        }
        final ActivityState activityState = new ActivityState(mMIntentWrapperListener, intent);
        int add = TimedMemoryCache.add(activityState, null);
        if (add == 0) {
            mMIntentWrapperListener.onError("Unable to launch MMIntentWrapperActivity, failed to cache activity state");
            return;
        }
        Intent intent2 = new Intent(context, MMIntentWrapperActivity.class);
        intent2.putExtra("intent_wrapper_state_id", add);
        context.startActivity(intent2);
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.MMIntentWrapperActivity.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!ActivityState.this.f4094a.await(5000L, TimeUnit.MILLISECONDS)) {
                        ActivityState.this.b.onError("Failed to start activity");
                    }
                } catch (InterruptedException e) {
                }
            }
        });
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!a()) {
            MMLog.e(f4092a, "Failed to load activity state, aborting activity launch <" + this + ">");
            finish();
        } else if (bundle == null) {
            this.b.f4094a.countDown();
            if (this.b.c != null && this.b.c.resolveActivity(getPackageManager()) != null) {
                startActivityForResult(this.b.c, 0);
                return;
            }
            this.b.b.onError("Failed to start activity, aborting activity launch <" + this + ">");
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (!isFinishing() && !b()) {
            MMLog.e(f4092a, "Failed to save activity state <" + this + ">");
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.b != null && this.b.b != null) {
            if (i2 == -1) {
                this.b.b.onData(intent);
            } else {
                this.b.b.onError("Activity failed with result code <" + i2 + ">");
            }
        }
        finish();
    }

    private boolean a() {
        Object obj = TimedMemoryCache.get(getIntent().getIntExtra("intent_wrapper_state_id", 0));
        if (!(obj instanceof ActivityState)) {
            return false;
        }
        this.b = (ActivityState) obj;
        return true;
    }

    private boolean b() {
        Intent intent = getIntent();
        intent.removeExtra("intent_wrapper_state_id");
        int add = TimedMemoryCache.add(this.b, null);
        if (add == 0) {
            return false;
        }
        intent.putExtra("intent_wrapper_state_id", add);
        return true;
    }
}
