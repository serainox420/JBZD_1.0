package pl.jbzd.app.view.splash;

import android.content.Intent;
import android.os.Bundle;
import pl.jbzd.app.view.main.MainActivity;
import pl.jbzd.core.MvpBaseActivity;
/* loaded from: classes3.dex */
public class SplashActivity extends MvpBaseActivity {
    @Override // pl.jbzd.core.MvpBaseActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        startActivity(new Intent(this, MainActivity.class));
        finish();
    }
}
