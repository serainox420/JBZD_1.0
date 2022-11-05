package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
/* loaded from: classes2.dex */
public class zzxy extends UIController {
    private final View mView;
    private final View.OnClickListener zzatA = new View.OnClickListener() { // from class: com.google.android.gms.internal.zzxy.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RemoteMediaClient remoteMediaClient = zzxy.this.getRemoteMediaClient();
            if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
                return;
            }
            remoteMediaClient.queueNext(null);
        }
    };
    private final int zzauh;

    public zzxy(View view, int i) {
        this.mView = view;
        this.zzauh = i;
    }

    private void zzub() {
        boolean z;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            return;
        }
        MediaStatus mediaStatus = remoteMediaClient.getMediaStatus();
        if (mediaStatus.getQueueRepeatMode() == 0) {
            Integer indexById = mediaStatus.getIndexById(mediaStatus.getCurrentItemId());
            z = indexById != null && indexById.intValue() < mediaStatus.getQueueItemCount() + (-1);
        } else {
            z = true;
        }
        if (!z || remoteMediaClient.isPlayingAd()) {
            this.mView.setVisibility(this.zzauh);
            this.mView.setClickable(false);
            this.mView.setEnabled(false);
            return;
        }
        this.mView.setVisibility(0);
        this.mView.setClickable(true);
        this.mView.setEnabled(true);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        zzub();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSendingRemoteMediaRequest() {
        this.mView.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.mView.setOnClickListener(this.zzatA);
        zzub();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        this.mView.setOnClickListener(null);
        super.onSessionEnded();
    }
}
