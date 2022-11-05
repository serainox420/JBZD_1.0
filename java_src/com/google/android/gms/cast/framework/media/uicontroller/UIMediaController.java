package com.google.android.gms.cast.framework.media.uicontroller;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzxl;
import com.google.android.gms.internal.zzxm;
import com.google.android.gms.internal.zzxn;
import com.google.android.gms.internal.zzxo;
import com.google.android.gms.internal.zzxq;
import com.google.android.gms.internal.zzxr;
import com.google.android.gms.internal.zzxs;
import com.google.android.gms.internal.zzxt;
import com.google.android.gms.internal.zzxu;
import com.google.android.gms.internal.zzxv;
import com.google.android.gms.internal.zzxw;
import com.google.android.gms.internal.zzxx;
import com.google.android.gms.internal.zzxy;
import com.google.android.gms.internal.zzxz;
import com.google.android.gms.internal.zzya;
import com.google.android.gms.internal.zzyb;
import com.google.android.gms.internal.zzyc;
import com.google.android.gms.internal.zzyd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class UIMediaController implements SessionManagerListener<CastSession>, RemoteMediaClient.Listener {
    private final Activity mActivity;
    private final SessionManager zzapY;
    private RemoteMediaClient zzaqo;
    private final Map<View, List<UIController>> zzatt = new HashMap();
    private final Set<zzyb> zzatu = new HashSet();
    private RemoteMediaClient.Listener zzatv;

    public UIMediaController(Activity activity) {
        this.mActivity = activity;
        this.zzapY = CastContext.getSharedInstance(activity).getSessionManager();
        this.zzapY.addSessionManagerListener(this, CastSession.class);
        zza(this.zzapY.getCurrentCastSession());
    }

    private void zza(View view, UIController uIController) {
        List<UIController> list = this.zzatt.get(view);
        if (list == null) {
            list = new ArrayList<>();
            this.zzatt.put(view, list);
        }
        list.add(uIController);
        if (isActive()) {
            uIController.onSessionConnected(this.zzapY.getCurrentCastSession());
            zztV();
        }
    }

    private void zza(Session session) {
        if (isActive() || !(session instanceof CastSession) || !session.isConnected()) {
            return;
        }
        CastSession castSession = (CastSession) session;
        this.zzaqo = castSession.getRemoteMediaClient();
        if (this.zzaqo == null) {
            return;
        }
        this.zzaqo.addListener(this);
        for (List<UIController> list : this.zzatt.values()) {
            for (UIController uIController : list) {
                uIController.onSessionConnected(castSession);
            }
        }
        zztV();
    }

    private void zztU() {
        if (!isActive()) {
            return;
        }
        for (List<UIController> list : this.zzatt.values()) {
            for (UIController uIController : list) {
                uIController.onSessionEnded();
            }
        }
        this.zzaqo.removeListener(this);
        this.zzaqo = null;
    }

    private void zztV() {
        for (List<UIController> list : this.zzatt.values()) {
            for (UIController uIController : list) {
                uIController.onMediaStatusUpdated();
            }
        }
    }

    @Deprecated
    public void bindImageViewToImageOfCurrentItem(ImageView imageView, int i, int i2) {
        zzac.zzdj("Must be called from the main thread.");
        zza(imageView, new zzxn(imageView, this.mActivity, new ImageHints(i, 0, 0), i2, null));
    }

    @Deprecated
    public void bindImageViewToImageOfCurrentItem(ImageView imageView, int i, View view) {
        zzac.zzdj("Must be called from the main thread.");
        zza(imageView, new zzxn(imageView, this.mActivity, new ImageHints(i, 0, 0), 0, view));
    }

    public void bindImageViewToImageOfCurrentItem(ImageView imageView, ImageHints imageHints, int i) {
        zzac.zzdj("Must be called from the main thread.");
        zza(imageView, new zzxn(imageView, this.mActivity, imageHints, i, null));
    }

    public void bindImageViewToImageOfCurrentItem(ImageView imageView, ImageHints imageHints, View view) {
        zzac.zzdj("Must be called from the main thread.");
        zza(imageView, new zzxn(imageView, this.mActivity, imageHints, 0, view));
    }

    @Deprecated
    public void bindImageViewToImageOfPreloadedItem(ImageView imageView, int i, int i2) {
        zzac.zzdj("Must be called from the main thread.");
        zza(imageView, new zzxm(imageView, this.mActivity, new ImageHints(i, 0, 0), i2));
    }

    public void bindImageViewToImageOfPreloadedItem(ImageView imageView, ImageHints imageHints, int i) {
        zzac.zzdj("Must be called from the main thread.");
        zza(imageView, new zzxm(imageView, this.mActivity, imageHints, i));
    }

    public void bindImageViewToMuteToggle(ImageView imageView) {
        zzac.zzdj("Must be called from the main thread.");
        zza(imageView, new zzxt(imageView, this.mActivity));
    }

    public void bindImageViewToPlayPauseToggle(ImageView imageView, Drawable drawable, Drawable drawable2, Drawable drawable3, View view, boolean z) {
        zzac.zzdj("Must be called from the main thread.");
        zza(imageView, new zzxu(imageView, this.mActivity, drawable, drawable2, drawable3, view, z));
    }

    public void bindProgressBar(ProgressBar progressBar) {
        bindProgressBar(progressBar, 1000L);
    }

    public void bindProgressBar(ProgressBar progressBar, long j) {
        zzac.zzdj("Must be called from the main thread.");
        zza(progressBar, new zzxv(progressBar, j));
    }

    public void bindSeekBar(SeekBar seekBar) {
        bindSeekBar(seekBar, 1000L);
    }

    public void bindSeekBar(SeekBar seekBar, long j) {
        zzac.zzdj("Must be called from the main thread.");
        zza(seekBar, new zzxw(seekBar, j, new SeekBar.OnSeekBarChangeListener() { // from class: com.google.android.gms.cast.framework.media.uicontroller.UIMediaController.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                if (z) {
                    for (zzyb zzybVar : UIMediaController.this.zzatu) {
                        zzybVar.zzE(i);
                    }
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
                for (zzyb zzybVar : UIMediaController.this.zzatu) {
                    zzybVar.zzap(false);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
                for (zzyb zzybVar : UIMediaController.this.zzatu) {
                    zzybVar.zzap(true);
                }
            }
        }));
    }

    public void bindTextViewToMetadataOfCurrentItem(TextView textView, String str) {
        zzac.zzdj("Must be called from the main thread.");
        bindTextViewToMetadataOfCurrentItem(textView, Collections.singletonList(str));
    }

    public void bindTextViewToMetadataOfCurrentItem(TextView textView, List<String> list) {
        zzac.zzdj("Must be called from the main thread.");
        zza(textView, new zzxs(textView, list));
    }

    public void bindTextViewToMetadataOfPreloadedItem(TextView textView, String str) {
        zzac.zzdj("Must be called from the main thread.");
        bindTextViewToMetadataOfPreloadedItem(textView, Collections.singletonList(str));
    }

    public void bindTextViewToMetadataOfPreloadedItem(TextView textView, List<String> list) {
        zzac.zzdj("Must be called from the main thread.");
        zza(textView, new zzxr(textView, list));
    }

    public void bindTextViewToStreamDuration(TextView textView) {
        zzac.zzdj("Must be called from the main thread.");
        zza(textView, new zzya(textView, this.mActivity.getString(R.string.cast_invalid_stream_duration_text), null));
    }

    public void bindTextViewToStreamDuration(TextView textView, View view) {
        zzac.zzdj("Must be called from the main thread.");
        zza(textView, new zzya(textView, this.mActivity.getString(R.string.cast_invalid_stream_duration_text), view));
    }

    public void bindTextViewToStreamPosition(TextView textView, boolean z) {
        bindTextViewToStreamPosition(textView, z, 1000L);
    }

    public void bindTextViewToStreamPosition(TextView textView, boolean z, long j) {
        zzac.zzdj("Must be called from the main thread.");
        zzyb zzybVar = new zzyb(textView, j, this.mActivity.getString(R.string.cast_invalid_stream_position_text));
        if (z) {
            this.zzatu.add(zzybVar);
        }
        zza(textView, zzybVar);
    }

    public void bindViewToClosedCaption(View view) {
        zzac.zzdj("Must be called from the main thread.");
        zza(view, new zzxl(view, this.mActivity));
    }

    public void bindViewToForward(View view, long j) {
        zzac.zzdj("Must be called from the main thread.");
        zza(view, new zzxx(view, j));
    }

    public void bindViewToLaunchExpandedController(View view) {
        zzac.zzdj("Must be called from the main thread.");
        zza(view, new zzxo(view, this.mActivity));
    }

    public void bindViewToLoadingIndicator(View view) {
        zzac.zzdj("Must be called from the main thread.");
        zza(view, new zzxq(view));
    }

    public void bindViewToRewind(View view, long j) {
        zzac.zzdj("Must be called from the main thread.");
        bindViewToForward(view, -j);
    }

    public void bindViewToSkipNext(View view, int i) {
        zzac.zzdj("Must be called from the main thread.");
        zza(view, new zzxy(view, i));
    }

    public void bindViewToSkipPrev(View view, int i) {
        zzac.zzdj("Must be called from the main thread.");
        zza(view, new zzxz(view, i));
    }

    public void bindViewToUIController(View view, UIController uIController) {
        zzac.zzdj("Must be called from the main thread.");
        zza(view, uIController);
    }

    public void bindViewVisibilityToMediaSession(View view, int i) {
        zzac.zzdj("Must be called from the main thread.");
        zza(view, new zzyd(view, i));
    }

    public void bindViewVisibilityToPreloadingEvent(View view, int i) {
        zzac.zzdj("Must be called from the main thread.");
        zza(view, new zzyc(view, i));
    }

    public void dispose() {
        zzac.zzdj("Must be called from the main thread.");
        zztU();
        this.zzatt.clear();
        this.zzapY.removeSessionManagerListener(this, CastSession.class);
        this.zzatv = null;
    }

    public RemoteMediaClient getRemoteMediaClient() {
        zzac.zzdj("Must be called from the main thread.");
        return this.zzaqo;
    }

    public boolean isActive() {
        zzac.zzdj("Must be called from the main thread.");
        return this.zzaqo != null;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onAdBreakStatusUpdated() {
        zztV();
        if (this.zzatv != null) {
            this.zzatv.onAdBreakStatusUpdated();
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onMetadataUpdated() {
        zztV();
        if (this.zzatv != null) {
            this.zzatv.onMetadataUpdated();
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onPreloadStatusUpdated() {
        zztV();
        if (this.zzatv != null) {
            this.zzatv.onPreloadStatusUpdated();
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onQueueStatusUpdated() {
        zztV();
        if (this.zzatv != null) {
            this.zzatv.onQueueStatusUpdated();
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onSendingRemoteMediaRequest() {
        for (List<UIController> list : this.zzatt.values()) {
            for (UIController uIController : list) {
                uIController.onSendingRemoteMediaRequest();
            }
        }
        if (this.zzatv != null) {
            this.zzatv.onSendingRemoteMediaRequest();
        }
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionEnded(CastSession castSession, int i) {
        zztU();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionEnding(CastSession castSession) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionResumeFailed(CastSession castSession, int i) {
        zztU();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionResumed(CastSession castSession, boolean z) {
        zza(castSession);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionResuming(CastSession castSession, String str) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionStartFailed(CastSession castSession, int i) {
        zztU();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionStarted(CastSession castSession, String str) {
        zza(castSession);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionStarting(CastSession castSession) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionSuspended(CastSession castSession, int i) {
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onStatusUpdated() {
        zztV();
        if (this.zzatv != null) {
            this.zzatv.onStatusUpdated();
        }
    }

    public void setPostRemoteMediaClientListener(RemoteMediaClient.Listener listener) {
        zzac.zzdj("Must be called from the main thread.");
        this.zzatv = listener;
    }
}
