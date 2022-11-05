package com.mopub.mobileads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.mopub.common.AdReport;
import com.mopub.common.CloseableLayout;
import com.mopub.common.DataKeys;
/* compiled from: BaseInterstitialActivity.java */
/* loaded from: classes3.dex */
abstract class a extends Activity {

    /* renamed from: a  reason: collision with root package name */
    protected AdReport f4502a;
    private CloseableLayout b;
    private Long c;

    public abstract View getAdView();

    /* compiled from: BaseInterstitialActivity.java */
    /* renamed from: com.mopub.mobileads.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    enum EnumC0524a {
        WEB_VIEW_DID_APPEAR("webviewDidAppear();"),
        WEB_VIEW_DID_CLOSE("webviewDidClose();");
        

        /* renamed from: a  reason: collision with root package name */
        private String f4504a;

        EnumC0524a(String str) {
            this.f4504a = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public String a() {
            return this.f4504a;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public String b() {
            return "javascript:" + this.f4504a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.c = a(intent);
        this.f4502a = b(intent);
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        View adView = getAdView();
        this.b = new CloseableLayout(this);
        this.b.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mobileads.a.1
            @Override // com.mopub.common.CloseableLayout.OnCloseListener
            public void onClose() {
                a.this.finish();
            }
        });
        this.b.addView(adView, new FrameLayout.LayoutParams(-1, -1));
        setContentView(this.b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        this.b.removeAllViews();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long a() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        this.b.setCloseVisible(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        this.b.setCloseVisible(false);
    }

    protected static Long a(Intent intent) {
        if (intent.hasExtra(DataKeys.BROADCAST_IDENTIFIER_KEY)) {
            return Long.valueOf(intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L));
        }
        return null;
    }

    protected static AdReport b(Intent intent) {
        try {
            return (AdReport) intent.getSerializableExtra(DataKeys.AD_REPORT_KEY);
        } catch (ClassCastException e) {
            return null;
        }
    }
}
