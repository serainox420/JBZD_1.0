package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
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
public class zzxm extends UIController {
    private final ImagePicker zzarP;
    private final ImageHints zzasZ;
    private final ImageView zzatC;
    private final Bitmap zzatD;
    private final zzxf zzatE;

    public zzxm(ImageView imageView, Context context, ImageHints imageHints, int i) {
        this.zzatC = imageView;
        this.zzasZ = imageHints;
        this.zzatD = BitmapFactory.decodeResource(context.getResources(), i);
        CastMediaOptions castMediaOptions = CastContext.getSharedInstance(context).getCastOptions().getCastMediaOptions();
        this.zzarP = castMediaOptions != null ? castMediaOptions.getImagePicker() : null;
        this.zzatE = new zzxf(context.getApplicationContext());
    }

    private Uri zza(MediaQueueItem mediaQueueItem) {
        MediaInfo media;
        WebImage onPickImage;
        if (mediaQueueItem == null || (media = mediaQueueItem.getMedia()) == null) {
            return null;
        }
        return (this.zzarP == null || (onPickImage = this.zzarP.onPickImage(media.getMetadata(), this.zzasZ)) == null || onPickImage.getUrl() == null) ? MediaUtils.getImageUri(media, 0) : onPickImage.getUrl();
    }

    private void zztW() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zzatC.setImageBitmap(this.zzatD);
            return;
        }
        Uri zza = zza(remoteMediaClient.getPreloadedItem());
        if (zza == null) {
            this.zzatC.setImageBitmap(this.zzatD);
        } else {
            this.zzatE.zzo(zza);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onMediaStatusUpdated() {
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzatE.zza(new zzxf.zza() { // from class: com.google.android.gms.internal.zzxm.1
            @Override // com.google.android.gms.internal.zzxf.zza
            public void zzc(Bitmap bitmap) {
                if (bitmap != null) {
                    zzxm.this.zzatC.setImageBitmap(bitmap);
                }
            }
        });
        this.zzatC.setImageBitmap(this.zzatD);
        zztW();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public void onSessionEnded() {
        this.zzatE.clear();
        this.zzatC.setImageBitmap(this.zzatD);
        super.onSessionEnded();
    }
}
