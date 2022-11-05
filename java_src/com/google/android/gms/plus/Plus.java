package com.google.android.gms.plus;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.util.zzv;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzazb;
import com.google.android.gms.internal.zzazc;
import com.google.android.gms.internal.zzazd;
import com.google.android.gms.internal.zzaze;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.zze;
import com.google.android.gms.plus.internal.zzh;
import java.util.HashSet;
import java.util.Set;
@Deprecated
/* loaded from: classes.dex */
public final class Plus {
    public static final Api.zzf<zze> zzaid = new Api.zzf<>();
    static final Api.zza<zze, PlusOptions> zzaie = new Api.zza<zze, PlusOptions>() { // from class: com.google.android.gms.plus.Plus.1
        @Override // com.google.android.gms.common.api.Api.zzd
        public int getPriority() {
            return 2;
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zze zza(Context context, Looper looper, zzg zzgVar, PlusOptions plusOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            if (plusOptions == null) {
                plusOptions = new PlusOptions();
            }
            return new zze(context, looper, zzgVar, new zzh(zzgVar.zzxB().name, zzv.zzd(zzgVar.zzxM()), (String[]) plusOptions.zzbBK.toArray(new String[0]), new String[0], context.getPackageName(), context.getPackageName(), null, new PlusCommonExtras()), connectionCallbacks, onConnectionFailedListener);
        }
    };
    @Deprecated
    public static final Api<PlusOptions> API = new Api<>("Plus.API", zzaie, zzaid);
    public static final Scope SCOPE_PLUS_LOGIN = new Scope(Scopes.PLUS_LOGIN);
    public static final Scope SCOPE_PLUS_PROFILE = new Scope(Scopes.PLUS_ME);
    @Deprecated
    public static final People PeopleApi = new zzaze();
    @Deprecated
    public static final Account AccountApi = new zzazb();
    @Deprecated
    public static final zzb zzbBH = new zzazd();
    public static final com.google.android.gms.plus.zza zzbBI = new zzazc();

    /* loaded from: classes2.dex */
    public static final class PlusOptions implements Api.ApiOptions.Optional {
        final String zzbBJ;
        final Set<String> zzbBK;

        /* loaded from: classes2.dex */
        public static final class Builder {
            String zzbBJ;
            final Set<String> zzbBK = new HashSet();

            public Builder addActivityTypes(String... strArr) {
                zzac.zzb(strArr, "activityTypes may not be null.");
                for (String str : strArr) {
                    this.zzbBK.add(str);
                }
                return this;
            }

            public PlusOptions build() {
                return new PlusOptions(this);
            }

            public Builder setServerClientId(String str) {
                this.zzbBJ = str;
                return this;
            }
        }

        private PlusOptions() {
            this.zzbBJ = null;
            this.zzbBK = new HashSet();
        }

        private PlusOptions(Builder builder) {
            this.zzbBJ = builder.zzbBJ;
            this.zzbBK = builder.zzbBK;
        }

        public static Builder builder() {
            return new Builder();
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class zza<R extends Result> extends zzaad.zza<R, zze> {
        public zza(GoogleApiClient googleApiClient) {
            super(Plus.zzaid, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zza<R>) ((Result) obj));
        }
    }

    private Plus() {
    }

    public static zze zzd(GoogleApiClient googleApiClient, boolean z) {
        zzac.zzb(googleApiClient != null, "GoogleApiClient parameter is required.");
        zzac.zza(googleApiClient.isConnected(), "GoogleApiClient must be connected.");
        zzac.zza(googleApiClient.zza(API), "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
        boolean hasConnectedApi = googleApiClient.hasConnectedApi(API);
        if (!z || hasConnectedApi) {
            if (!hasConnectedApi) {
                return null;
            }
            return (zze) googleApiClient.zza(zzaid);
        }
        throw new IllegalStateException("GoogleApiClient has an optional Plus.API and is not connected to Plus. Use GoogleApiClient.hasConnectedApi(Plus.API) to guard this call.");
    }
}
