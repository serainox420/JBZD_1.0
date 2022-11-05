package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.media.zzb;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes.dex */
public class ImagePicker {
    public static final int IMAGE_TYPE_EXPANDED_CONTROLLER_BACKGROUND = 4;
    public static final int IMAGE_TYPE_LOCK_SCREEN_BACKGROUND = 3;
    public static final int IMAGE_TYPE_MEDIA_ROUTE_CONTROLLER_DIALOG_BACKGROUND = 0;
    public static final int IMAGE_TYPE_MINI_CONTROLLER_THUMBNAIL = 2;
    public static final int IMAGE_TYPE_NOTIFICATION_THUMBNAIL = 1;
    public static final int IMAGE_TYPE_UNKNOWN = -1;
    private final zzb zzarS = new zza();

    /* loaded from: classes2.dex */
    private class zza extends zzb.zza {
        private zza() {
        }

        @Override // com.google.android.gms.cast.framework.media.zzb
        public WebImage onPickImage(MediaMetadata mediaMetadata, int i) {
            return ImagePicker.this.onPickImage(mediaMetadata, i);
        }

        @Override // com.google.android.gms.cast.framework.media.zzb
        public WebImage zza(MediaMetadata mediaMetadata, ImageHints imageHints) {
            return ImagePicker.this.onPickImage(mediaMetadata, imageHints);
        }

        @Override // com.google.android.gms.cast.framework.media.zzb
        public int zzsB() {
            return 10298208;
        }

        @Override // com.google.android.gms.cast.framework.media.zzb
        public IObjectWrapper zztp() {
            return com.google.android.gms.dynamic.zzd.zzA(ImagePicker.this);
        }
    }

    @Deprecated
    public WebImage onPickImage(MediaMetadata mediaMetadata, int i) {
        if (mediaMetadata == null || !mediaMetadata.hasImages()) {
            return null;
        }
        return mediaMetadata.getImages().get(0);
    }

    public WebImage onPickImage(MediaMetadata mediaMetadata, ImageHints imageHints) {
        return onPickImage(mediaMetadata, imageHints.getType());
    }

    public zzb zztq() {
        return this.zzarS;
    }
}
