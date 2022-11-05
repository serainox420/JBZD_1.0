package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.zzf;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzwv;
import com.google.android.gms.internal.zzwx;
import com.google.android.gms.internal.zzxj;
import com.google.android.gms.internal.zzyz;
import com.google.android.gms.internal.zzza;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class CastSession extends Session {
    private static final zzyz zzapV = new zzyz("CastSession");
    private final Context zzPB;
    private GoogleApiClient zzanE;
    private final CastOptions zzaqa;
    private final Set<Cast.Listener> zzaqj;
    private final zzh zzaqk;
    private final Cast.CastApi zzaql;
    private final zzwx zzaqm;
    private final zzxj zzaqn;
    private RemoteMediaClient zzaqo;
    private CastDevice zzaqp;
    private Cast.ApplicationConnectionResult zzaqq;

    /* loaded from: classes2.dex */
    private class zza implements ResultCallback<Cast.ApplicationConnectionResult> {
        String zzaqr;

        zza(String str) {
            this.zzaqr = str;
        }

        @Override // com.google.android.gms.common.api.ResultCallback
        /* renamed from: zza */
        public void onResult(Cast.ApplicationConnectionResult applicationConnectionResult) {
            CastSession.this.zzaqq = applicationConnectionResult;
            try {
                if (!applicationConnectionResult.getStatus().isSuccess()) {
                    CastSession.zzapV.zzb("%s() -> failure result", this.zzaqr);
                    CastSession.this.zzaqk.zzbZ(applicationConnectionResult.getStatus().getStatusCode());
                    return;
                }
                CastSession.zzapV.zzb("%s() -> success result", this.zzaqr);
                CastSession.this.zzaqo = new RemoteMediaClient(new zzza(null), CastSession.this.zzaql);
                try {
                    CastSession.this.zzaqo.zzd(CastSession.this.zzanE);
                    CastSession.this.zzaqo.zztF();
                    CastSession.this.zzaqo.requestStatus();
                    CastSession.this.zzaqn.zza(CastSession.this.zzaqo, CastSession.this.getCastDevice());
                } catch (IOException e) {
                    CastSession.zzapV.zza(e, "Exception when setting GoogleApiClient.", new Object[0]);
                    CastSession.this.zzaqo = null;
                }
                CastSession.this.zzaqk.zza(applicationConnectionResult.getApplicationMetadata(), applicationConnectionResult.getApplicationStatus(), applicationConnectionResult.getSessionId(), applicationConnectionResult.getWasLaunched());
            } catch (RemoteException e2) {
                CastSession.zzapV.zzb(e2, "Unable to call %s on %s.", "methods", zzh.class.getSimpleName());
            }
        }
    }

    /* loaded from: classes2.dex */
    private class zzb extends zzf.zza {
        private zzb() {
        }

        @Override // com.google.android.gms.cast.framework.zzf
        public void zza(String str, LaunchOptions launchOptions) {
            CastSession.this.zzaql.launchApplication(CastSession.this.zzanE, str, launchOptions).setResultCallback(new zza("launchApplication"));
        }

        @Override // com.google.android.gms.cast.framework.zzf
        public void zzbY(int i) {
            CastSession.this.zzbY(i);
        }

        @Override // com.google.android.gms.cast.framework.zzf
        public void zzcK(String str) {
            CastSession.this.zzaql.stopApplication(CastSession.this.zzanE, str);
        }

        @Override // com.google.android.gms.cast.framework.zzf
        public int zzsB() {
            return 10298208;
        }

        @Override // com.google.android.gms.cast.framework.zzf
        public void zzz(String str, String str2) {
            CastSession.this.zzaql.joinApplication(CastSession.this.zzanE, str, str2).setResultCallback(new zza("joinApplication"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzc extends Cast.Listener {
        private zzc() {
        }

        @Override // com.google.android.gms.cast.Cast.Listener
        public void onActiveInputStateChanged(int i) {
            for (Cast.Listener listener : new HashSet(CastSession.this.zzaqj)) {
                listener.onActiveInputStateChanged(i);
            }
        }

        @Override // com.google.android.gms.cast.Cast.Listener
        public void onApplicationDisconnected(int i) {
            CastSession.this.zzbY(i);
            CastSession.this.notifySessionEnded(i);
            for (Cast.Listener listener : new HashSet(CastSession.this.zzaqj)) {
                listener.onApplicationDisconnected(i);
            }
        }

        @Override // com.google.android.gms.cast.Cast.Listener
        public void onApplicationMetadataChanged(ApplicationMetadata applicationMetadata) {
            for (Cast.Listener listener : new HashSet(CastSession.this.zzaqj)) {
                listener.onApplicationMetadataChanged(applicationMetadata);
            }
        }

        @Override // com.google.android.gms.cast.Cast.Listener
        public void onApplicationStatusChanged() {
            for (Cast.Listener listener : new HashSet(CastSession.this.zzaqj)) {
                listener.onApplicationStatusChanged();
            }
        }

        @Override // com.google.android.gms.cast.Cast.Listener
        public void onStandbyStateChanged(int i) {
            for (Cast.Listener listener : new HashSet(CastSession.this.zzaqj)) {
                listener.onStandbyStateChanged(i);
            }
        }

        @Override // com.google.android.gms.cast.Cast.Listener
        public void onVolumeChanged() {
            for (Cast.Listener listener : new HashSet(CastSession.this.zzaqj)) {
                listener.onVolumeChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzd implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        private zzd() {
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            try {
                if (CastSession.this.zzaqo != null) {
                    try {
                        CastSession.this.zzaqo.zztF();
                        CastSession.this.zzaqo.requestStatus();
                    } catch (IOException e) {
                        CastSession.zzapV.zza(e, "Exception when setting GoogleApiClient.", new Object[0]);
                        CastSession.this.zzaqo = null;
                    }
                }
                CastSession.this.zzaqk.onConnected(bundle);
            } catch (RemoteException e2) {
                CastSession.zzapV.zzb(e2, "Unable to call %s on %s.", "onConnected", zzh.class.getSimpleName());
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            try {
                CastSession.this.zzaqk.onConnectionFailed(connectionResult);
            } catch (RemoteException e) {
                CastSession.zzapV.zzb(e, "Unable to call %s on %s.", "onConnectionFailed", zzh.class.getSimpleName());
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
            try {
                CastSession.this.zzaqk.onConnectionSuspended(i);
            } catch (RemoteException e) {
                CastSession.zzapV.zzb(e, "Unable to call %s on %s.", "onConnectionSuspended", zzh.class.getSimpleName());
            }
        }
    }

    public CastSession(Context context, String str, String str2, CastOptions castOptions, Cast.CastApi castApi, zzwx zzwxVar, zzxj zzxjVar) {
        super(context, str, str2);
        this.zzaqj = new HashSet();
        this.zzPB = context.getApplicationContext();
        this.zzaqa = castOptions;
        this.zzaql = castApi;
        this.zzaqm = zzwxVar;
        this.zzaqn = zzxjVar;
        this.zzaqk = zzwv.zza(context, castOptions, zzsN(), new zzb());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzbY(int i) {
        this.zzaqn.zzce(i);
        if (this.zzanE != null) {
            this.zzanE.disconnect();
            this.zzanE = null;
        }
        this.zzaqp = null;
        if (this.zzaqo != null) {
            try {
                this.zzaqo.zzd((GoogleApiClient) null);
            } catch (IOException e) {
                zzapV.zza(e, "Exception when setting GoogleApiClient.", new Object[0]);
            }
            this.zzaqo = null;
        }
        this.zzaqq = null;
    }

    private void zzl(Bundle bundle) {
        this.zzaqp = CastDevice.getFromBundle(bundle);
        if (this.zzaqp == null) {
            if (isResuming()) {
                notifyFailedToResumeSession(8);
                return;
            } else {
                notifyFailedToStartSession(8);
                return;
            }
        }
        if (this.zzanE != null) {
            this.zzanE.disconnect();
            this.zzanE = null;
        }
        zzapV.zzb("Acquiring a connection to Google Play Services for %s", this.zzaqp);
        zzd zzdVar = new zzd();
        this.zzanE = this.zzaqm.zza(this.zzPB, this.zzaqp, this.zzaqa, new zzc(), zzdVar, zzdVar);
        this.zzanE.connect();
    }

    public void addCastListener(Cast.Listener listener) {
        zzac.zzdj("Must be called from the main thread.");
        if (listener != null) {
            this.zzaqj.add(listener);
        }
    }

    @Override // com.google.android.gms.cast.framework.Session
    protected void end(boolean z) {
        try {
            this.zzaqk.zzb(z, 0);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "disconnectFromDevice", zzh.class.getSimpleName());
        }
        notifySessionEnded(0);
    }

    public int getActiveInputState() throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzanE != null) {
            return this.zzaql.getActiveInputState(this.zzanE);
        }
        return -1;
    }

    public Cast.ApplicationConnectionResult getApplicationConnectionResult() {
        zzac.zzdj("Must be called from the main thread.");
        return this.zzaqq;
    }

    public ApplicationMetadata getApplicationMetadata() throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzanE != null) {
            return this.zzaql.getApplicationMetadata(this.zzanE);
        }
        return null;
    }

    public String getApplicationStatus() throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzanE != null) {
            return this.zzaql.getApplicationStatus(this.zzanE);
        }
        return null;
    }

    public CastDevice getCastDevice() {
        zzac.zzdj("Must be called from the main thread.");
        return this.zzaqp;
    }

    public RemoteMediaClient getRemoteMediaClient() {
        zzac.zzdj("Must be called from the main thread.");
        return this.zzaqo;
    }

    @Override // com.google.android.gms.cast.framework.Session
    public long getSessionRemainingTimeMs() {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzaqo == null) {
            return 0L;
        }
        return this.zzaqo.getStreamDuration() - this.zzaqo.getApproximateStreamPosition();
    }

    public int getStandbyState() throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzanE != null) {
            return this.zzaql.getStandbyState(this.zzanE);
        }
        return -1;
    }

    public double getVolume() throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzanE != null) {
            return this.zzaql.getVolume(this.zzanE);
        }
        return 0.0d;
    }

    public boolean isMute() throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzanE != null) {
            return this.zzaql.isMute(this.zzanE);
        }
        return false;
    }

    public void removeCastListener(Cast.Listener listener) {
        zzac.zzdj("Must be called from the main thread.");
        if (listener != null) {
            this.zzaqj.remove(listener);
        }
    }

    public void removeMessageReceivedCallbacks(String str) throws IOException, IllegalArgumentException {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzanE != null) {
            this.zzaql.removeMessageReceivedCallbacks(this.zzanE, str);
        }
    }

    public void requestStatus() throws IOException, IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzanE != null) {
            this.zzaql.requestStatus(this.zzanE);
        }
    }

    @Override // com.google.android.gms.cast.framework.Session
    protected void resume(Bundle bundle) {
        zzl(bundle);
    }

    public PendingResult<Status> sendMessage(String str, String str2) {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzanE != null) {
            return this.zzaql.sendMessage(this.zzanE, str, str2);
        }
        return null;
    }

    public void setMessageReceivedCallbacks(String str, Cast.MessageReceivedCallback messageReceivedCallback) throws IOException, IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzanE != null) {
            this.zzaql.setMessageReceivedCallbacks(this.zzanE, str, messageReceivedCallback);
        }
    }

    public void setMute(boolean z) throws IOException, IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzanE != null) {
            this.zzaql.setMute(this.zzanE, z);
        }
    }

    public void setVolume(double d) throws IOException {
        zzac.zzdj("Must be called from the main thread.");
        if (this.zzanE != null) {
            this.zzaql.setVolume(this.zzanE, d);
        }
    }

    @Override // com.google.android.gms.cast.framework.Session
    protected void start(Bundle bundle) {
        zzl(bundle);
    }
}
