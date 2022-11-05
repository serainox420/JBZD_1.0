package com.google.android.gms.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzbaq;
/* loaded from: classes2.dex */
public class zzbat extends com.google.android.gms.common.internal.zzl<zzbaq> implements zzbai {
    private final com.google.android.gms.common.internal.zzg zzaAL;
    private Integer zzaFD;
    private final Bundle zzbEh;
    private final boolean zzbEs;

    public zzbat(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.zzg zzgVar, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzbEs = z;
        this.zzaAL = zzgVar;
        this.zzbEh = bundle;
        this.zzaFD = zzgVar.zzxS();
    }

    public zzbat(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.zzg zzgVar, zzbaj zzbajVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, z, zzgVar, zza(zzgVar), connectionCallbacks, onConnectionFailedListener);
    }

    private com.google.android.gms.common.internal.zzad zzPS() {
        Account zzxB = this.zzaAL.zzxB();
        GoogleSignInAccount googleSignInAccount = null;
        if ("<<default account>>".equals(zzxB.name)) {
            googleSignInAccount = com.google.android.gms.auth.api.signin.internal.zzn.zzas(getContext()).zzrB();
        }
        return new com.google.android.gms.common.internal.zzad(zzxB, this.zzaFD.intValue(), googleSignInAccount);
    }

    public static Bundle zza(com.google.android.gms.common.internal.zzg zzgVar) {
        zzbaj zzxR = zzgVar.zzxR();
        Integer zzxS = zzgVar.zzxS();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", zzgVar.getAccount());
        if (zzxS != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", zzxS.intValue());
        }
        if (zzxR != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", zzxR.zzPK());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", zzxR.isIdTokenRequested());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", zzxR.getServerClientId());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", zzxR.zzrl());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", zzxR.zzrm());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", zzxR.zzPL());
            if (zzxR.zzPM() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", zzxR.zzPM().longValue());
            }
            if (zzxR.zzPN() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", zzxR.zzPN().longValue());
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.zzbai
    public void connect() {
        zza(new zzf.zzi());
    }

    @Override // com.google.android.gms.internal.zzbai
    public void zzPJ() {
        try {
            ((zzbaq) zzxD()).zznv(this.zzaFD.intValue());
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    @Override // com.google.android.gms.internal.zzbai
    public void zza(com.google.android.gms.common.internal.zzr zzrVar, boolean z) {
        try {
            ((zzbaq) zzxD()).zza(zzrVar, this.zzaFD.intValue(), z);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    @Override // com.google.android.gms.internal.zzbai
    public void zza(zzbap zzbapVar) {
        com.google.android.gms.common.internal.zzac.zzb(zzbapVar, "Expecting a valid ISignInCallbacks");
        try {
            ((zzbaq) zzxD()).zza(new zzbau(zzPS()), zzbapVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                zzbapVar.zzb(new zzbaw(8));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.signin.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzfg */
    public zzbaq zzh(IBinder iBinder) {
        return zzbaq.zza.zzff(iBinder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public Bundle zzqL() {
        if (!getContext().getPackageName().equals(this.zzaAL.zzxO())) {
            this.zzbEh.putString("com.google.android.gms.signin.internal.realClientPackageName", this.zzaAL.zzxO());
        }
        return this.zzbEh;
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public boolean zzrd() {
        return this.zzbEs;
    }
}
