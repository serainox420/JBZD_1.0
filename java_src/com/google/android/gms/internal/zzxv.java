package com.google.android.gms.internal;

import android.widget.ProgressBar;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
/* loaded from: classes2.dex */
public class zzxv extends UIController implements RemoteMediaClient.ProgressListener {
    private final ProgressBar zzaua;
    private final long zzaub;

    public zzxv(ProgressBar progressBar, long j) {
        this.zzaua = progressBar;
        this.zzaub = j;
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zzaua.setMax(1);
            this.zzaua.setProgress(0);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public void onProgressUpdated(long j, long j2) {
        this.zzaua.setMax((int) j2);
        this.zzaua.setProgress((int) j);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzaub);
            if (remoteMediaClient.hasMediaSession()) {
                this.zzaua.setMax((int) remoteMediaClient.getStreamDuration());
                this.zzaua.setProgress((int) remoteMediaClient.getApproximateStreamPosition());
                return;
            }
            this.zzaua.setMax(1);
            this.zzaua.setProgress(0);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        this.zzaua.setMax(1);
        this.zzaua.setProgress(0);
        super.onSessionEnded();
    }
}
