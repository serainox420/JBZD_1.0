package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaUtils;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.internal.zzxf;
/* loaded from: classes2.dex */
public class zzxn extends UIController {
    private final ImagePicker zzarP;
    private final ImageHints zzasZ;
    private final ImageView zzatC;
    private final zzxf zzatE;
    private final Bitmap zzatG;
    private final View zzatH;

    public zzxn(ImageView imageView, Context context, ImageHints imageHints, int i, View view) {
        ImagePicker imagePicker = null;
        this.zzatC = imageView;
        this.zzasZ = imageHints;
        this.zzatG = i != 0 ? BitmapFactory.decodeResource(context.getResources(), i) : null;
        this.zzatH = view;
        CastMediaOptions castMediaOptions = CastContext.getSharedInstance(context).getCastOptions().getCastMediaOptions();
        this.zzarP = castMediaOptions != null ? castMediaOptions.getImagePicker() : imagePicker;
        this.zzatE = new zzxf(context.getApplicationContext());
    }

    private Uri zzd(MediaInfo mediaInfo) {
        WebImage onPickImage;
        if (mediaInfo == null) {
            return null;
        }
        return (this.zzarP == null || (onPickImage = this.zzarP.onPickImage(mediaInfo.getMetadata(), this.zzasZ)) == null || onPickImage.getUrl() == null) ? MediaUtils.getImageUri(mediaInfo, 0) : onPickImage.getUrl();
    }

    private void zztW() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            zztX();
            return;
        }
        Uri zzd = zzd(remoteMediaClient.getMediaInfo());
        if (zzd == null) {
            zztX();
        } else {
            this.zzatE.zzo(zzd);
        }
    }

    private void zztX() {
        if (this.zzatH != null) {
            this.zzatH.setVisibility(0);
            this.zzatC.setVisibility(4);
        }
        if (this.zzatG != null) {
            this.zzatC.setImageBitmap(this.zzatG);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzatE.zza(new zzxf.zza() { // from class: com.google.android.gms.internal.zzxn.1
            @Override // com.google.android.gms.internal.zzxf.zza
            public void zzc(Bitmap bitmap) {
                if (bitmap != null) {
                    if (zzxn.this.zzatH != null) {
                        zzxn.this.zzatH.setVisibility(4);
                    }
                    zzxn.this.zzatC.setVisibility(0);
                    zzxn.this.zzatC.setImageBitmap(bitmap);
                }
            }
        });
        zztX();
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        this.zzatE.clear();
        zztX();
        super.onSessionEnded();
    }
}
