package com.google.android.gms.internal;

import android.accounts.Account;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.BooleanResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzbku;
import com.google.android.gms.internal.zzbkw;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.IsReadyToPayRequest;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.WalletConstants;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class zzbky extends com.google.android.gms.common.internal.zzl<zzbku> {
    private final Context mContext;
    private final int mTheme;
    private final String zzaiu;
    private final int zzbRt;
    private final boolean zzbRu;

    /* loaded from: classes2.dex */
    private static class zza extends zzbkw.zza {
        private zza() {
        }

        @Override // com.google.android.gms.internal.zzbkw
        public void zza(int i, FullWallet fullWallet, Bundle bundle) {
        }

        @Override // com.google.android.gms.internal.zzbkw
        public void zza(int i, MaskedWallet maskedWallet, Bundle bundle) {
        }

        @Override // com.google.android.gms.internal.zzbkw
        public void zza(int i, boolean z, Bundle bundle) {
        }

        @Override // com.google.android.gms.internal.zzbkw
        public void zza(Status status, Bundle bundle) {
        }

        @Override // com.google.android.gms.internal.zzbkw
        public void zza(Status status, com.google.android.gms.wallet.firstparty.zzf zzfVar, Bundle bundle) {
        }

        @Override // com.google.android.gms.internal.zzbkw
        public void zza(Status status, com.google.android.gms.wallet.firstparty.zzj zzjVar, Bundle bundle) {
        }

        @Override // com.google.android.gms.internal.zzbkw
        public void zza(Status status, com.google.android.gms.wallet.zzu zzuVar, Bundle bundle) {
        }

        @Override // com.google.android.gms.internal.zzbkw
        public void zza(Status status, boolean z, Bundle bundle) {
        }

        @Override // com.google.android.gms.internal.zzbkw
        public void zzb(int i, boolean z, Bundle bundle) {
        }

        @Override // com.google.android.gms.internal.zzbkw
        public void zzb(Status status, Bundle bundle) {
        }

        @Override // com.google.android.gms.internal.zzbkw
        public void zzm(int i, Bundle bundle) {
        }
    }

    /* loaded from: classes2.dex */
    private static class zzb extends zza {
        private final zzaad.zzb<BooleanResult> zzaGN;

        public zzb(zzaad.zzb<BooleanResult> zzbVar) {
            super();
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzbky.zza, com.google.android.gms.internal.zzbkw
        public void zza(Status status, boolean z, Bundle bundle) {
            this.zzaGN.setResult(new BooleanResult(status, z));
        }
    }

    /* loaded from: classes2.dex */
    static final class zzc extends zza {
        private final int zzazu;
        private final WeakReference<Activity> zzbSs;

        public zzc(Context context, int i) {
            super();
            this.zzbSs = new WeakReference<>((Activity) context);
            this.zzazu = i;
        }

        @Override // com.google.android.gms.internal.zzbky.zza, com.google.android.gms.internal.zzbkw
        public void zza(int i, FullWallet fullWallet, Bundle bundle) {
            int i2;
            Activity activity = this.zzbSs.get();
            if (activity == null) {
                Log.d("WalletClientImpl", "Ignoring onFullWalletLoaded, Activity has gone");
                return;
            }
            PendingIntent pendingIntent = null;
            if (bundle != null) {
                pendingIntent = (PendingIntent) bundle.getParcelable("com.google.android.gms.wallet.EXTRA_PENDING_INTENT");
            }
            ConnectionResult connectionResult = new ConnectionResult(i, pendingIntent);
            if (connectionResult.hasResolution()) {
                try {
                    connectionResult.startResolutionForResult(activity, this.zzazu);
                    return;
                } catch (IntentSender.SendIntentException e) {
                    Log.w("WalletClientImpl", "Exception starting pending intent", e);
                    return;
                }
            }
            Intent intent = new Intent();
            if (connectionResult.isSuccess()) {
                i2 = -1;
                intent.putExtra(WalletConstants.EXTRA_FULL_WALLET, fullWallet);
            } else {
                i2 = i == 408 ? 0 : 1;
                intent.putExtra(WalletConstants.EXTRA_ERROR_CODE, i);
            }
            PendingIntent createPendingResult = activity.createPendingResult(this.zzazu, intent, 1073741824);
            if (createPendingResult == null) {
                Log.w("WalletClientImpl", "Null pending result returned for onFullWalletLoaded");
                return;
            }
            try {
                createPendingResult.send(i2);
            } catch (PendingIntent.CanceledException e2) {
                Log.w("WalletClientImpl", "Exception setting pending result", e2);
            }
        }

        @Override // com.google.android.gms.internal.zzbky.zza, com.google.android.gms.internal.zzbkw
        public void zza(int i, MaskedWallet maskedWallet, Bundle bundle) {
            int i2;
            Activity activity = this.zzbSs.get();
            if (activity == null) {
                Log.d("WalletClientImpl", "Ignoring onMaskedWalletLoaded, Activity has gone");
                return;
            }
            PendingIntent pendingIntent = null;
            if (bundle != null) {
                pendingIntent = (PendingIntent) bundle.getParcelable("com.google.android.gms.wallet.EXTRA_PENDING_INTENT");
            }
            ConnectionResult connectionResult = new ConnectionResult(i, pendingIntent);
            if (connectionResult.hasResolution()) {
                try {
                    connectionResult.startResolutionForResult(activity, this.zzazu);
                    return;
                } catch (IntentSender.SendIntentException e) {
                    Log.w("WalletClientImpl", "Exception starting pending intent", e);
                    return;
                }
            }
            Intent intent = new Intent();
            if (connectionResult.isSuccess()) {
                i2 = -1;
                intent.putExtra(WalletConstants.EXTRA_MASKED_WALLET, maskedWallet);
            } else {
                i2 = i == 408 ? 0 : 1;
                intent.putExtra(WalletConstants.EXTRA_ERROR_CODE, i);
            }
            PendingIntent createPendingResult = activity.createPendingResult(this.zzazu, intent, 1073741824);
            if (createPendingResult == null) {
                Log.w("WalletClientImpl", "Null pending result returned for onMaskedWalletLoaded");
                return;
            }
            try {
                createPendingResult.send(i2);
            } catch (PendingIntent.CanceledException e2) {
                Log.w("WalletClientImpl", "Exception setting pending result", e2);
            }
        }

        @Override // com.google.android.gms.internal.zzbky.zza, com.google.android.gms.internal.zzbkw
        public void zza(int i, boolean z, Bundle bundle) {
            Activity activity = this.zzbSs.get();
            if (activity == null) {
                Log.d("WalletClientImpl", "Ignoring onPreAuthorizationDetermined, Activity has gone");
                return;
            }
            Intent intent = new Intent();
            intent.putExtra(WalletConstants.EXTRA_IS_USER_PREAUTHORIZED, z);
            PendingIntent createPendingResult = activity.createPendingResult(this.zzazu, intent, 1073741824);
            if (createPendingResult == null) {
                Log.w("WalletClientImpl", "Null pending result returned for onPreAuthorizationDetermined");
                return;
            }
            try {
                createPendingResult.send(-1);
            } catch (PendingIntent.CanceledException e) {
                Log.w("WalletClientImpl", "Exception setting pending result", e);
            }
        }

        @Override // com.google.android.gms.internal.zzbky.zza, com.google.android.gms.internal.zzbkw
        public void zza(Status status, boolean z, Bundle bundle) {
            Activity activity = this.zzbSs.get();
            if (activity == null) {
                Log.d("WalletClientImpl", "Ignoring onIsReadyToPayDetermined, Activity has gone");
                return;
            }
            Intent intent = new Intent();
            intent.putExtra(WalletConstants.EXTRA_IS_READY_TO_PAY, z);
            PendingIntent createPendingResult = activity.createPendingResult(this.zzazu, intent, 1073741824);
            if (createPendingResult == null) {
                Log.w("WalletClientImpl", "Null pending result returned for onIsReadyToPayDetermined");
                return;
            }
            try {
                createPendingResult.send(-1);
            } catch (PendingIntent.CanceledException e) {
                Log.w("WalletClientImpl", "Exception setting pending result in onIsReadyToPayDetermined", e);
            }
        }

        @Override // com.google.android.gms.internal.zzbky.zza, com.google.android.gms.internal.zzbkw
        public void zzb(int i, boolean z, Bundle bundle) {
            Activity activity = this.zzbSs.get();
            if (activity == null) {
                Log.d("WalletClientImpl", "Ignoring onIsNewUserDetermined, Activity has gone");
                return;
            }
            Intent intent = new Intent();
            intent.putExtra(WalletConstants.EXTRA_IS_NEW_USER, z);
            PendingIntent createPendingResult = activity.createPendingResult(this.zzazu, intent, 1073741824);
            if (createPendingResult == null) {
                Log.w("WalletClientImpl", "Null pending result returned for onIsNewUserDetermined");
                return;
            }
            try {
                createPendingResult.send(-1);
            } catch (PendingIntent.CanceledException e) {
                Log.w("WalletClientImpl", "Exception setting pending result", e);
            }
        }

        @Override // com.google.android.gms.internal.zzbky.zza, com.google.android.gms.internal.zzbkw
        public void zzm(int i, Bundle bundle) {
            com.google.android.gms.common.internal.zzac.zzb(bundle, "Bundle should not be null");
            Activity activity = this.zzbSs.get();
            if (activity == null) {
                Log.d("WalletClientImpl", "Ignoring onWalletObjectsCreated, Activity has gone");
                return;
            }
            ConnectionResult connectionResult = new ConnectionResult(i, (PendingIntent) bundle.getParcelable("com.google.android.gms.wallet.EXTRA_PENDING_INTENT"));
            if (connectionResult.hasResolution()) {
                try {
                    connectionResult.startResolutionForResult(activity, this.zzazu);
                    return;
                } catch (IntentSender.SendIntentException e) {
                    Log.w("WalletClientImpl", "Exception starting pending intent", e);
                    return;
                }
            }
            String valueOf = String.valueOf(connectionResult);
            Log.e("WalletClientImpl", new StringBuilder(String.valueOf(valueOf).length() + 75).append("Create Wallet Objects confirmation UI will not be shown connection result: ").append(valueOf).toString());
            Intent intent = new Intent();
            intent.putExtra(WalletConstants.EXTRA_ERROR_CODE, WalletConstants.ERROR_CODE_UNKNOWN);
            PendingIntent createPendingResult = activity.createPendingResult(this.zzazu, intent, 1073741824);
            if (createPendingResult == null) {
                Log.w("WalletClientImpl", "Null pending result returned for onWalletObjectsCreated");
                return;
            }
            try {
                createPendingResult.send(1);
            } catch (PendingIntent.CanceledException e2) {
                Log.w("WalletClientImpl", "Exception setting pending result", e2);
            }
        }
    }

    public zzbky(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, int i, int i2, boolean z) {
        super(context, looper, 4, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.mContext = context;
        this.zzbRt = i;
        this.zzaiu = zzgVar.getAccountName();
        this.mTheme = i2;
        this.zzbRu = z;
    }

    private Bundle zzUa() {
        return zza(this.zzbRt, this.mContext.getPackageName(), this.zzaiu, this.mTheme, this.zzbRu);
    }

    @TargetApi(14)
    public static Bundle zza(int i, String str, String str2, int i2, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putInt("com.google.android.gms.wallet.EXTRA_ENVIRONMENT", i);
        bundle.putBoolean("com.google.android.gms.wallet.EXTRA_USING_ANDROID_PAY_BRAND", z);
        bundle.putString("androidPackageName", str);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putParcelable("com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT", new Account(str2, "com.google"));
        }
        bundle.putInt("com.google.android.gms.wallet.EXTRA_THEME", i2);
        return bundle;
    }

    public void zza(FullWalletRequest fullWalletRequest, int i) {
        zzc zzcVar = new zzc(this.mContext, i);
        try {
            ((zzbku) zzxD()).zza(fullWalletRequest, zzUa(), zzcVar);
        } catch (RemoteException e) {
            Log.e("WalletClientImpl", "RemoteException getting full wallet", e);
            zzcVar.zza(8, (FullWallet) null, Bundle.EMPTY);
        }
    }

    public void zza(IsReadyToPayRequest isReadyToPayRequest, zzaad.zzb<BooleanResult> zzbVar) {
        zzb zzbVar2 = new zzb(zzbVar);
        try {
            ((zzbku) zzxD()).zza(isReadyToPayRequest, zzUa(), zzbVar2);
        } catch (RemoteException e) {
            Log.e("WalletClientImpl", "RemoteException during isReadyToPay", e);
            zzbVar2.zza(Status.zzazz, false, Bundle.EMPTY);
        }
    }

    public void zza(MaskedWalletRequest maskedWalletRequest, int i) {
        Bundle zzUa = zzUa();
        zzc zzcVar = new zzc(this.mContext, i);
        try {
            ((zzbku) zzxD()).zza(maskedWalletRequest, zzUa, zzcVar);
        } catch (RemoteException e) {
            Log.e("WalletClientImpl", "RemoteException getting masked wallet", e);
            zzcVar.zza(8, (MaskedWallet) null, Bundle.EMPTY);
        }
    }

    public void zza(NotifyTransactionStatusRequest notifyTransactionStatusRequest) {
        try {
            ((zzbku) zzxD()).zza(notifyTransactionStatusRequest, zzUa());
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.wallet.internal.IOwService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.wallet.service.BIND";
    }

    public void zzf(String str, String str2, int i) {
        Bundle zzUa = zzUa();
        zzc zzcVar = new zzc(this.mContext, i);
        try {
            ((zzbku) zzxD()).zza(str, str2, zzUa, zzcVar);
        } catch (RemoteException e) {
            Log.e("WalletClientImpl", "RemoteException changing masked wallet", e);
            zzcVar.zza(8, (MaskedWallet) null, Bundle.EMPTY);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzfy */
    public zzbku zzh(IBinder iBinder) {
        return zzbku.zza.zzfv(iBinder);
    }

    public void zzoY(int i) {
        Bundle zzUa = zzUa();
        zzc zzcVar = new zzc(this.mContext, i);
        try {
            ((zzbku) zzxD()).zza(zzUa, zzcVar);
        } catch (RemoteException e) {
            Log.e("WalletClientImpl", "RemoteException during checkForPreAuthorization", e);
            zzcVar.zza(8, false, Bundle.EMPTY);
        }
    }

    public void zzoZ(int i) {
        Bundle zzUa = zzUa();
        zzc zzcVar = new zzc(this.mContext, i);
        try {
            ((zzbku) zzxD()).zzb(zzUa, zzcVar);
        } catch (RemoteException e) {
            Log.e("WalletClientImpl", "RemoteException during isNewUser", e);
            zzcVar.zzb(8, false, Bundle.EMPTY);
        }
    }

    @Override // com.google.android.gms.common.internal.zzf
    public boolean zzxE() {
        return true;
    }
}
