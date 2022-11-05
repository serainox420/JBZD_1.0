package com.google.android.gms.identity.intents;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaqo;
/* loaded from: classes2.dex */
public final class Address {
    static final Api.zzf<zzaqo> zzaid = new Api.zzf<>();
    private static final Api.zza<zzaqo, AddressOptions> zzaie = new Api.zza<zzaqo, AddressOptions>() { // from class: com.google.android.gms.identity.intents.Address.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzaqo zza(Context context, Looper looper, zzg zzgVar, AddressOptions addressOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            zzac.zzb(context instanceof Activity, "An Activity must be used for Address APIs");
            if (addressOptions == null) {
                addressOptions = new AddressOptions();
            }
            return new zzaqo((Activity) context, looper, zzgVar, addressOptions.theme, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<AddressOptions> API = new Api<>("Address.API", zzaie, zzaid);

    /* loaded from: classes2.dex */
    public static final class AddressOptions implements Api.ApiOptions.HasOptions {
        public final int theme;

        public AddressOptions() {
            this.theme = 0;
        }

        public AddressOptions(int i) {
            this.theme = i;
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class zza extends zzaad.zza<Status, zzaqo> {
        public zza(GoogleApiClient googleApiClient) {
            super(Address.API, googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zza) ((Status) obj));
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    public static void requestUserAddress(GoogleApiClient googleApiClient, final UserAddressRequest userAddressRequest, final int i) {
        googleApiClient.zza((GoogleApiClient) new zza(googleApiClient) { // from class: com.google.android.gms.identity.intents.Address.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaqo zzaqoVar) throws RemoteException {
                zzaqoVar.zza(userAddressRequest, i);
                zzb((AnonymousClass2) Status.zzazx);
            }
        });
    }
}
