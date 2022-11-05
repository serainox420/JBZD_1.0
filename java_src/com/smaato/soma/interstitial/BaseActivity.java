package com.smaato.soma.interstitial;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.smaato.soma.exception.AddingCloseButtonToInterstitialFailed;
import com.smaato.soma.exception.RequestingActivityFeaturesFailed;
import com.smaato.soma.internal.c.d;
import com.smaato.soma.l;
/* loaded from: classes3.dex */
public class BaseActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private RelativeLayout f5094a;
    private com.smaato.soma.b.b b;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new l<Void>() { // from class: com.smaato.soma.interstitial.BaseActivity.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                BaseActivity.this.c();
                BaseActivity.this.f5094a = new RelativeLayout(BaseActivity.this);
                new RelativeLayout.LayoutParams(-1, -2).addRule(13);
                BaseActivity.this.setContentView(BaseActivity.this.f5094a, new RelativeLayout.LayoutParams(-1, -1));
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RelativeLayout a() {
        return this.f5094a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() throws AddingCloseButtonToInterstitialFailed {
        try {
            this.b = new com.smaato.soma.b.b(getBaseContext());
            int a2 = d.a().a(getBaseContext(), 50);
            this.b.getLayoutParams().width = a2;
            this.b.getLayoutParams().height = a2;
            this.b.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.interstitial.BaseActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    new l<Void>() { // from class: com.smaato.soma.interstitial.BaseActivity.2.1
                        @Override // com.smaato.soma.l
                        /* renamed from: a */
                        public Void b() throws Exception {
                            BaseActivity.this.finish();
                            return null;
                        }
                    }.c();
                }
            });
            this.f5094a.addView(this.b);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new AddingCloseButtonToInterstitialFailed(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() throws RequestingActivityFeaturesFailed {
        try {
            requestWindowFeature(1);
            getWindow().addFlags(1024);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RequestingActivityFeaturesFailed(e2);
        }
    }
}
