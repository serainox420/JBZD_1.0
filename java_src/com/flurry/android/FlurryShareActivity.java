package com.flurry.android;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.RelativeLayout;
import com.flurry.sdk.ed;
import com.flurry.sdk.eh;
import com.flurry.sdk.ei;
import com.flurry.sdk.el;
import com.flurry.sdk.fb;
import com.flurry.sdk.ho;
import com.flurry.sdk.jy;
import com.flurry.sdk.ki;
import com.flurry.sdk.km;
/* loaded from: classes2.dex */
public class FlurryShareActivity extends Activity {
    private static final String d = FlurryShareActivity.class.getName();

    /* renamed from: a  reason: collision with root package name */
    boolean f2384a = false;
    boolean b = false;
    ho c = new ho() { // from class: com.flurry.android.FlurryShareActivity.1
        @Override // com.flurry.sdk.ho
        public final void a(RelativeLayout relativeLayout) {
            FlurryShareActivity.this.f.removeAllViews();
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            FlurryShareActivity.this.f.addView(relativeLayout, layoutParams);
            FlurryShareActivity.this.setContentView(FlurryShareActivity.this.f);
        }

        @Override // com.flurry.sdk.ho
        public final void a() {
            FlurryShareActivity.this.finish();
        }

        @Override // com.flurry.sdk.ho
        public final void b() {
            FlurryShareActivity.this.f2384a = true;
        }
    };
    private fb e;
    private RelativeLayout f;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        boolean z = false;
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.f = new RelativeLayout(this);
        setContentView(this.f);
        Intent intent = getIntent();
        this.e = new fb(this);
        fb fbVar = this.e;
        ho hoVar = this.c;
        if (intent != null && hoVar != null) {
            if (intent != null && intent.getExtras() != null) {
                fbVar.c = intent.getExtras();
                z = true;
            }
            if (z) {
                fbVar.c();
                fbVar.d = hoVar;
                fbVar.a(fb.a.INIT);
                fbVar.b.show();
                if (fbVar.c != null) {
                    fbVar.f = fbVar.c.getInt("com.flurry.android.post_id", -1);
                }
                ki.a().a("com.flurry.android.impl.analytics.tumblr.TumblrEvents", fbVar.g);
                if (ed.c().a()) {
                    fbVar.a();
                    return;
                }
                fbVar.a(fb.a.OAUTH_COMPLETE);
                fbVar.b();
                return;
            }
        }
        km.a(5, fb.f2650a, "Invalid intent.");
        eh.a(ei.kUnknown, fbVar.f, null);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        Uri data = intent.getData();
        String str = "";
        if (data != null) {
            str = data.getQueryParameter("oauth_verifier");
        }
        SharedPreferences sharedPreferences = jy.a().f2947a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
        el elVar = new el(sharedPreferences.getString("com.flurry.sdk.request_token", ""), sharedPreferences.getString("com.flurry.sdk.request_secret", ""));
        int i = getIntent().getExtras().getInt("com.flurry.android.post_id", -1);
        if (TextUtils.isEmpty(str) || elVar.a()) {
            eh.a(ei.kChromeTabError, i, "Chrome tab error");
            km.a(d, "Incoming intent uri must have tumblr_post param, verifier string and token.");
            finish();
            return;
        }
        km.a(d, "Successfully returned to activity from chrome tab");
        this.f2384a = false;
        this.b = true;
        this.e.a(elVar, str);
    }

    @Override // android.app.Activity
    protected void onResume() {
        if (this.f2384a && !this.b) {
            eh.a(ei.kOAuthLoginFailed, getIntent().getExtras().getInt("com.flurry.android.post_id", -1), "Returned from Chrome Tab without authentication");
            finish();
        }
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.e == null) {
            return;
        }
        this.e.a(fb.a.CANCEL);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        km.a(3, d, "onKeyUp");
        if (i != 4 || this.e == null) {
            return super.onKeyUp(i, keyEvent);
        }
        fb fbVar = this.e;
        fbVar.a(fb.a.CANCEL);
        fbVar.d.a();
        return true;
    }
}
