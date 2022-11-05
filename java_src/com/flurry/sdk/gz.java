package com.flurry.sdk;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.widget.RelativeLayout;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public abstract class gz extends RelativeLayout implements DialogInterface.OnKeyListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2778a = gz.class.getSimpleName();
    private final r b;
    private final a c;
    private ProgressDialog d;
    private AtomicBoolean e;
    private long f;
    private final kh<ls> g;

    /* loaded from: classes2.dex */
    public interface a {
        void a();

        void b();

        void c();
    }

    public gz(Context context, r rVar, a aVar) {
        super(context);
        this.e = new AtomicBoolean(false);
        this.f = Long.MIN_VALUE;
        this.g = new kh<ls>() { // from class: com.flurry.sdk.gz.1
            @Override // com.flurry.sdk.kh
            public final /* synthetic */ void a(ls lsVar) {
                if (System.currentTimeMillis() - gz.this.f <= 8000) {
                    return;
                }
                jy.a().a(new ma() { // from class: com.flurry.sdk.gz.1.1
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        km.a(3, gz.f2778a, "Failed to load view in 8 seconds.");
                        gz.this.dismissProgressDialog();
                        gz.this.removeTimerListener();
                        gz.this.onViewLoadTimeout();
                    }
                });
            }
        };
        this.b = rVar;
        this.c = aVar;
    }

    public void initLayout() {
    }

    public void cleanupLayout() {
        removeTimerListener();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onViewBack() {
        if (this.c != null) {
            this.c.a();
        }
    }

    public void onViewClose() {
        if (this.c != null) {
            this.c.b();
        }
    }

    public void onViewError() {
        if (this.c != null) {
            this.c.c();
        }
    }

    public void onViewLoadTimeout() {
    }

    public void onActivityStart() {
    }

    public void onActivityResume() {
    }

    public void onActivityPause() {
    }

    public void onActivityStop() {
        dismissProgressDialog();
    }

    public void onActivityDestroy() {
    }

    public void onConfigurationChanged() {
    }

    public boolean onBackKey() {
        return false;
    }

    public r getAdObject() {
        return this.b;
    }

    public au getAdController() {
        return this.b.l();
    }

    public cs getAdUnit() {
        return this.b.l().b.b;
    }

    public az getAdLog() {
        return this.b.l().a();
    }

    public az getAdLog(String str) {
        return this.b.l().b.a(str);
    }

    public int getAdFrameIndex() {
        return this.b.l().b.e;
    }

    public void setAdFrameIndex(int i) {
        this.b.l().a(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.e.set(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.e.set(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isViewAttachedToActivity() {
        km.a(3, f2778a, "fViewAttachedToWindow " + this.e.get());
        return this.e.get();
    }

    public void showProgressDialog() {
        if (getAdController().e()) {
            Context context = getContext();
            if (this.d == null) {
                if (context != null) {
                    km.a(3, f2778a, "Create and show progress bar");
                    this.d = new ProgressDialog(context);
                    this.d.setProgressStyle(0);
                    this.d.setMessage("Loading...");
                    this.d.setCancelable(true);
                    this.d.setCanceledOnTouchOutside(false);
                    this.d.setOnKeyListener(this);
                    this.d.show();
                    addTimerListener();
                    return;
                }
                km.a(3, f2778a, "Context is null, cannot create progress dialog.");
            } else if (!this.d.isShowing()) {
                km.a(3, f2778a, "Show progress bar.");
                this.d.show();
                addTimerListener();
            }
        }
    }

    public void dismissProgressDialog() {
        if (this.d != null && this.d.isShowing()) {
            this.d.dismiss();
            this.d = null;
        }
        km.a(3, f2778a, "Dismiss progress bar.");
        this.f = Long.MIN_VALUE;
        removeTimerListener();
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        km.a(3, f2778a, "onkey,keycode=" + i + ",event=" + keyEvent.getAction());
        if (dialogInterface == this.d && i == 4 && keyEvent.getAction() == 1) {
            onEvent(bc.EV_AD_WILL_CLOSE, Collections.emptyMap());
            dialogInterface.dismiss();
            return true;
        }
        return false;
    }

    public void onEvent(bc bcVar, Map<String, String> map) {
        ff.a(bcVar, map, getContext(), this.b, this.b.l(), 0);
    }

    public void setOrientation(int i) {
        if (getContext() instanceof Activity) {
            Activity activity = (Activity) getContext();
            if (getAdController().e()) {
                fe.b(activity, i);
            }
        }
    }

    public void addTimerListener() {
        this.f = System.currentTimeMillis();
        lt.a().a(this.g);
    }

    public void removeTimerListener() {
        this.f = Long.MIN_VALUE;
        lt.a().b(this.g);
    }
}
