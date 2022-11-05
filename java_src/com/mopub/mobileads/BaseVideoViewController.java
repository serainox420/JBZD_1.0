package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.mopub.common.IntentActions;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3.dex */
public abstract class BaseVideoViewController {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4414a;
    private final RelativeLayout b;
    private final BaseVideoViewControllerListener c;
    private Long d;

    /* loaded from: classes3.dex */
    public interface BaseVideoViewControllerListener {
        void onFinish();

        void onSetContentView(View view);

        void onSetRequestedOrientation(int i);

        void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(Configuration configuration);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(Bundle bundle);

    protected abstract VideoView b();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void c();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void d();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void e();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void f();

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseVideoViewController(Context context, Long l, BaseVideoViewControllerListener baseVideoViewControllerListener) {
        this.f4414a = context;
        this.d = l;
        this.c = baseVideoViewControllerListener;
        this.b = new RelativeLayout(this.f4414a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        this.b.addView(b(), 0, layoutParams);
        this.c.onSetContentView(this.b);
    }

    public boolean backButtonEnabled() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2, Intent intent) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseVideoViewControllerListener g() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context h() {
        return this.f4414a;
    }

    public ViewGroup getLayout() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        MoPubLog.e("Video cannot be played.");
        a(IntentActions.ACTION_INTERSTITIAL_FAIL);
        if (z) {
            this.c.onFinish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(boolean z) {
        if (z) {
            this.c.onFinish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        if (this.d != null) {
            BaseBroadcastReceiver.a(this.f4414a, this.d.longValue(), str);
        } else {
            MoPubLog.w("Tried to broadcast a video event without a broadcast identifier to send to.");
        }
    }
}
