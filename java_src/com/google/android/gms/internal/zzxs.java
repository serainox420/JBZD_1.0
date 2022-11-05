package com.google.android.gms.internal;

import android.widget.TextView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzxs extends UIController {
    private final TextView mView;
    private final List<String> zzatN = new ArrayList();

    public zzxs(TextView textView, List<String> list) {
        this.mView = textView;
        this.zzatN.addAll(list);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        MediaInfo mediaInfo;
        MediaMetadata metadata;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || (mediaInfo = remoteMediaClient.getMediaStatus().getMediaInfo()) == null || (metadata = mediaInfo.getMetadata()) == null) {
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
