package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzi;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
public class zzl extends zzi.zza {
    private final Context mContext;

    public zzl(Context context) {
        this.mContext = context;
    }

    private void zzrw() {
        if (!GooglePlayServicesUtil.zzf(this.mContext, Binder.getCallingUid())) {
            throw new SecurityException(new StringBuilder(52).append("Calling UID ").append(Binder.getCallingUid()).append(" is not Google Play services.").toString());
        }
    }

    private void zzrx() {
        zzn zzas = zzn.zzas(this.mContext);
        GoogleSignInAccount zzrB = zzas.zzrB();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.DEFAULT_SIGN_IN;
        if (zzrB != null) {
            googleSignInOptions = zzas.zzrC();
        }
        GoogleApiClient build = new GoogleApiClient.Builder(this.mContext).addApi(Auth.GOOGLE_SIGN_IN_API, googleSignInOptions).build();
        try {
            if (build.blockingConnect().isSuccess()) {
                if (zzrB != null) {
                    Auth.GoogleSignInApi.revokeAccess(build);
                } else {
                    build.clearDefaultAccountAndReconnect();
                }
            }
        } finally {
            build.disconnect();
        }
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zzi
    public void zzrv() {
        zzrw();
        zzrx();
    }
}
