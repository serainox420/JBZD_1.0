package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzays;
import com.google.android.gms.panorama.Panorama;
import com.google.android.gms.panorama.PanoramaApi;
/* loaded from: classes2.dex */
public class zzayu implements PanoramaApi {

    /* loaded from: classes2.dex */
    private static abstract class zza extends zzc<PanoramaApi.PanoramaResult> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbz */
        public PanoramaApi.PanoramaResult zzc(Status status) {
            return new zzayw(status, null);
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzb extends zzays.zza {
        private final zzaad.zzb<PanoramaApi.PanoramaResult> zzaGN;

        public zzb(zzaad.zzb<PanoramaApi.PanoramaResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzays
        public void zza(int i, Bundle bundle, int i2, Intent intent) {
            this.zzaGN.setResult(new zzayw(new Status(i, null, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null), intent));
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class zzc<R extends Result> extends zzaad.zza<R, zzayv> {
        protected zzc(GoogleApiClient googleApiClient) {
            super(Panorama.zzaid, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzc<R>) ((Result) obj));
        }

        protected abstract void zza(Context context, zzayt zzaytVar) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public final void zza(zzayv zzayvVar) throws RemoteException {
            zza(zzayvVar.getContext(), (zzayt) zzayvVar.zzxD());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(final Context context, zzayt zzaytVar, final zzays zzaysVar, final Uri uri, Bundle bundle) throws RemoteException {
        context.grantUriPermission("com.google.android.gms", uri, 1);
        try {
            zzaytVar.zza(new zzays.zza() { // from class: com.google.android.gms.internal.zzayu.3
                @Override // com.google.android.gms.internal.zzays
                public void zza(int i, Bundle bundle2, int i2, Intent intent) throws RemoteException {
                    zzayu.zzb(context, uri);
                    zzaysVar.zza(i, bundle2, i2, intent);
                }
            }, uri, bundle, true);
        } catch (RemoteException e) {
            zzb(context, uri);
            throw e;
        } catch (RuntimeException e2) {
            zzb(context, uri);
            throw e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Context context, Uri uri) {
        context.revokeUriPermission(uri, 1);
    }

    @Override // com.google.android.gms.panorama.PanoramaApi
    public PendingResult<PanoramaApi.PanoramaResult> loadPanoramaInfo(GoogleApiClient googleApiClient, final Uri uri) {
        return googleApiClient.zza((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzayu.1
            @Override // com.google.android.gms.internal.zzayu.zzc
            protected void zza(Context context, zzayt zzaytVar) throws RemoteException {
                zzaytVar.zza(new zzb(this), uri, null, false);
            }
        });
    }

    @Override // com.google.android.gms.panorama.PanoramaApi
    public PendingResult<PanoramaApi.PanoramaResult> loadPanoramaInfoAndGrantAccess(GoogleApiClient googleApiClient, final Uri uri) {
        return googleApiClient.zza((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzayu.2
            @Override // com.google.android.gms.internal.zzayu.zzc
            protected void zza(Context context, zzayt zzaytVar) throws RemoteException {
                zzayu.zza(context, zzaytVar, new zzb(this), uri, null);
            }
        });
    }
}
