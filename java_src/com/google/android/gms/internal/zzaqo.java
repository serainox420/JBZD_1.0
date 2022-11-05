package com.google.android.gms.internal;

import android.accounts.Account;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.identity.intents.AddressConstants;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.internal.zzaqp;
import com.google.android.gms.internal.zzaqq;
/* loaded from: classes2.dex */
public class zzaqo extends com.google.android.gms.common.internal.zzl<zzaqq> {
    private Activity mActivity;
    private final int mTheme;
    private final String zzaiu;
    private zza zzbhu;

    /* loaded from: classes2.dex */
    public static final class zza extends zzaqp.zza {
        private Activity mActivity;
        private final int zzazu;

        public zza(int i, Activity activity) {
            this.zzazu = i;
            this.mActivity = activity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setActivity(Activity activity) {
            this.mActivity = activity;
        }

        @Override // com.google.android.gms.internal.zzaqp
        public void zzj(int i, Bundle bundle) {
            if (i == 1) {
                Intent intent = new Intent();
                intent.putExtras(bundle);
                PendingIntent createPendingResult = this.mActivity.createPendingResult(this.zzazu, intent, 1073741824);
                if (createPendingResult == null) {
                    return;
                }
                try {
                    createPendingResult.send(1);
                    return;
                } catch (PendingIntent.CanceledException e) {
                    Log.w("AddressClientImpl", "Exception settng pending result", e);
                    return;
                }
            }
            PendingIntent pendingIntent = null;
            if (bundle != null) {
                pendingIntent = (PendingIntent) bundle.getParcelable("com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT");
            }
            ConnectionResult connectionResult = new ConnectionResult(i, pendingIntent);
            if (connectionResult.hasResolution()) {
                try {
                    connectionResult.startResolutionForResult(this.mActivity, this.zzazu);
                    return;
                } catch (IntentSender.SendIntentException e2) {
                    Log.w("AddressClientImpl", "Exception starting pending intent", e2);
                    return;
                }
            }
            try {
                PendingIntent createPendingResult2 = this.mActivity.createPendingResult(this.zzazu, new Intent(), 1073741824);
                if (createPendingResult2 == null) {
                    return;
                }
                createPendingResult2.send(1);
            } catch (PendingIntent.CanceledException e3) {
                Log.w("AddressClientImpl", "Exception setting pending result", e3);
            }
        }
    }

    public zzaqo(Activity activity, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, int i, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(activity, looper, 12, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzaiu = zzgVar.getAccountName();
        this.mActivity = activity;
        this.mTheme = i;
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public void disconnect() {
        super.disconnect();
        if (this.zzbhu != null) {
            this.zzbhu.setActivity(null);
            this.zzbhu = null;
        }
    }

    protected zzaqq zzHe() throws DeadObjectException {
        return (zzaqq) super.zzxD();
    }

    protected void zzHf() {
        super.zzxC();
    }

    public void zza(UserAddressRequest userAddressRequest, int i) {
        zzHf();
        this.zzbhu = new zza(i, this.mActivity);
        try {
            Bundle bundle = new Bundle();
            bundle.putString("com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME", getContext().getPackageName());
            if (!TextUtils.isEmpty(this.zzaiu)) {
                bundle.putParcelable("com.google.android.gms.identity.intents.EXTRA_ACCOUNT", new Account(this.zzaiu, "com.google"));
            }
            bundle.putInt("com.google.android.gms.identity.intents.EXTRA_THEME", this.mTheme);
            zzHe().zza(this.zzbhu, userAddressRequest, bundle);
        } catch (RemoteException e) {
            Log.e("AddressClientImpl", "Exception requesting user address", e);
            Bundle bundle2 = new Bundle();
            bundle2.putInt(AddressConstants.Extras.EXTRA_ERROR_CODE, AddressConstants.ErrorCodes.ERROR_CODE_NO_APPLICABLE_ADDRESSES);
            this.zzbhu.zzj(1, bundle2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzcW */
    public zzaqq zzh(IBinder iBinder) {
        return zzaqq.zza.zzcY(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.identity.intents.internal.IAddressService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.identity.service.BIND";
    }

    @Override // com.google.android.gms.common.internal.zzf
    public boolean zzxE() {
        return true;
    }
}
