package com.google.android.gms.internal;

import android.text.format.DateUtils;
import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
/* loaded from: classes2.dex */
public class zzyb extends UIController implements RemoteMediaClient.ProgressListener {
    private boolean zzato = true;
    private final long zzaub;
    private final TextView zzauk;
    private final String zzaun;

    public zzyb(TextView textView, long j, String str) {
        this.zzauk = textView;
        this.zzaub = j;
        this.zzaun = str;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public void onProgressUpdated(long j, long j2) {
        if (zzua()) {
            this.zzauk.setText(DateUtils.formatElapsedTime(j / 1000));
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzaub);
            if (remoteMediaClient.hasMediaSession()) {
                this.zzauk.setText(DateUtils.formatElapsedTime(remoteMediaClient.getApproximateStreamPosition() / 1000));
            } else {
                this.zzauk.setText(this.zzaun);
            }
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        this.zzauk.setText(this.zzaun);
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        super.onSessionEnded();
    }

    public void zzE(long j) {
        this.zzauk.setText(DateUtils.formatElapsedTime(j / 1000));
    }

    public void zzap(boolean z) {
        this.zzato = z;
    }

    public boolean zzua() {
        return this.zzato;
    }
}
