package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.instantapps.InstantApps;
import com.google.android.gms.instantapps.InstantAppsApi;
import com.google.android.gms.instantapps.LaunchData;
import com.google.android.gms.instantapps.LaunchSettings;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaqy;
import java.util.List;
/* loaded from: classes2.dex */
public class zzarc implements InstantAppsApi {

    /* loaded from: classes2.dex */
    static class zza extends zzaqy.zza {
        zza() {
        }

        @Override // com.google.android.gms.internal.zzaqy
        public void zza(Status status, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzaqy
        public void zza(Status status, PackageInfo packageInfo) {
            throw new UnsupportedOperationException();
        }

        public void zza(Status status, LaunchData launchData) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzaqy
        public void zza(Status status, zzara zzaraVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzaqy
        public void zza(Status status, zzarh zzarhVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzaqy
        public void zza(Status status, zzarl zzarlVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzaqy
        public void zza(Status status, List<zzars> list) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzaqy
        public void zzjQ(int i) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes2.dex */
    static abstract class zzb<R extends Result> extends zzaad.zza<R, zzard> {
        zzb(GoogleApiClient googleApiClient) {
            super(InstantApps.API, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzb<R>) ((Result) obj));
        }

        protected abstract void zza(Context context, zzaqz zzaqzVar) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public final void zza(zzard zzardVar) throws RemoteException {
            zza(zzardVar.getContext(), (zzaqz) zzardVar.zzxD());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzc implements InstantAppsApi.LaunchDataResult {
        private final Status zzahw;
        private final LaunchData zzbiH;

        zzc(Status status, LaunchData launchData) {
            this.zzahw = status;
            this.zzbiH = launchData;
        }

        @Override // com.google.android.gms.instantapps.InstantAppsApi.LaunchDataResult
        public LaunchData getLaunchData() {
            return this.zzbiH;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzahw;
        }
    }

    @Override // com.google.android.gms.instantapps.InstantAppsApi
    public Intent getInstantAppIntent(Context context, String str, Intent intent) {
        return zzare.getInstantAppIntent(context, str, intent);
    }

    @Override // com.google.android.gms.instantapps.InstantAppsApi
    public PendingResult<InstantAppsApi.LaunchDataResult> getInstantAppLaunchData(GoogleApiClient googleApiClient, String str) {
        return getInstantAppLaunchData(googleApiClient, str, new LaunchSettings());
    }

    @Override // com.google.android.gms.instantapps.InstantAppsApi
    public PendingResult<InstantAppsApi.LaunchDataResult> getInstantAppLaunchData(GoogleApiClient googleApiClient, final String str, final LaunchSettings launchSettings) {
        com.google.android.gms.common.internal.zzac.zzw(googleApiClient);
        com.google.android.gms.common.internal.zzac.zzw(str);
        return googleApiClient.zza((GoogleApiClient) new zzb<InstantAppsApi.LaunchDataResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzarc.1
            @Override // com.google.android.gms.internal.zzarc.zzb
            protected void zza(Context context, zzaqz zzaqzVar) throws RemoteException {
                zzaqzVar.zza(new zza() { // from class: com.google.android.gms.internal.zzarc.1.1
                    @Override // com.google.android.gms.internal.zzarc.zza, com.google.android.gms.internal.zzaqy
                    public void zza(Status status, LaunchData launchData) {
                        zzb((AnonymousClass1) new zzc(status, launchData));
                    }
                }, str, launchSettings);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbo */
            public InstantAppsApi.LaunchDataResult zzc(Status status) {
                return new zzc(status, null);
            }
        });
    }

    @Override // com.google.android.gms.instantapps.InstantAppsApi
    public boolean initializeIntentClient(Context context) {
        return zzare.zzbD(context);
    }
}
