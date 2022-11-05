package com.google.android.gms.wallet;

import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzbkx;
import com.google.android.gms.internal.zzbky;
import com.google.android.gms.internal.zzbla;
import com.google.android.gms.internal.zzblb;
import java.util.Locale;
/* loaded from: classes.dex */
public final class Wallet {
    private static final Api.zzf<zzbky> zzaid = new Api.zzf<>();
    private static final Api.zza<zzbky, WalletOptions> zzaie = new Api.zza<zzbky, WalletOptions>() { // from class: com.google.android.gms.wallet.Wallet.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzbky zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, WalletOptions walletOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            if (walletOptions == null) {
                walletOptions = new WalletOptions();
            }
            return new zzbky(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener, walletOptions.environment, walletOptions.theme, walletOptions.zzbRs);
        }
    };
    public static final Api<WalletOptions> API = new Api<>("Wallet.API", zzaie, zzaid);
    public static final Payments Payments = new zzbkx();
    public static final com.google.android.gms.wallet.wobs.zzr zzbRq = new zzblb();
    public static final com.google.android.gms.wallet.firstparty.zzc zzbRr = new zzbla();

    /* loaded from: classes2.dex */
    public static final class WalletOptions implements Api.ApiOptions.HasOptions {
        public final int environment;
        public final int theme;
        final boolean zzbRs;

        /* loaded from: classes.dex */
        public static final class Builder {
            private int zzbRt = 3;
            private int mTheme = 0;
            private boolean zzbRu = true;

            public WalletOptions build() {
                return new WalletOptions(this);
            }

            public Builder setEnvironment(int i) {
                if (i == 0 || i == 0 || i == 2 || i == 1 || i == 3) {
                    this.zzbRt = i;
                    return this;
                }
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid environment value %d", Integer.valueOf(i)));
            }

            public Builder setTheme(int i) {
                if (i == 0 || i == 1) {
                    this.mTheme = i;
                    return this;
                }
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid theme value %d", Integer.valueOf(i)));
            }

            @Deprecated
            public Builder useGoogleWallet() {
                this.zzbRu = false;
                return this;
            }
        }

        private WalletOptions() {
            this(new Builder());
        }

        private WalletOptions(Builder builder) {
            this.environment = builder.zzbRt;
            this.theme = builder.mTheme;
            this.zzbRs = builder.zzbRu;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class zza<R extends Result> extends zzaad.zza<R, zzbky> {
        public zza(GoogleApiClient googleApiClient) {
            super(Wallet.API, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zza<R>) ((Result) obj));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.gms.internal.zzaad.zza
        public abstract void zza(zzbky zzbkyVar) throws RemoteException;
    }

    /* loaded from: classes2.dex */
    public static abstract class zzb extends zza<Status> {
        public zzb(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    private Wallet() {
    }

    @Deprecated
    public static void changeMaskedWallet(GoogleApiClient googleApiClient, String str, String str2, int i) {
        Payments.changeMaskedWallet(googleApiClient, str, str2, i);
    }

    @Deprecated
    public static void checkForPreAuthorization(GoogleApiClient googleApiClient, int i) {
        Payments.checkForPreAuthorization(googleApiClient, i);
    }

    @Deprecated
    public static void loadFullWallet(GoogleApiClient googleApiClient, FullWalletRequest fullWalletRequest, int i) {
        Payments.loadFullWallet(googleApiClient, fullWalletRequest, i);
    }

    @Deprecated
    public static void loadMaskedWallet(GoogleApiClient googleApiClient, MaskedWalletRequest maskedWalletRequest, int i) {
        Payments.loadMaskedWallet(googleApiClient, maskedWalletRequest, i);
    }

    @Deprecated
    public static void notifyTransactionStatus(GoogleApiClient googleApiClient, NotifyTransactionStatusRequest notifyTransactionStatusRequest) {
        Payments.notifyTransactionStatus(googleApiClient, notifyTransactionStatusRequest);
    }
}
