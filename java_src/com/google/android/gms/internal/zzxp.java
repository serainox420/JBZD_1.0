package com.google.android.gms.internal;

import android.graphics.drawable.ColorDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.SeekBar;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
/* loaded from: classes2.dex */
public class zzxp extends UIController {
    private final SeekBar zzatL;
    private final SeekBar zzatM;

    public zzxp(SeekBar seekBar, SeekBar seekBar2) {
        this.zzatL = seekBar;
        this.zzatM = seekBar2;
        this.zzatL.setClickable(false);
        if (com.google.android.gms.common.util.zzt.zzzl()) {
            this.zzatL.setThumb(null);
        } else {
            this.zzatL.setThumb(new ColorDrawable(0));
        }
        this.zzatL.setMax(1);
        this.zzatL.setProgress(1);
        this.zzatL.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.gms.internal.zzxp.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    private void zztY() {
        int i = 4;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            return;
        }
        boolean isLiveStream = remoteMediaClient.isLiveStream();
        this.zzatL.setVisibility(isLiveStream ? 0 : 4);
        SeekBar seekBar = this.zzatM;
        if (!isLiveStream) {
            i = 0;
        }
        seekBar.setVisibility(i);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        zztY();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zztY();
    }
}
