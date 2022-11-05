package com.google.android.gms.drive;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzahv;
import com.google.android.gms.internal.zzahx;
import com.google.android.gms.internal.zzaia;
import com.google.android.gms.internal.zzaid;
import com.google.android.gms.internal.zzaif;
/* loaded from: classes2.dex */
public final class Drive {
    public static final Api.zzf<zzahx> zzaid = new Api.zzf<>();
    public static final Scope SCOPE_FILE = new Scope(Scopes.DRIVE_FILE);
    public static final Scope SCOPE_APPFOLDER = new Scope(Scopes.DRIVE_APPFOLDER);
    public static final Scope zzaKL = new Scope("https://www.googleapis.com/auth/drive");
    public static final Scope zzaKM = new Scope("https://www.googleapis.com/auth/drive.apps");
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Drive.API", new zza<Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.drive.Drive.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.drive.Drive.zza
        public Bundle zza(Api.ApiOptions.NoOptions noOptions) {
            return new Bundle();
        }
    }, zzaid);
    public static final Api<zzb> zzaKN = new Api<>("Drive.INTERNAL_API", new zza<zzb>() { // from class: com.google.android.gms.drive.Drive.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.drive.Drive.zza
        public Bundle zza(zzb zzbVar) {
            return zzbVar == null ? new Bundle() : zzbVar.zzAp();
        }
    }, zzaid);
    public static final DriveApi DriveApi = new zzahv();
    public static final zzg zzaKO = new zzaia();
    public static final zzi zzaKP = new zzaif();
    public static final DrivePreferencesApi DrivePreferencesApi = new zzaid();

    /* loaded from: classes2.dex */
    public static abstract class zza<O extends Api.ApiOptions> extends Api.zza<zzahx, O> {
        protected abstract Bundle zza(O o);

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.common.api.Api.zza
        public /* bridge */ /* synthetic */ zzahx zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Object obj, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return zza(context, looper, zzgVar, (com.google.android.gms.common.internal.zzg) ((Api.ApiOptions) obj), connectionCallbacks, onConnectionFailedListener);
        }

        public zzahx zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, O o, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzahx(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener, zza(o));
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb implements Api.ApiOptions.Optional {
        private final Bundle zzaic;

        public Bundle zzAp() {
            return this.zzaic;
        }
    }

    private Drive() {
    }
}
