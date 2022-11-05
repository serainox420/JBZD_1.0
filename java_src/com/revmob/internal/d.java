package com.revmob.internal;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import com.loopme.adbrowser.AdBrowserWebViewClient;
import com.revmob.FullscreenActivity;
import com.revmob.RevMobAdsListener;
/* loaded from: classes3.dex */
public final class d extends AsyncTask {

    /* renamed from: a  reason: collision with root package name */
    private RevMobAdsListener f4799a;
    private Activity b;
    private com.revmob.client.a c;
    private i d;
    private boolean e;
    private String f;

    public d(Activity activity, com.revmob.client.a aVar, RevMobAdsListener revMobAdsListener) {
        this(activity, aVar, revMobAdsListener, (byte) 0);
    }

    private d(Activity activity, com.revmob.client.a aVar, RevMobAdsListener revMobAdsListener, byte b) {
        this(activity, aVar, revMobAdsListener, null, null);
    }

    public d(Activity activity, com.revmob.client.a aVar, RevMobAdsListener revMobAdsListener, i iVar, String str) {
        this.e = true;
        this.f = null;
        this.b = activity;
        this.f4799a = revMobAdsListener;
        this.c = aVar;
        this.d = iVar;
        this.f = str;
    }

    public final void a(String str) {
        try {
            this.b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception e) {
            String str2 = null;
            if (this.c != null) {
                str2 = this.c.d;
            }
            u.a(e, str2, w.c, str, "openUrlInTheBrowser");
            if (str.startsWith("market://")) {
                this.b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(AdBrowserWebViewClient.PLAY_STORE_URL + str.substring(20))));
            } else if (str.startsWith("http")) {
                RMLog.e("Click url ( " + str + " ) not valid. Please report this to support@revmob.com with the exception stack trace: ", e);
            } else {
                this.b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://" + str)));
            }
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object[] objArr) {
        if (!this.c.T()) {
            this.c.c(this.f);
            if (!this.c.U()) {
                a(this.c.c(this.f));
                return null;
            }
            this.b.runOnUiThread(new f(this, this.c.c(this.f)));
            return null;
        }
        String c = this.c.c(this.f);
        String c2 = new j(c, com.revmob.a.e.a()).c(this.c.c());
        if (this.e && this.c.b != null && this.c.c() != null && !this.c.c().endsWith("#click")) {
            String c3 = this.c.c(this.f);
            this.e = false;
            new h(c3, "").start();
        }
        if (c2 == "alreadyOpeningBrowser") {
            if (this.f4799a == null) {
                return null;
            }
            this.f4799a.onRevMobAdClicked();
            return null;
        } else if (c2 == null && this.c.e == "link") {
            RMLog.e("Redirect link not received.");
            if (this.f4799a == null) {
                return null;
            }
            this.f4799a.onRevMobAdNotReceived("Native link not received.");
            return null;
        } else if (c2 == null || c.equals(c2)) {
            return null;
        } else {
            if (this.f4799a != null) {
                this.f4799a.onRevMobAdClicked();
            }
            boolean booleanValue = FullscreenActivity.a(this.b).booleanValue();
            if (this.c.c != "site" || !this.c.U() || !booleanValue) {
                a(c2);
                return null;
            }
            this.b.runOnUiThread(new e(this, c2));
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        if (this.d != null) {
            this.d.a();
        }
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
    }
}
