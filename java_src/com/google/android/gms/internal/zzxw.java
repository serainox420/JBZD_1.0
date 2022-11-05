package com.google.android.gms.internal;

import android.widget.SeekBar;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
/* loaded from: classes2.dex */
public class zzxw extends UIController implements RemoteMediaClient.ProgressListener {
    private final SeekBar zzatM;
    private boolean zzato = true;
    private final long zzaub;
    private final SeekBar.OnSeekBarChangeListener zzauc;

    public zzxw(SeekBar seekBar, long j, final SeekBar.OnSeekBarChangeListener onSeekBarChangeListener) {
        this.zzatM = seekBar;
        this.zzaub = j;
        this.zzauc = new SeekBar.OnSeekBarChangeListener() { // from class: com.google.android.gms.internal.zzxw.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                if (onSeekBarChangeListener != null) {
                    onSeekBarChangeListener.onProgressChanged(seekBar2, i, z);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
                zzxw.this.zzap(false);
                if (onSeekBarChangeListener != null) {
                    onSeekBarChangeListener.onStartTrackingTouch(seekBar2);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
                zzxw.this.zzap(true);
                if (onSeekBarChangeListener != null) {
                    onSeekBarChangeListener.onStopTrackingTouch(seekBar2);
                }
                RemoteMediaClient remoteMediaClient = zzxw.this.getRemoteMediaClient();
                if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
                    return;
                }
                remoteMediaClient.seek(seekBar2.getProgress());
            }
        };
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public void onProgressUpdated(long j, long j2) {
        if (zzua()) {
            this.zzatM.setMax((int) j2);
            this.zzatM.setProgress((int) j);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSendingRemoteMediaRequest() {
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzatM.setOnSeekBarChangeListener(this.zzauc);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzaub);
            if (remoteMediaClient.hasMediaSession()) {
                this.zzatM.setMax((int) remoteMediaClient.getStreamDuration());
                this.zzatM.setProgress((int) remoteMediaClient.getApproximateStreamPosition());
                return;
            }
            this.zzatM.setMax(1);
            this.zzatM.setProgress(0);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        this.zzatM.setOnSeekBarChangeListener(null);
        this.zzatM.setMax(1);
        this.zzatM.setProgress(0);
        super.onSessionEnded();
    }

    public void zzap(boolean z) {
        this.zzato = z;
    }

    public boolean zzua() {
        return this.zzato;
    }
}
