package com.google.android.gms.cast.framework.media.uicontroller;

import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
/* loaded from: classes2.dex */
public abstract class UIController {
    private RemoteMediaClient zzaqo;

    /* JADX INFO: Access modifiers changed from: protected */
    public RemoteMediaClient getRemoteMediaClient() {
        return this.zzaqo;
    }

    public void onMediaStatusUpdated() {
    }

    public void onSendingRemoteMediaRequest() {
    }

    public void onSessionConnected(CastSession castSession) {
        if (castSession != null) {
            this.zzaqo = castSession.getRemoteMediaClient();
        } else {
            this.zzaqo = null;
        }
    }

    public void onSessionEnded() {
        this.zzaqo = null;
    }
}
