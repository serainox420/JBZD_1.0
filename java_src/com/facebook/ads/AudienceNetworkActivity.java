package com.facebook.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.l;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.a.a;
import com.facebook.ads.internal.a.b;
import com.facebook.ads.internal.adapters.k;
import com.facebook.ads.internal.g;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.j;
import com.facebook.ads.internal.util.aa;
import com.facebook.ads.internal.util.i;
import com.facebook.ads.internal.util.z;
import com.facebook.ads.internal.view.c;
import com.facebook.ads.internal.view.d;
import com.facebook.ads.internal.view.f;
import com.facebook.ads.internal.view.h;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
/* loaded from: classes.dex */
public class AudienceNetworkActivity extends Activity {
    public static final String AUDIENCE_NETWORK_UNIQUE_ID_EXTRA = "uniqueId";
    public static final String AUTOPLAY = "autoplay";
    public static final String BROWSER_URL = "browserURL";
    public static final String CLIENT_TOKEN = "clientToken";
    public static final String CLOSE_REPORT_URL = "closeReportURL";
    public static final String CONTEXT_SWITCH_BEHAVIOR = "contextSwitchBehavior";
    public static final String END_CARD_ACTIVATION_COMMAND = "facebookRewardedVideoEndCardActivationCommand";
    public static final String END_CARD_MARKUP = "facebookRewardedVideoEndCardMarkup";
    public static final String HANDLER_TIME = "handlerTime";
    public static final String IMPRESSION_REPORT_URL = "impressionReportURL";
    public static final String PREDEFINED_ORIENTATION_KEY = "predefinedOrientationKey";
    public static final String REWARD_SERVER_URL = "rewardServerURL";
    public static final String SKIP_DELAY_SECONDS_KEY = "skipAfterSeconds";
    public static final String VIDEO_LOGGER = "videoLogger";
    public static final String VIDEO_MPD = "videoMPD";
    public static final String VIDEO_PLAY_REPORT_URL = "videoPlayReportURL";
    public static final String VIDEO_REPORT_URL = "videoReportURL";
    public static final String VIDEO_SEEK_TIME = "videoSeekTime";
    public static final String VIDEO_TIME_REPORT_URL = "videoTimeReportURL";
    public static final String VIDEO_URL = "videoURL";
    public static final String VIEW_TYPE = "viewType";
    public static final String WEBVIEW_ENCODING = "utf-8";
    public static final String WEBVIEW_MIME_TYPE = "text/html";

    /* renamed from: a  reason: collision with root package name */
    private static final String f2014a = AudienceNetworkActivity.class.getSimpleName();
    private String b;
    private String c;
    private c d;
    private RelativeLayout f;
    private Intent g;
    private g h;
    private String j;
    private Type k;
    private long l;
    private long m;
    private int n;
    private d o;
    private boolean e = false;
    private int i = -1;
    private List<BackButtonInterceptor> p = new ArrayList();

    /* loaded from: classes.dex */
    public interface BackButtonInterceptor {
        boolean interceptBackButton();
    }

    /* loaded from: classes.dex */
    public enum Type {
        DISPLAY,
        VIDEO,
        REWARDED_VIDEO,
        NATIVE,
        BROWSER
    }

