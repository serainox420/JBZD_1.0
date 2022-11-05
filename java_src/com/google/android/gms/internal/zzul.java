package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.appindexing.Action;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzud;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzul implements AppIndexApi, zzuf {
    private static final String TAG = zzul.class.getSimpleName();

    @Deprecated
    /* loaded from: classes.dex */
    private static final class zza implements AppIndexApi.ActionResult {
        private zzul zzahY;
        private PendingResult<Status> zzahZ;
        private Action zzaia;

        zza(zzul zzulVar, PendingResult<Status> pendingResult, Action action) {
            this.zzahY = zzulVar;
            this.zzahZ = pendingResult;
            this.zzaia = action;
        }

        @Override // com.google.android.gms.appindexing.AppIndexApi.ActionResult
        public PendingResult<Status> end(GoogleApiClient googleApiClient) {
            return this.zzahY.zza(googleApiClient, zzuk.zza(this.zzaia, System.currentTimeMillis(), googleApiClient.getContext().getPackageName(), 2));
        }

        @Override // com.google.android.gms.appindexing.AppIndexApi.ActionResult
        public PendingResult<Status> getPendingResult() {
            return this.zzahZ;
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class zzb<T extends Result> extends zzaad.zza<T, zzuj> {
        public zzb(GoogleApiClient googleApiClient) {
            super(zzto.zzagZ, googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzb<T>) ((Result) obj));
        }

        protected abstract void zza(zzug zzugVar) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public final void zza(zzuj zzujVar) throws RemoteException {
            zza(zzujVar.zzqJ());
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class zzc<T extends Result> extends zzb<Status> {
        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzd extends zzui<Status> {
        public zzd(zzaad.zzb<Status> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.internal.zzui, com.google.android.gms.internal.zzuh
        public void zza(Status status) {
            this.zzahW.setResult(status);
        }
    }

    public static Intent zza(String str, Uri uri) {
        zzb(str, uri);
        if (zzm(uri)) {
            return new Intent("android.intent.action.VIEW", uri);
        }
        if (zzn(uri)) {
            return new Intent("android.intent.action.VIEW", zzl(uri));
        }
        String valueOf = String.valueOf(uri);
        throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 70).append("appIndexingUri is neither an HTTP(S) URL nor an \"android-app://\" URL: ").append(valueOf).toString());
    }

    private PendingResult<Status> zza(GoogleApiClient googleApiClient, Action action, int i) {
        return zza(googleApiClient, zzuk.zza(action, System.currentTimeMillis(), googleApiClient.getContext().getPackageName(), i));
    }

    private static void zzb(String str, Uri uri) {
        if (zzm(uri)) {
            if (!uri.getHost().isEmpty()) {
                return;
            }
            String valueOf = String.valueOf(uri);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 98).append("AppIndex: The web URL must have a host (follow the format http(s)://<host>/<path>). Provided URI: ").append(valueOf).toString());
        } else if (!zzn(uri)) {
            String valueOf2 = String.valueOf(uri);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf2).length() + 176).append("AppIndex: The URI scheme must either be 'http(s)' or 'android-app'. If the latter, it must follow the format 'android-app://<package_name>/<scheme>/<host_path>'. Provided URI: ").append(valueOf2).toString());
        } else if (str != null && !str.equals(uri.getHost())) {
            String valueOf3 = String.valueOf(uri);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf3).length() + DrawableConstants.CtaButton.WIDTH_DIPS).append("AppIndex: The android-app URI host must match the package name and follow the format android-app://<package_name>/<scheme>/<host_path>. Provided URI: ").append(valueOf3).toString());
        } else {
            List<String> pathSegments = uri.getPathSegments();
            if (!pathSegments.isEmpty() && !pathSegments.get(0).isEmpty()) {
                return;
            }
            String valueOf4 = String.valueOf(uri);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf4).length() + 128).append("AppIndex: The app URI scheme must exist and follow the format android-app://<package_name>/<scheme>/<host_path>). Provided URI: ").append(valueOf4).toString());
        }
    }

    private static Uri zzl(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(pathSegments.get(0));
        if (pathSegments.size() > 1) {
            builder.authority(pathSegments.get(1));
            int i = 2;
            while (true) {
                int i2 = i;
                if (i2 >= pathSegments.size()) {
                    break;
                }
                builder.appendPath(pathSegments.get(i2));
                i = i2 + 1;
            }
        } else {
            String str = TAG;
            String valueOf = String.valueOf(uri);
            Log.e(str, new StringBuilder(String.valueOf(valueOf).length() + 88).append("The app URI must have the format: android-app://<package_name>/<scheme>/<path>. But got ").append(valueOf).toString());
        }
        builder.encodedQuery(uri.getEncodedQuery());
        builder.encodedFragment(uri.getEncodedFragment());
        return builder.build();
    }

    private static boolean zzm(Uri uri) {
        String scheme = uri.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    private static boolean zzn(Uri uri) {
        return "android-app".equals(uri.getScheme());
    }

    public static void zzw(List<AppIndexApi.AppIndexingLink> list) {
        if (list == null) {
            return;
        }
        for (AppIndexApi.AppIndexingLink appIndexingLink : list) {
            zzb(null, appIndexingLink.appIndexingUrl);
        }
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public AppIndexApi.ActionResult action(GoogleApiClient googleApiClient, Action action) {
        return new zza(this, zza(googleApiClient, action, 1), action);
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public PendingResult<Status> end(GoogleApiClient googleApiClient, Action action) {
        return zza(googleApiClient, action, 2);
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public PendingResult<Status> start(GoogleApiClient googleApiClient, Action action) {
        return zza(googleApiClient, action, 1);
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public PendingResult<Status> view(GoogleApiClient googleApiClient, Activity activity, Intent intent, String str, Uri uri, List<AppIndexApi.AppIndexingLink> list) {
        String packageName = googleApiClient.getContext().getPackageName();
        zzw(list);
        return zza(googleApiClient, new zzud(packageName, intent, str, uri, null, list, 1));
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public PendingResult<Status> view(GoogleApiClient googleApiClient, Activity activity, Uri uri, String str, Uri uri2, List<AppIndexApi.AppIndexingLink> list) {
        String packageName = googleApiClient.getContext().getPackageName();
        zzb(packageName, uri);
        return view(googleApiClient, activity, zza(packageName, uri), str, uri2, list);
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public PendingResult<Status> viewEnd(GoogleApiClient googleApiClient, Activity activity, Intent intent) {
        return zza(googleApiClient, new zzud.zza().zza(zzud.zza(googleApiClient.getContext().getPackageName(), intent)).zzB(System.currentTimeMillis()).zzaS(0).zzaT(2).zzqI());
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public PendingResult<Status> viewEnd(GoogleApiClient googleApiClient, Activity activity, Uri uri) {
        return viewEnd(googleApiClient, activity, zza(googleApiClient.getContext().getPackageName(), uri));
    }

    public PendingResult<Status> zza(GoogleApiClient googleApiClient, final zzud... zzudVarArr) {
        return googleApiClient.zza((GoogleApiClient) new zzc<Status>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzul.1
            @Override // com.google.android.gms.internal.zzul.zzb
            protected void zza(zzug zzugVar) throws RemoteException {
                zzugVar.zza(new zzd(this), (String) null, zzudVarArr);
            }
        });
    }
}
