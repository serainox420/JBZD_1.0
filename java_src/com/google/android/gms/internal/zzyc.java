package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
/* loaded from: classes2.dex */
public class zzyc extends UIController {
    private final View mView;
    private final int zzauh;

    public zzyc(View view, int i) {
        this.mView = view;
        this.zzauh = i;
    }

    private void zztW() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.mView.setVisibility(this.zzauh);
        } else if (remoteMediaClient.getMediaStatus().getPreloadedItemId() == 0) {
            this.mView.setVisibility(this.zzauh);
        } else {
            this.mView.setVisibility(0);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        this.mView.setVisibility(this.zzauh);
        super.onSessionEnded();
    }
}
