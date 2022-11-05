package com.revmob.ads.button;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import com.revmob.RevMobAdsListener;
import com.revmob.a.e;
import com.revmob.ads.a.c;
import com.revmob.ads.link.RevMobLink;
/* loaded from: classes3.dex */
public class RevMobButton extends Button {

    /* renamed from: a  reason: collision with root package name */
    private Activity f4756a;
    private RevMobAdsListener b;
    private String c;

    public RevMobButton(Activity activity, RevMobAdsListener revMobAdsListener) {
        this(activity.getApplicationContext(), (AttributeSet) null);
        this.b = revMobAdsListener;
    }

    public RevMobButton(Activity activity, RevMobAdsListener revMobAdsListener, String str) {
        this(activity, revMobAdsListener);
        this.c = str;
    }

    public RevMobButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i = c.f4742a;
        setClickListener();
    }

    private RevMobLink createLink() {
        RevMobLink revMobLink = new RevMobLink(this.f4756a, getPublisherListener());
        revMobLink.open(this.c);
        return revMobLink;
    }

    private RevMobAdsListener getPublisherListener() {
        return this.b != null ? this.b : e.b;
    }

    private boolean isLoaded() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performLinkClick() {
        int i = c.g;
        createLink();
    }

    private void setClickListener() {
        setOnClickListener(new a(this));
    }

    public void setListener(RevMobAdsListener revMobAdsListener) {
        this.b = revMobAdsListener;
    }

    public void setPlacementId(String str) {
        this.c = str;
    }
}
