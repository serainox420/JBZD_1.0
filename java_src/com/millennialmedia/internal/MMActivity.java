package com.millennialmedia.internal;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.google.android.gms.drive.DriveFile;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.TimedMemoryCache;
import com.millennialmedia.internal.utils.Utils;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class MMActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4087a = MMActivity.class.getSimpleName();
    private ActivityState b;
    private RelativeLayout c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ActivityState {

        /* renamed from: a  reason: collision with root package name */
        CountDownLatch f4090a;
        MMActivityConfig b;
        MMActivityListener c;

        private ActivityState(MMActivityListener mMActivityListener, MMActivityConfig mMActivityConfig) {
            this.f4090a = new CountDownLatch(1);
            this.c = mMActivityListener;
            this.b = mMActivityConfig;
        }
    }

    /* loaded from: classes3.dex */
    public static class MMActivityConfig {

        /* renamed from: a  reason: collision with root package name */
        private boolean f4091a;
        private boolean b;
        private Integer e;
        private Integer f;
        private int d = -1;
        private int c = -1;

        public MMActivityConfig setImmersive(boolean z) {
            this.f4091a = z;
            return this;
        }

        public MMActivityConfig setOrientation(int i) {
            this.c = i;
            return this;
        }

        public MMActivityConfig setAudioSource(int i) {
            this.d = i;
            return this;
        }

        public MMActivityConfig setTransitionAnimation(Integer num, Integer num2) {
            this.e = num;
            this.f = num2;
            return this;
        }

        public MMActivityConfig setTransparent(boolean z) {
            this.b = z;
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class MMActivityListener {
        public void onCreate(MMActivity mMActivity) {
        }

        public void onResume(MMActivity mMActivity) {
        }

        public void onPause(MMActivity mMActivity) {
        }

        public void onDestroy(MMActivity mMActivity) {
        }

        public void onLaunchFailed() {
        }

        public boolean onBackPressed() {
            return true;
        }
    }

    public static void launch(Context context, MMActivityConfig mMActivityConfig, MMActivityListener mMActivityListener) {
        int i = 0;
        if (mMActivityListener == null) {
            MMLog.e(f4087a, "Unable to launch MMActivity, provided MMActivityListener instance is null");
            return;
        }
        if (mMActivityConfig == null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4087a, "No MMActivity Configuration specified, creating default activity Configuration.");
            }
            mMActivityConfig = new MMActivityConfig();
        }
        final ActivityState activityState = new ActivityState(mMActivityListener, mMActivityConfig);
        int add = TimedMemoryCache.add(activityState, 5000L);
        if (add == 0) {
            MMLog.e(f4087a, "Unable to launch MMActivity, failed to cache activity state");
            mMActivityListener.onLaunchFailed();
            return;
        }
        Intent intent = new Intent(context, MMActivity.class);
        intent.putExtra("activity_state_id", add);
        if (!Utils.isActivityContext(context)) {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
        }
        if (mMActivityConfig.e != null || mMActivityConfig.f != null) {
            int intValue = mMActivityConfig.e != null ? mMActivityConfig.e.intValue() : 0;
            if (mMActivityConfig.f != null) {
                i = mMActivityConfig.f.intValue();
            }
            context.startActivity(intent, ActivityOptions.makeCustomAnimation(context, intValue, i).toBundle());
        } else {
            context.startActivity(intent);
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.MMActivity.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!ActivityState.this.f4090a.await(5000L, TimeUnit.MILLISECONDS)) {
                        ActivityState.this.c.onLaunchFailed();
                    }
                } catch (InterruptedException e) {
                }
            }
        });
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        int i = 0;
        super.onCreate(bundle);
        if (!b()) {
            MMLog.e(f4087a, "Failed to load activity state, aborting activity launch <" + this + ">");
            finish();
            return;
        }
        boolean z = this.b.f4090a.getCount() > 0;
        if (z) {
            this.b.f4090a.countDown();
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4087a, "New activity created with orientation " + EnvironmentUtils.getCurrentConfigOrientationString());
        }
        if (this.b.b.d != -1) {
            setVolumeControlStream(this.b.b.d);
        }
        if (Build.VERSION.SDK_INT < 19 || !this.b.b.f4091a) {
            if (this.b.b.f4091a) {
                requestWindowFeature(1);
                getWindow().setFlags(1024, 1024);
            }
        } else {
            a();
            getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.millennialmedia.internal.MMActivity.2
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int i2) {
                    if ((i2 & 4) == 0) {
                        MMActivity.this.a();
                    }
                }
            });
        }
        this.c = new RelativeLayout(this);
        this.c.setTag("mmactivity_root_view");
        if (!this.b.b.b) {
            i = 160;
        }
        ColorDrawable colorDrawable = new ColorDrawable(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        colorDrawable.setAlpha(i);
        this.c.setBackground(colorDrawable);
        this.c.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        setContentView(this.c);
        this.b.c.onCreate(this);
        if (z && getRequestedOrientation() != this.b.b.c) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4087a, "Setting requested orientation on activity:\n\tCurrent requested orientation: " + getRequestedOrientation() + "\n\tDesired requested orientation: " + this.b.b.c);
            }
            setRequestedOrientation(this.b.b.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        View decorView = getWindow().getDecorView();
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4087a, "Enabling immersive mode:\ndecorView = " + decorView + "\nActivity = " + this);
        }
        decorView.setSystemUiVisibility(5894);
    }

    public void setOrientation(int i) {
        if (i != getRequestedOrientation()) {
            this.b.b.c = i;
            setRequestedOrientation(i);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.b.c.onResume(this);
    }

    @Override // android.app.Activity
    public void onPause() {
        this.b.c.onPause(this);
        super.onPause();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (this.b != null) {
            if (!isFinishing() && !c()) {
                MMLog.e(f4087a, "Failed to save activity state <" + this + ">");
            }
            if (this.b.c != null) {
                this.b.c.onDestroy(this);
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4087a, "onWindowFocusChanged: hasFocus = " + z);
            if (this.b != null) {
                MMLog.d(f4087a, "activityState.configuration.immersive = " + this.b.b.f4091a);
            }
        }
        if (Build.VERSION.SDK_INT >= 19 && this.b != null && this.b.b.f4091a && z) {
            a();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.b != null && this.b.b != null && (this.b.b.e != null || this.b.b.f != null)) {
            overridePendingTransition(this.b.b.e.intValue(), this.b.b.f.intValue());
        }
        super.finish();
    }

    private boolean b() {
        Object obj = TimedMemoryCache.get(getIntent().getIntExtra("activity_state_id", 0));
        if (!(obj instanceof ActivityState)) {
            return false;
        }
        this.b = (ActivityState) obj;
        return true;
    }

    private boolean c() {
        Intent intent = getIntent();
        intent.removeExtra("activity_state_id");
        int add = TimedMemoryCache.add(this.b, null);
        if (add == 0) {
            return false;
        }
        intent.putExtra("activity_state_id", add);
        return true;
    }

    public ViewGroup getRootView() {
        return this.c;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.b.c.onBackPressed()) {
            super.onBackPressed();
        }
    }
}