    private void a(Intent intent, Bundle bundle) {
        if (bundle != null) {
            this.i = bundle.getInt(PREDEFINED_ORIENTATION_KEY, -1);
            this.j = bundle.getString(AUDIENCE_NETWORK_UNIQUE_ID_EXTRA);
            this.k = (Type) bundle.getSerializable(VIEW_TYPE);
            return;
        }
        this.i = intent.getIntExtra(PREDEFINED_ORIENTATION_KEY, -1);
        this.j = intent.getStringExtra(AUDIENCE_NETWORK_UNIQUE_ID_EXTRA);
        this.k = (Type) intent.getSerializableExtra(VIEW_TYPE);
        this.n = intent.getIntExtra(SKIP_DELAY_SECONDS_KEY, 0) * 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        l.a(this).a(new Intent(str + ":" + this.j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, q qVar) {
        Intent intent = new Intent(str + ":" + this.j);
        intent.putExtra("event", qVar);
        l.a(this).a(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        String stringExtra = this.g.getStringExtra(REWARD_SERVER_URL);
        if (!TextUtils.isEmpty(stringExtra)) {
            try {
                aa aaVar = new z(new HashMap()).execute(stringExtra).get();
                if (aaVar == null || !aaVar.a()) {
                    a(j.REWARD_SERVER_FAILED.a());
                } else {
                    a(j.REWARD_SERVER_SUCCESS.a());
                }
            } catch (InterruptedException | ExecutionException e) {
                a(j.REWARD_SERVER_FAILED.a());
            }
        }
    }

    private void c() {
        this.d = new c(this, new c.b() { // from class: com.facebook.ads.AudienceNetworkActivity.8
            @Override // com.facebook.ads.internal.view.c.b
            public void a() {
                if (AudienceNetworkActivity.this.d == null || TextUtils.isEmpty(AudienceNetworkActivity.this.c)) {
                    return;
                }
                AudienceNetworkActivity.this.d.post(new Runnable() { // from class: com.facebook.ads.AudienceNetworkActivity.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (AudienceNetworkActivity.this.d.c()) {
                            Log.w(AudienceNetworkActivity.f2014a, "Webview already destroyed, cannot activate");
                        } else {
                            AudienceNetworkActivity.this.d.loadUrl("javascript:" + AudienceNetworkActivity.this.c);
                        }
                    }
                });
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void a(int i) {
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void a(String str, Map<String, String> map) {
                Uri parse = Uri.parse(str);
                if ("fbad".equals(parse.getScheme()) && parse.getAuthority().equals("close")) {
                    AudienceNetworkActivity.this.finish();
                    return;
                }
                if ("fbad".equals(parse.getScheme()) && b.a(parse.getAuthority())) {
                    AudienceNetworkActivity.this.a(j.REWARDED_VIDEO_AD_CLICK.a());
                }
                a a2 = b.a(AudienceNetworkActivity.this, AudienceNetworkActivity.this.b, parse, map);
                if (a2 == null) {
                    return;
                }
                try {
                    a2.b();
                } catch (Exception e) {
                    Log.e(AudienceNetworkActivity.f2014a, "Error executing action", e);
                }
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void b() {
            }
        }, 1);
        String stringExtra = this.g.getStringExtra(END_CARD_MARKUP);
        this.c = this.g.getStringExtra(END_CARD_ACTIVATION_COMMAND);
        this.d.loadDataWithBaseURL(i.a(), stringExtra, "text/html", WEBVIEW_ENCODING, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.d != null) {
            this.f.removeAllViews();
            this.o = null;
            setContentView(this.d);
        }
    }

    public void addBackButtonInterceptor(BackButtonInterceptor backButtonInterceptor) {
        this.p.add(backButtonInterceptor);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        this.m += currentTimeMillis - this.l;
        this.l = currentTimeMillis;
        if (this.m > this.n) {
            boolean z2 = false;
            Iterator<BackButtonInterceptor> it = this.p.iterator();
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                z2 = it.next().interceptBackButton() ? true : z;
            }
            if (z) {
                return;
            }
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if (this.o instanceof k) {
            ((k) this.o).a(configuration);
        }
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        this.f = new RelativeLayout(this);
        this.f.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        setContentView(this.f, new RelativeLayout.LayoutParams(-1, -1));
        this.g = getIntent();
        if (this.g.getBooleanExtra("useNativeCloseButton", false)) {
            this.h = new g(this);
            this.h.setId(100002);
            this.h.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.AudienceNetworkActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AudienceNetworkActivity.this.finish();
                }
            });
        }
        this.b = this.g.getStringExtra(CLIENT_TOKEN);
        a(this.g, bundle);
        if (this.k == Type.VIDEO) {
            com.facebook.ads.internal.view.q qVar = new com.facebook.ads.internal.view.q(this, new d.a() { // from class: com.facebook.ads.AudienceNetworkActivity.2
                @Override // com.facebook.ads.internal.view.d.a
                public void a(View view) {
                    AudienceNetworkActivity.this.f.addView(view);
                    if (AudienceNetworkActivity.this.h != null) {
                        AudienceNetworkActivity.this.f.addView(AudienceNetworkActivity.this.h);
                    }
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str) {
                    AudienceNetworkActivity.this.a(str);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str, q qVar2) {
                    AudienceNetworkActivity.this.a(str, qVar2);
                }
            });
            qVar.a(this.f);
            this.o = qVar;
        } else if (this.k == Type.REWARDED_VIDEO) {
            c();
            this.o = new com.facebook.ads.internal.view.k(this, new d.a() { // from class: com.facebook.ads.AudienceNetworkActivity.3
                @Override // com.facebook.ads.internal.view.d.a
                public void a(View view) {
                    AudienceNetworkActivity.this.f.addView(view);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str) {
                    AudienceNetworkActivity.this.a(str);
                    if (str.equals(j.REWARDED_VIDEO_END_ACTIVITY)) {
                        AudienceNetworkActivity.this.finish();
                    }
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str, q qVar2) {
                    AudienceNetworkActivity.this.a(str);
                    if (str.startsWith(j.REWARDED_VIDEO_COMPLETE.a())) {
                        AudienceNetworkActivity.this.d();
                        if (!str.equals(j.REWARDED_VIDEO_COMPLETE_WITHOUT_REWARD.a())) {
                            AudienceNetworkActivity.this.b();
                        }
                        AudienceNetworkActivity.this.e = true;
                    }
                }
            });
            addBackButtonInterceptor(new BackButtonInterceptor() { // from class: com.facebook.ads.AudienceNetworkActivity.4
                @Override // com.facebook.ads.AudienceNetworkActivity.BackButtonInterceptor
                public boolean interceptBackButton() {
                    return !AudienceNetworkActivity.this.e;
                }
            });
        } else if (this.k == Type.DISPLAY) {
            this.o = new h(this, new d.a() { // from class: com.facebook.ads.AudienceNetworkActivity.5
                @Override // com.facebook.ads.internal.view.d.a
                public void a(View view) {
                    AudienceNetworkActivity.this.f.addView(view);
                    if (AudienceNetworkActivity.this.h != null) {
                        AudienceNetworkActivity.this.f.addView(AudienceNetworkActivity.this.h);
                    }
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str) {
                    AudienceNetworkActivity.this.a(str);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str, q qVar2) {
                    AudienceNetworkActivity.this.a(str, qVar2);
                }
            });
        } else if (this.k == Type.BROWSER) {
            this.o = new f(this, new d.a() { // from class: com.facebook.ads.AudienceNetworkActivity.6
                @Override // com.facebook.ads.internal.view.d.a
                public void a(View view) {
                    AudienceNetworkActivity.this.f.addView(view);
                    if (AudienceNetworkActivity.this.h != null) {
                        AudienceNetworkActivity.this.f.addView(AudienceNetworkActivity.this.h);
                    }
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str) {
                    AudienceNetworkActivity.this.a(str);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str, q qVar2) {
                    AudienceNetworkActivity.this.a(str, qVar2);
                }
            });
        } else if (this.k != Type.NATIVE) {
            com.facebook.ads.internal.util.d.a(com.facebook.ads.internal.util.c.a(null, "Unable to infer viewType from intent or savedInstanceState"));
            a("com.facebook.ads.interstitial.error");
            finish();
            return;
        } else {
            this.o = com.facebook.ads.internal.adapters.j.a(this.g.getStringExtra(AUDIENCE_NETWORK_UNIQUE_ID_EXTRA));
            if (this.o == null) {
                com.facebook.ads.internal.util.d.a(com.facebook.ads.internal.util.c.a(null, "Unable to find view"));
                a("com.facebook.ads.interstitial.error");
                finish();
                return;
            }
            this.o.a(new d.a() { // from class: com.facebook.ads.AudienceNetworkActivity.7
                @Override // com.facebook.ads.internal.view.d.a
                public void a(View view) {
                    AudienceNetworkActivity.this.f.removeAllViews();
                    AudienceNetworkActivity.this.f.addView(view);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str) {
                    AudienceNetworkActivity.this.a(str);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str, q qVar2) {
                    AudienceNetworkActivity.this.a(str, qVar2);
                }
            });
        }
        this.o.a(this.g, bundle, this);
        a("com.facebook.ads.interstitial.displayed");
        this.l = System.currentTimeMillis();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.o != null) {
            this.o.g();
            this.o = null;
        }
        this.f.removeAllViews();
        if (this.k == Type.REWARDED_VIDEO) {
            a(j.REWARDED_VIDEO_CLOSED.a());
        } else {
            a("com.facebook.ads.interstitial.dismissed");
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        this.m += System.currentTimeMillis() - this.l;
        if (this.o != null && !this.e) {
            this.o.e();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.l = System.currentTimeMillis();
        if (this.o != null) {
            this.o.f();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.o != null) {
            this.o.a(bundle);
        }
        bundle.putInt(PREDEFINED_ORIENTATION_KEY, this.i);
        bundle.putString(AUDIENCE_NETWORK_UNIQUE_ID_EXTRA, this.j);
        bundle.putSerializable(VIEW_TYPE, this.k);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        if (this.i != -1) {
            setRequestedOrientation(this.i);
        }
    }

    public void removeBackButtonInterceptor(BackButtonInterceptor backButtonInterceptor) {
        this.p.remove(backButtonInterceptor);
    }
}
