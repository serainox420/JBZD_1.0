package com.google.android.gms.internal;

import android.text.format.DateUtils;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
/* loaded from: classes2.dex */
public class zzya extends UIController implements RemoteMediaClient.ProgressListener {
    private final TextView zzauk;
    private final String zzaul;
    private final View zzaum;

    public zzya(TextView textView, String str, View view) {
        this.zzauk = textView;
        this.zzaul = str;
        this.zzaum = view;
    }

    private void zza(long j, boolean z) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zzauk.setVisibility(0);
            this.zzauk.setText(this.zzaul);
            if (this.zzaum == null) {
                return;
            }
            this.zzaum.setVisibility(4);
        } else if (remoteMediaClient.isLiveStream()) {
            this.zzauk.setText(this.zzaul);
            if (this.zzaum == null) {
                return;
            }
            this.zzauk.setVisibility(4);
            this.zzaum.setVisibility(0);
        } else {
            if (z) {
                j = remoteMediaClient.getStreamDuration();
            }
            this.zzauk.setVisibility(0);
            this.zzauk.setText(DateUtils.formatElapsedTime(j / 1000));
            if (this.zzaum == null) {
                return;
            }
            this.zzaum.setVisibility(4);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        zza(-1L, true);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public void onProgressUpdated(long j, long j2) {
        zza(j2, false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().addProgressListener(this, 1000L);
        }
        zza(-1L, true);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        this.zzauk.setText(this.zzaul);
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        super.onSessionEnded();
    }
}
