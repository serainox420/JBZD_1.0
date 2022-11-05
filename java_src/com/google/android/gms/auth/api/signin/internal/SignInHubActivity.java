package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.ac;
import android.support.v4.content.k;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
@KeepName
/* loaded from: classes2.dex */
public class SignInHubActivity extends FragmentActivity {
    private zzn zzakI;
    private SignInConfiguration zzakJ;
    private boolean zzakK;
    private int zzakL;
    private Intent zzakM;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza implements ac.a<Void> {
        private zza() {
        }

        @Override // android.support.v4.app.ac.a
        public k<Void> onCreateLoader(int i, Bundle bundle) {
            return new zzb(SignInHubActivity.this, GoogleApiClient.zzvm());
        }

        @Override // android.support.v4.app.ac.a
        public void onLoaderReset(k<Void> kVar) {
        }

        @Override // android.support.v4.app.ac.a
        /* renamed from: zza */
        public void onLoadFinished(k<Void> kVar, Void r5) {
            SignInHubActivity.this.setResult(SignInHubActivity.this.zzakL, SignInHubActivity.this.zzakM);
            SignInHubActivity.this.finish();
        }
    }

    private void zza(int i, Intent intent) {
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra(GoogleSignInApi.EXTRA_SIGN_IN_ACCOUNT);
            if (signInAccount != null && signInAccount.zzro() != null) {
                GoogleSignInAccount zzro = signInAccount.zzro();
                this.zzakI.zzb(zzro, this.zzakJ.zzrz());
                intent.removeExtra(GoogleSignInApi.EXTRA_SIGN_IN_ACCOUNT);
                intent.putExtra("googleSignInAccount", zzro);
                this.zzakK = true;
                this.zzakL = i;
                this.zzakM = intent;
                zzrA();
                return;
            } else if (intent.hasExtra("errorCode")) {
                zzbq(intent.getIntExtra("errorCode", 8));
                return;
            }
        }
        zzbq(8);
    }

    private void zzbq(int i) {
        Status status = new Status(i);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
    }

    private void zzj(Intent intent) {
        intent.setPackage("com.google.android.gms");
        intent.putExtra("config", this.zzakJ);
        try {
            startActivityForResult(intent, 40962);
        } catch (ActivityNotFoundException e) {
            Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
            zzbq(8);
        }
    }

    private void zzrA() {
        getSupportLoaderManager().a(0, null, new zza());
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        setResult(0);
        switch (i) {
            case 40962:
                zza(i2, intent);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzakI = zzn.zzas(this);
        Intent intent = getIntent();
        if (!"com.google.android.gms.auth.GOOGLE_SIGN_IN".equals(intent.getAction())) {
            String valueOf = String.valueOf(intent.getAction());
            Log.e("AuthSignInClient", valueOf.length() != 0 ? "Unknown action: ".concat(valueOf) : new String("Unknown action: "));
            finish();
        }
        this.zzakJ = (SignInConfiguration) intent.getParcelableExtra("config");
        if (this.zzakJ == null) {
            Log.e("AuthSignInClient", "Activity started with invalid configuration.");
            setResult(0);
            finish();
        } else if (bundle == null) {
            zzj(new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN"));
        } else {
            this.zzakK = bundle.getBoolean("signingInGoogleApiClients");
            if (!this.zzakK) {
                return;
            }
            this.zzakL = bundle.getInt("signInResultCode");
            this.zzakM = (Intent) bundle.getParcelable("signInResultData");
            zzrA();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.zzakK);
        if (this.zzakK) {
            bundle.putInt("signInResultCode", this.zzakL);
            bundle.putParcelable("signInResultData", this.zzakM);
        }
    }
}
