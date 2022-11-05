package com.apprupt.sdk;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.apprupt.sdk.CvSDK;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.adview.ExpandProperties;
import com.apprupt.sdk.adview.Orientation;
import com.apprupt.sdk.adview.OrientationProperties;
import com.apprupt.sdk.mediation.InterstitialAdWrapper;
import com.google.android.gms.drive.DriveFile;
import java.util.HashMap;
import java.util.Timer;
/* loaded from: classes.dex */
public class CvInterstitialActivity extends CvBaseActivityImpl {
    private static final Logger.log e = Logger.a("Lifecycle.Interstitial");
    private static final Logger.log l = Logger.a("INTERSTITIAL");
    private static int s = 0;
    private static final HashMap<Integer, CvInterstitialAdWrapper> t = new HashMap<>();
    private RelativeLayout k;
    private Timer f = null;
    private int g = -1;
    private CvCloseButton h = null;
    private Runnable i = null;
    private CvSDK.CvInterstitialListener j = null;
    private long m = 0;
    private long n = 0;
    private boolean o = false;
    private boolean p = false;
    private boolean q = false;
    private Runnable r = new Runnable() { // from class: com.apprupt.sdk.CvInterstitialActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (CvInterstitialActivity.this.d() >= 2000) {
                if (CvInterstitialActivity.this.i != null) {
                    CvInterstitialActivity.this.i.run();
                } else {
                    CvInterstitialActivity.this.finish();
                }
                CvInterstitialActivity.this.i = null;
            }
        }
    };

    static /* synthetic */ int f() {
        int i = s + 1;
        s = i;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(final Context context, final CvInterstitialAdWrapper cvInterstitialAdWrapper) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInterstitialActivity.2
            @Override // java.lang.Runnable
            public void run() {
                if (CvSDK.c(context)) {
                    CvInterstitialActivity.l.d("App in foreground., fire!");
                    int f = CvInterstitialActivity.f();
                    CvInterstitialActivity.t.put(Integer.valueOf(f), cvInterstitialAdWrapper);
                    CvInterstitialActivity.e.b("Posting interstitial data to queue, id ", Integer.valueOf(CvInterstitialActivity.s));
                    Bundle bundle = new Bundle();
                    bundle.putInt("interstitialId", f);
                    Intent intent = new Intent(context, CvInterstitialActivity.class);
                    intent.setFlags(DriveFile.MODE_READ_ONLY);
                    intent.putExtras(bundle);
                    context.startActivity(intent);
                    return;
                }
                CvInterstitialActivity.l.d("App is not in foreground..");
                cvInterstitialAdWrapper.s();
            }
        }, true);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        CvInterstitialAdWrapper cvInterstitialAdWrapper;
        Bundle extras;
        int i = 0;
        super.onCreate(bundle);
        e.b("onCreate...");
        if (Build.VERSION.SDK_INT >= 16) {
            getWindow().setFlags(16777216, 16777216);
        }
        Intent intent = getIntent();
        int i2 = (intent == null || (extras = intent.getExtras()) == null) ? -1 : extras.getInt("interstitialId", -1);
        if (i2 <= 0 || !t.containsKey(Integer.valueOf(i2))) {
            cvInterstitialAdWrapper = null;
        } else {
            cvInterstitialAdWrapper = t.remove(Integer.valueOf(i2));
        }
        if (cvInterstitialAdWrapper == null) {
            e.d("Cannot find intestitial data.. quiting");
            finish();
            return;
        }
        this.k = new RelativeLayout(this);
        setContentView(this.k);
        this.j = a(cvInterstitialAdWrapper.m().a().i);
        this.g = Integer.valueOf(cvInterstitialAdWrapper.m().d()).intValue();
        View d = cvInterstitialAdWrapper.d();
        d.setBackgroundColor(0);
        ((CvContext) d.getContext()).a(this);
        d.setId(1000123);
        this.k.addView(d);
        ExpandProperties p = cvInterstitialAdWrapper.p();
        this.i = cvInterstitialAdWrapper.r();
        this.h = new CvCloseButton(this);
        this.h.setOnClickListener(new View.OnClickListener() { // from class: com.apprupt.sdk.CvInterstitialActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CvInterstitialActivity.this.runOnUiThread(CvInterstitialActivity.this.r);
            }
        });
        this.h.setVisibility(p.a() ? 8 : 0);
        int b = CvViewHelper.b(CvCloseButton.f1753a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(b, b);
        layoutParams.addRule(2, 1000123);
        layoutParams.addRule(1, 1000123);
        layoutParams.setMargins(-b, 0, 0, -b);
        this.h.setLayoutParams(layoutParams);
        this.k.addView(this.h);
        cvInterstitialAdWrapper.a(this);
        cvInterstitialAdWrapper.a(new InterstitialAdWrapper.Listener() { // from class: com.apprupt.sdk.CvInterstitialActivity.4
            @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
            public void a() {
                CvInterstitialActivity.this.finish();
            }

            @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
            public void b() {
                CvInterstitialActivity.this.finish();
            }

            @Override // com.apprupt.sdk.mediation.AdWrapper.Listener
            public void c() {
                if (CvInterstitialActivity.this.j != null) {
                    CvInterstitialActivity.this.j.cvInterstitialFirstTap();
                }
            }
        });
        OrientationProperties q = cvInterstitialAdWrapper.q();
        Orientation b2 = q.b();
        if (b2 != Orientation.NONE) {
            if (b2 != Orientation.LANDSCAPE) {
                i = 1;
            }
            setRequestedOrientation(i);
        } else if (!q.c()) {
            setRequestedOrientation(getResources().getConfiguration().orientation);
        }
        this.j.cvInterstitialWillAppear(this.g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.h.setVisibility(z ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.k.setBackgroundColor(i);
    }

    public long d() {
        return this.o ? (System.currentTimeMillis() - this.n) + this.m : this.m;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.r.run();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.n = System.currentTimeMillis();
        this.o = true;
        if (!this.p) {
            this.p = true;
            this.j.cvInterstitialDidAppear(this.g);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        this.q = true;
        super.finish();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.m = System.currentTimeMillis() - this.n;
        this.o = false;
        if (this.q && this.p) {
            this.j.cvInterstitialWillDisappear(this.g);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.q && this.p) {
            this.j.cvInterstitialDidDisappear(this.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CvSDK.CvInterstitialListener a(CvSDK.CvInterstitialListener cvInterstitialListener) {
        return cvInterstitialListener != null ? cvInterstitialListener : new DummyListener();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class DummyListener implements CvSDK.CvInterstitialListener {
        private DummyListener() {
        }

        @Override // com.apprupt.sdk.CvSDK.CvInterstitialListener
        public void cvInterstitialWillAppear(int i) {
        }

        @Override // com.apprupt.sdk.CvSDK.CvInterstitialListener
        public void cvInterstitialDidAppear(int i) {
        }

        @Override // com.apprupt.sdk.CvSDK.CvInterstitialListener
        public void cvInterstitialWillDisappear(int i) {
        }

        @Override // com.apprupt.sdk.CvSDK.CvInterstitialListener
        public void cvInterstitialDidDisappear(int i) {
        }

        @Override // com.apprupt.sdk.CvSDK.CvInterstitialListener
        public void cvInterstitialDidFail(int i, String str, int i2) {
        }

        @Override // com.apprupt.sdk.CvSDK.CvInterstitialListener
        public void cvInterstitialFirstTap() {
        }
    }
}
