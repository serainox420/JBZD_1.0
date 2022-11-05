package com.google.android.gms.internal;

import android.widget.TextView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzxr extends UIController {
    private final TextView mView;
    private final List<String> zzatN = new ArrayList();

    public zzxr(TextView textView, List<String> list) {
        this.mView = textView;
        this.zzatN.addAll(list);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        MediaQueueItem preloadedItem;
        MediaInfo media;
        MediaMetadata metadata;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || (preloadedItem = remoteMediaClient.getPreloadedItem()) == null || (media = preloadedItem.getMedia()) == null || (metadata = media.getMetadata()) == null) {
            return;
        }
        for (String str : this.zzatN) {
            if (metadata.containsKey(str)) {
                this.mView.setText(metadata.getString(str));
                return;
            }
        }
    }
}
