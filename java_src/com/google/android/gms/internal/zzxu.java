package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.R;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
/* loaded from: classes2.dex */
public class zzxu extends UIController {
    private final View.OnClickListener zzatA;
    private final ImageView zzatC;
    private final View zzatR;
    private final boolean zzatS;
    private final Drawable zzatT;
    private final String zzatU;
    private final Drawable zzatV;
    private final String zzatW;
    private final Drawable zzatX;
    private final String zzatY;

    public zzxu(ImageView imageView, Context context, Drawable drawable, Drawable drawable2, Drawable drawable3, View view, boolean z) {
        this.zzatC = imageView;
        this.zzatT = drawable;
        this.zzatV = drawable2;
        this.zzatX = drawable3 == null ? drawable2 : drawable3;
        this.zzatU = context.getString(R.string.cast_play);
        this.zzatW = context.getString(R.string.cast_pause);
        this.zzatY = context.getString(R.string.cast_stop);
        this.zzatR = view;
        this.zzatS = z;
        this.zzatA = new View.OnClickListener() { // from class: com.google.android.gms.internal.zzxu.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                RemoteMediaClient remoteMediaClient = zzxu.this.getRemoteMediaClient();
                if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
                    return;
                }
                remoteMediaClient.togglePlayback();
            }
        };
    }

    private void zza(Drawable drawable, String str) {
        this.zzatC.setImageDrawable(drawable);
        this.zzatC.setContentDescription(str);
        this.zzatC.setVisibility(0);
        this.zzatC.setEnabled(true);
        if (this.zzatR != null) {
            this.zzatR.setVisibility(8);
        }
    }

    private void zzao(boolean z) {
        boolean z2 = false;
        if (this.zzatR != null) {
            this.zzatR.setVisibility(0);
        }
        this.zzatC.setVisibility(this.zzatS ? 4 : 0);
        ImageView imageView = this.zzatC;
        if (!z) {
            z2 = true;
        }
        imageView.setEnabled(z2);
    }

    private void zztW() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            return;
        }
        if (remoteMediaClient.isPaused()) {
            zza(this.zzatT, this.zzatU);
        } else if (remoteMediaClient.isPlaying()) {
            if (remoteMediaClient.isLiveStream()) {
                zza(this.zzatX, this.zzatY);
            } else {
                zza(this.zzatV, this.zzatW);
            }
        } else if (remoteMediaClient.isBuffering()) {
            zzao(false);
        } else if (!remoteMediaClient.isLoadingNextItem()) {
        } else {
            zzao(true);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSendingRemoteMediaRequest() {
        zzao(true);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzatC.setOnClickListener(this.zzatA);
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        this.zzatC.setOnClickListener(null);
        super.onSessionEnded();
    }
}
