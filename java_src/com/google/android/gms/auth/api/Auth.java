package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzc;
import com.google.android.gms.auth.api.signin.internal.zzd;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzut;
import com.google.android.gms.internal.zzuu;
import com.google.android.gms.internal.zzuv;
import com.google.android.gms.internal.zzvc;
import com.google.android.gms.internal.zzvf;
import com.google.android.gms.internal.zzvt;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class Auth {
    public static final Api.zzf<zzvf> zzaiS = new Api.zzf<>();
    public static final Api.zzf<zzuv> zzaiT = new Api.zzf<>();
    public static final Api.zzf<zzd> zzaiU = new Api.zzf<>();
    private static final Api.zza<zzvf, AuthCredentialsOptions> zzaiV = new Api.zza<zzvf, AuthCredentialsOptions>() { // from class: com.google.android.gms.auth.api.Auth.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzvf zza(Context context, Looper looper, zzg zzgVar, AuthCredentialsOptions authCredentialsOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzvf(context, looper, zzgVar, authCredentialsOptions, connectionCallbacks, onConnectionFailedListener);
        }
    };
    private static final Api.zza<zzuv, Api.ApiOptions.NoOptions> zzaiW = new Api.zza<zzuv, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.auth.api.Auth.2
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzd */
        public zzuv zza(Context context, Looper looper, zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzuv(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    private static final Api.zza<zzd, GoogleSignInOptions> zzaiX = new Api.zza<zzd, GoogleSignInOptions>() { // from class: com.google.android.gms.auth.api.Auth.3
        @Override // com.google.android.gms.common.api.Api.zza
        public zzd zza(Context context, Looper looper, zzg zzgVar, GoogleSignInOptions googleSignInOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzd(context, looper, zzgVar, googleSignInOptions, connectionCallbacks, onConnectionFailedListener);
        }

        @Override // com.google.android.gms.common.api.Api.zzd
        /* renamed from: zza */
        public List<Scope> zzp(GoogleSignInOptions googleSignInOptions) {
            return googleSignInOptions == null ? Collections.emptyList() : googleSignInOptions.zzrj();
        }
    };
    public static final Api<zzb> PROXY_API = zza.API;
    public static final Api<AuthCredentialsOptions> CREDENTIALS_API = new Api<>("Auth.CREDENTIALS_API", zzaiV, zzaiS);
    public static final Api<GoogleSignInOptions> GOOGLE_SIGN_IN_API = new Api<>("Auth.GOOGLE_SIGN_IN_API", zzaiX, zzaiU);
    public static final Api<Api.ApiOptions.NoOptions> zzaiY = new Api<>("Auth.ACCOUNT_STATUS_API", zzaiW, zzaiT);
    public static final ProxyApi ProxyApi = new zzvt();
    public static final CredentialsApi CredentialsApi = new zzvc();
    public static final zzut zzaiZ = new zzuu();
    public static final GoogleSignInApi GoogleSignInApi = new zzc();

    /* loaded from: classes2.dex */
    public static final class AuthCredentialsOptions implements Api.ApiOptions.Optional {
        private final String zzaja;
        private final PasswordSpecification zzajb;

        /* loaded from: classes2.dex */
        public static class Builder {
            private PasswordSpecification zzajb = PasswordSpecification.zzajC;
        }

        public Bundle zzqL() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", this.zzaja);
            bundle.putParcelable("password_specification", this.zzajb);
            return bundle;
        }

        public PasswordSpecification zzqT() {
            return this.zzajb;
        }
    }

    private Auth() {
    }
}
