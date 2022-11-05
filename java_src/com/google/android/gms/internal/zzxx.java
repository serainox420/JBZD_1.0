package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
/* loaded from: classes2.dex */
public class zzxx extends UIController {
    private final View mView;
    private final View.OnClickListener zzatA;

    public zzxx(View view, final long j) {
        this.mView = view;
        this.zzatA = new View.OnClickListener() { // from class: com.google.android.gms.internal.zzxx.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                RemoteMediaClient remoteMediaClient = zzxx.this.getRemoteMediaClient();
                if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
                    return;
                }
                remoteMediaClient.seek(remoteMediaClient.getApproximateStreamPosition() + j);
            }
        };
    }

    private void zztW() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || remoteMediaClient.isLiveStream() || remoteMediaClient.isPlayingAd()) {
            this.mView.setEnabled(false);
        } else {
            this.mView.setEnabled(true);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSendingRemoteMediaRequest() {
        this.mView.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.mView.setOnClickListener(this.zzatA);
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        this.mView.setOnClickListener(null);
        super.onSessionEnded();
    }
}
