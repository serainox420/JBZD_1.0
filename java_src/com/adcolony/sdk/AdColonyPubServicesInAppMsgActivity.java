package com.adcolony.sdk;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.adcolony.sdk.cm;
/* loaded from: classes.dex */
public class AdColonyPubServicesInAppMsgActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    static final String f992a = "isModalRequest";
    ViewGroup b;
    ca c;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.c = new ca(this);
        getWindow().requestFeature(1);
        this.b = new RelativeLayout(this);
        this.b.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.b.setBackgroundColor(0);
        setContentView(this.b);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            a(extras.getBoolean(f992a, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewGroup a() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final boolean z) {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.AdColonyPubServicesInAppMsgActivity.1
            @Override // com.adcolony.sdk.bv
            public void a() {
                if (z) {
                    AdColonyPubServicesInAppMsgActivity.this.c.a(AdColonyPubServicesInAppMsgActivity.this);
                } else {
                    AdColonyPubServicesInAppMsgActivity.this.c.b(AdColonyPubServicesInAppMsgActivity.this);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        bz.aK().ap().a(new bv() { // from class: com.adcolony.sdk.AdColonyPubServicesInAppMsgActivity.2
            @Override // com.adcolony.sdk.bv
            public void a() {
                AdColonyPubServicesInAppMsgActivity.this.c.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.c.c();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        bz.aK().az().a(cm.a.HARDWARE_BACK_BUTTON);
        c();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        c();
        this.c.a();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        return "AdColonyPubServices";
    }
}
