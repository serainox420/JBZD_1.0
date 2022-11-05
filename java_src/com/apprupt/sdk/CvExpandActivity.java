package com.apprupt.sdk;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.adview.AdViewWrapper;
import com.apprupt.sdk.adview.ExpandProperties;
import com.apprupt.sdk.adview.ExpandedAdWrapperListener;
import com.apprupt.sdk.adview.Orientation;
import com.apprupt.sdk.adview.OrientationProperties;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.drive.DriveFile;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class CvExpandActivity extends CvBaseActivityImpl implements ExpandedAdWrapperListener {
    private RelativeLayout g;
    private AdViewWrapper h = null;
    private CvCloseButton i = null;
    private boolean j = true;
    private boolean k = true;
    private boolean l = false;
    private Timer m = null;
    private Runnable n = null;
    private Runnable o = new Runnable() { // from class: com.apprupt.sdk.CvExpandActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (CvExpandActivity.this.n != null) {
                CvExpandActivity.this.n.run();
            } else {
                CvExpandActivity.this.finish();
            }
            CvExpandActivity.this.n = null;
        }
    };
    private static final Logger.log f = Logger.a("Lifecycle.ExpandView");
    static AdViewWrapper e = null;
    private static volatile int p = 0;
    private static volatile HashMap<Integer, CvInlineAdWrapper> q = new HashMap<>();

    static /* synthetic */ int d() {
        int i = p + 1;
        p = i;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(final CvInlineAdWrapper cvInlineAdWrapper) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvExpandActivity.2
            @Override // java.lang.Runnable
            public void run() {
                Context b = CvInlineAdWrapper.this.m().b();
                int d = CvExpandActivity.d();
                CvExpandActivity.q.put(Integer.valueOf(d), CvInlineAdWrapper.this);
                Bundle bundle = new Bundle();
                bundle.putInt("mraidId", d);
                Intent intent = new Intent(b, CvExpandActivity.class);
                intent.setFlags(DriveFile.MODE_READ_ONLY);
                intent.putExtras(bundle);
                b.startActivity(intent);
            }
        }, true);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Bundle extras;
        int i = -1;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 16) {
            getWindow().setFlags(16777216, 16777216);
        }
        Intent intent = getIntent();
        if (intent != null && (extras = intent.getExtras()) != null) {
            i = extras.getInt("mraidId", -1);
        }
        if (i > 0) {
            b(q.remove(Integer.valueOf(i)));
        } else {
            f();
        }
    }

    private void b(CvInlineAdWrapper cvInlineAdWrapper) {
        int i = -1;
        int i2 = 0;
        this.g = new RelativeLayout(this);
        setContentView(this.g);
        ExpandProperties t = cvInlineAdWrapper.t();
        int b = t.d() > 0 ? CvViewHelper.b(t.d()) : -1;
        if (t.e() > 0) {
            i = CvViewHelper.b(t.e());
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(b, i);
        layoutParams.addRule(13);
        View s = cvInlineAdWrapper.s();
        s.setId(1000123);
        s.setLayoutParams(layoutParams);
        this.g.addView(s);
        ((CvContext) s.getContext()).b(this);
        this.n = cvInlineAdWrapper.v();
        this.i = new CvCloseButton(this);
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.apprupt.sdk.CvExpandActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CvExpandActivity.this.runOnUiThread(CvExpandActivity.this.o);
            }
        });
        this.i.setVisibility(t.a() ? 8 : 0);
        int b2 = CvViewHelper.b(CvCloseButton.f1753a);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(b2, b2);
        layoutParams2.addRule(2, 1000123);
        layoutParams2.addRule(1, 1000123);
        layoutParams2.setMargins(-b2, 0, 0, -b2);
        this.i.setLayoutParams(layoutParams2);
        cvInlineAdWrapper.a(this);
        this.g.addView(this.i);
        OrientationProperties u = cvInlineAdWrapper.u();
        Orientation b3 = u.b();
        if (b3 != Orientation.NONE) {
            if (b3 != Orientation.LANDSCAPE) {
                i2 = 1;
            }
            setRequestedOrientation(i2);
        } else if (!u.c()) {
            setRequestedOrientation(getResources().getConfiguration().orientation);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0074 A[Catch: all -> 0x0107, TryCatch #1 {, blocks: (B:21:0x005f, B:23:0x006b, B:27:0x0074, B:28:0x0093, B:38:0x00f9), top: B:50:0x005f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void f() {
        boolean z;
        int i = -1;
        int i2 = 0;
        synchronized (CvExpandActivity.class) {
            this.h = e;
        }
        if (this.h == null) {
            finish();
            return;
        }
        this.g = new RelativeLayout(this);
        setContentView(this.g);
        ExpandProperties a2 = this.h.a();
        int b = a2.d() > 0 ? CvViewHelper.b(a2.d()) : -1;
        if (a2.e() > 0) {
            i = CvViewHelper.b(a2.e());
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(b, i);
        layoutParams.addRule(13);
        this.h.c().setLayoutParams(layoutParams);
        synchronized (this.h) {
            ViewParent parent = this.h.c().getParent();
            if (parent != null) {
                if (!parent.equals(this)) {
                    ((ViewGroup) parent).removeView(this.h.c());
                } else {
                    z = false;
                    if (z) {
                        this.h.c().setId(1000123);
                        this.g.addView(this.h.c());
                        ((CvContext) this.h.d()).b(this);
                    }
                }
            }
            z = true;
            if (z) {
            }
        }
        this.i = new CvCloseButton(this);
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.apprupt.sdk.CvExpandActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CvExpandActivity.this.finish();
            }
        });
        this.i.setVisibility(a2.a() ? 8 : 0);
        int b2 = CvViewHelper.b(CvCloseButton.f1753a);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(b2, b2);
        layoutParams2.addRule(2, 1000123);
        layoutParams2.addRule(1, 1000123);
        layoutParams2.setMargins(-b2, 0, 0, -b2);
        this.i.setLayoutParams(layoutParams2);
        this.g.addView(this.i);
        this.h.a(this);
        this.h.e();
        OrientationProperties b3 = this.h.b();
        Orientation b4 = b3.b();
        if (b4 != Orientation.NONE) {
            if (b4 != Orientation.LANDSCAPE) {
                i2 = 1;
            }
            setRequestedOrientation(i2);
        } else if (!b3.c()) {
            setRequestedOrientation(getResources().getConfiguration().orientation);
        }
    }

    public void a(final int i) {
        runOnUiThread(new Runnable() { // from class: com.apprupt.sdk.CvExpandActivity.5
            @Override // java.lang.Runnable
            public void run() {
                CvExpandActivity.this.g.setBackgroundColor(i);
            }
        });
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        synchronized (this) {
            this.l = true;
            if (this.j) {
                this.j = false;
            } else {
                this.k = false;
            }
            this.m = new Timer();
            this.m.schedule(new TimerTask() { // from class: com.apprupt.sdk.CvExpandActivity.6
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    synchronized (CvExpandActivity.this) {
                        CvExpandActivity.this.k = false;
                    }
                }
            }, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
        }
        CvAdColony.a(this);
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        synchronized (this) {
            this.l = false;
            if (this.m != null) {
                this.m.cancel();
                this.m = null;
            }
        }
        CvAdColony.a();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        synchronized (this) {
            if (this.h != null) {
                this.h.b(this);
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        runOnUiThread(this.o);
    }

    public void a(boolean z) {
        this.i.setVisibility(z ? 0 : 8);
    }
}
