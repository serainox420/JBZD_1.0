package com.google.android.gms.internal;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.y;
import android.view.View;
import com.google.android.gms.R;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.TracksChooserDialogFragment;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes2.dex */
public class zzxl extends UIController {
    private final View mView;
    private final View.OnClickListener zzatA = new View.OnClickListener() { // from class: com.google.android.gms.internal.zzxl.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RemoteMediaClient remoteMediaClient;
            Activity activity = (Activity) zzxl.this.zzatx.get();
            if (activity != null && (remoteMediaClient = zzxl.this.getRemoteMediaClient()) != null && remoteMediaClient.hasMediaSession() && (activity instanceof FragmentActivity)) {
                FragmentActivity fragmentActivity = (FragmentActivity) activity;
                y a2 = fragmentActivity.getSupportFragmentManager().a();
                Fragment a3 = fragmentActivity.getSupportFragmentManager().a("TRACKS_CHOOSER_DIALOG_TAG");
                if (a3 != null) {
                    a2.a(a3);
                }
                a2.a((String) null);
                TracksChooserDialogFragment newInstance = TracksChooserDialogFragment.newInstance(remoteMediaClient.getMediaInfo(), remoteMediaClient.getMediaStatus().getActiveTrackIds());
                if (newInstance == null) {
                    return;
                }
                newInstance.show(a2, "TRACKS_CHOOSER_DIALOG_TAG");
            }
        }
    };
    private final WeakReference<Activity> zzatx;
    private final String zzaty;
    private final String zzatz;

    public zzxl(View view, Activity activity) {
        this.mView = view;
        this.zzaty = activity.getString(R.string.cast_closed_captions);
        this.zzatz = activity.getString(R.string.cast_closed_captions_unavailable);
        this.zzatx = new WeakReference<>(activity);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean zzc(MediaInfo mediaInfo) {
        if (mediaInfo == null) {
            return false;
        }
        List<MediaTrack> mediaTracks = mediaInfo.getMediaTracks();
        if (mediaTracks == null || mediaTracks.isEmpty()) {
            return false;
        }
        for (MediaTrack mediaTrack : mediaTracks) {
            if (mediaTrack.getType() == 2 || mediaTrack.getType() == 1) {
                return true;
            }
            while (r3.hasNext()) {
            }
        }
        return false;
    }

    private void zztW() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || !zzc(remoteMediaClient.getMediaInfo()) || remoteMediaClient.isPlayingAd()) {
            this.mView.setEnabled(false);
            this.mView.setContentDescription(this.zzatz);
            return;
        }
        this.mView.setEnabled(true);
        this.mView.setContentDescription(this.zzaty);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSendingRemoteMediaRequest() {
        this.mView.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.mView.setOnClickListener(this.zzatA);
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        this.mView.setOnClickListener(null);
        super.onSessionEnded();
    }
}
