package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.R;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.io.IOException;
/* loaded from: classes2.dex */
public class zzxt extends UIController {
    private static final zzyz zzapV = new zzyz("MuteToggleUIController");
    private final Context zzPB;
    private final Cast.Listener zzanj = new Cast.Listener() { // from class: com.google.android.gms.internal.zzxt.1
        @Override // com.google.android.gms.cast.Cast.Listener
        public void onVolumeChanged() {
            zzxt.this.zztW();
        }
    };
    private final View.OnClickListener zzatA = new View.OnClickListener() { // from class: com.google.android.gms.internal.zzxt.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CastSession currentCastSession = CastContext.getSharedInstance(zzxt.this.zzPB).getSessionManager().getCurrentCastSession();
            if (currentCastSession == null || !currentCastSession.isConnected()) {
                return;
            }
            try {
                if (currentCastSession.isMute()) {
                    currentCastSession.setMute(false);
                    zzxt.this.zzan(true);
                } else {
                    currentCastSession.setMute(true);
                    zzxt.this.zzan(false);
                }
            } catch (IOException | IllegalArgumentException e) {
                zzxt.zzapV.zzc("Unable to call CastSession.setMute(boolean).", e);
            }
        }
    };
    private final ImageView zzatC;
    private final String zzatO;
    private final String zzatP;

    public zzxt(ImageView imageView, Context context) {
        this.zzatC = imageView;
        this.zzPB = context.getApplicationContext();
        this.zzatO = this.zzPB.getString(R.string.cast_mute);
        this.zzatP = this.zzPB.getString(R.string.cast_unmute);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzan(boolean z) {
        this.zzatC.setSelected(z);
        this.zzatC.setContentDescription(z ? this.zzatO : this.zzatP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zztW() {
        CastSession currentCastSession = CastContext.getSharedInstance(this.zzPB).getSessionManager().getCurrentCastSession();
        if (currentCastSession == null || !currentCastSession.isConnected()) {
            this.zzatC.setEnabled(false);
            return;
        }
        this.zzatC.setEnabled(true);
        if (currentCastSession.isMute()) {
            zzan(false);
        } else {
            zzan(true);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        this.zzatC.setEnabled(true);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSendingRemoteMediaRequest() {
        this.zzatC.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzatC.setOnClickListener(this.zzatA);
        castSession.addCastListener(this.zzanj);
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        this.zzatC.setOnClickListener(null);
        super.onSessionEnded();
    }
}
