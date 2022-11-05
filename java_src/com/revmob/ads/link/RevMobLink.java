package com.revmob.ads.link;

import android.app.Activity;
import com.revmob.RevMobAdsListener;
import com.revmob.ads.a.c;
import com.revmob.ads.link.a.b;
import com.revmob.client.RevMobClient;
import com.revmob.internal.RMLog;
/* loaded from: classes3.dex */
public class RevMobLink implements com.revmob.ads.a.a {

    /* renamed from: a  reason: collision with root package name */
    private Activity f4781a;
    private b b;
    private boolean c = false;
    private int d = c.f4742a;
    private com.revmob.ads.link.a.a e;
    private RevMobAdsListener f;

    public RevMobLink(Activity activity, RevMobAdsListener revMobAdsListener) {
        this.f4781a = activity;
        this.f = revMobAdsListener;
    }

    private boolean isLoaded() {
        return this.b != null;
    }

    public void cancel() {
        this.c = false;
    }

    public void load() {
        load(null);
    }

    public void load(String str) {
        if (this.d == c.f4742a || this.d == c.f) {
            RMLog.i(str != null ? "Loading Link " + str : "Loading Link");
            this.e = new com.revmob.ads.link.a.a(this, this.f);
            RevMobClient.a().e(str, this.e);
        }
    }

    public void open() {
        open(null);
    }

    public void open(String str) {
        this.c = true;
        if (!isLoaded() || this.d == c.d) {
            this.e = new com.revmob.ads.link.a.a(this, this.f);
            RevMobClient.a().a(this.f4781a, str, this.f);
            return;
        }
        this.d = c.d;
        RevMobClient.a().a(this.b);
        this.f4781a.runOnUiThread(new a(this));
    }

    @Override // com.revmob.ads.a.a
    public void updateWithData(com.revmob.client.a aVar) {
        this.d = c.c;
        this.b = (b) aVar;
        RMLog.i("Link loaded - " + this.b.d);
        if (this.f != null) {
            this.f.onRevMobAdReceived();
        }
        if (this.c) {
            open();
        }
    }
}
