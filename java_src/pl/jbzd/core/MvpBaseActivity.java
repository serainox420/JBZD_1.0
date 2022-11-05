package pl.jbzd.core;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import butterknife.ButterKnife;
/* loaded from: classes3.dex */
public abstract class MvpBaseActivity extends AppCompatActivity {
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((MvpApplication) getApplication()).a(this);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        ButterKnife.a(this);
    }
}
