package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import com.mopub.common.DataKeys;
import com.mopub.common.FullAdType;
import com.mopub.common.IntentActions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.common.util.Reflection;
import com.mopub.mobileads.BaseVideoViewController;
import com.mopub.mraid.MraidVideoViewController;
/* loaded from: classes3.dex */
public class MraidVideoPlayerActivity extends BaseVideoPlayerActivity implements BaseVideoViewController.BaseVideoViewControllerListener {

    /* renamed from: a  reason: collision with root package name */
    private BaseVideoViewController f4456a;
    private long b;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        this.b = a(getIntent());
        try {
            this.f4456a = a(bundle);
            this.f4456a.a();
        } catch (IllegalStateException e) {
            BaseBroadcastReceiver.a(this, this.b, IntentActions.ACTION_INTERSTITIAL_FAIL);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.f4456a != null) {
            this.f4456a.c();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f4456a != null) {
            this.f4456a.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoPlayerActivity, android.app.Activity
    public void onDestroy() {
        if (this.f4456a != null) {
            this.f4456a.e();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f4456a != null) {
            this.f4456a.a(bundle);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f4456a != null) {
            this.f4456a.a(configuration);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f4456a != null && this.f4456a.backButtonEnabled()) {
            super.onBackPressed();
            this.f4456a.f();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (this.f4456a != null) {
            this.f4456a.a(i, i2, intent);
        }
    }

    private BaseVideoViewController a(Bundle bundle) throws IllegalStateException {
        String stringExtra = getIntent().getStringExtra(BaseVideoPlayerActivity.VIDEO_CLASS_EXTRAS_KEY);
        if (FullAdType.VAST.equals(stringExtra)) {
            return new VastVideoViewController(this, getIntent().getExtras(), bundle, this.b, this);
        }
        if ("mraid".equals(stringExtra)) {
            return new MraidVideoViewController(this, getIntent().getExtras(), bundle, this);
        }
        if ("native".equals(stringExtra)) {
            Class[] clsArr = {Context.class, Bundle.class, Bundle.class, BaseVideoViewController.BaseVideoViewControllerListener.class};
            Object[] objArr = {this, getIntent().getExtras(), bundle, this};
            if (!Reflection.classFound("com.mopub.nativeads.NativeVideoViewController")) {
                throw new IllegalStateException("Missing native video module");
            }
            try {
                return (BaseVideoViewController) Reflection.instantiateClassWithConstructor("com.mopub.nativeads.NativeVideoViewController", BaseVideoViewController.class, clsArr, objArr);
            } catch (Exception e) {
                throw new IllegalStateException("Missing native video module");
            }
        }
        throw new IllegalStateException("Unsupported video type: " + stringExtra);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetContentView(View view) {
        setContentView(view);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetRequestedOrientation(int i) {
        setRequestedOrientation(i);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onFinish() {
        finish();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle) {
        if (cls != null) {
            try {
                startActivityForResult(Intents.getStartActivityIntent(this, cls, bundle), i);
            } catch (ActivityNotFoundException e) {
                MoPubLog.d("Activity " + cls.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
            }
        }
    }

    protected static long a(Intent intent) {
        return intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }
}
