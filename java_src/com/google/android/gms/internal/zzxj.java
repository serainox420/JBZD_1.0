package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.AudioManager;
import android.net.Uri;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.google.android.gms.R;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.ReconnectionService;
import com.google.android.gms.cast.framework.media.MediaNotificationService;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.internal.zzxf;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzxj implements RemoteMediaClient.Listener {
    private final Context zzPB;
    private CastDevice zzani;
    private final zzxe zzaqL;
    private RemoteMediaClient zzaqo;
    private final CastOptions zzati;
    private final ComponentName zzatj;
    private final zzxf zzatk;
    private final zzxf zzatl;
    private MediaSessionCompat zzatm;
    private MediaSessionCompat.a zzatn;
    private boolean zzato;

    public zzxj(Context context, CastOptions castOptions, zzxe zzxeVar) {
        this.zzPB = context;
        this.zzati = castOptions;
        this.zzaqL = zzxeVar;
        if (this.zzati.getCastMediaOptions() == null || TextUtils.isEmpty(this.zzati.getCastMediaOptions().getExpandedControllerActivityClassName())) {
            this.zzatj = null;
        } else {
            this.zzatj = new ComponentName(this.zzPB, this.zzati.getCastMediaOptions().getExpandedControllerActivityClassName());
        }
        this.zzatk = new zzxf(this.zzPB);
        this.zzatk.zza(new zzxf.zza() { // from class: com.google.android.gms.internal.zzxj.1
            @Override // com.google.android.gms.internal.zzxf.zza
            public void zzc(Bitmap bitmap) {
                zzxj.this.zza(zzxj.zzd(bitmap), 0);
            }
        });
        this.zzatl = new zzxf(this.zzPB);
        this.zzatl.zza(new zzxf.zza() { // from class: com.google.android.gms.internal.zzxj.2
            @Override // com.google.android.gms.internal.zzxf.zza
            public void zzc(Bitmap bitmap) {
                zzxj.this.zza(bitmap, 3);
            }
        });
    }

    private Uri zza(MediaMetadata mediaMetadata, int i) {
        WebImage onPickImage = this.zzati.getCastMediaOptions().getImagePicker() != null ? this.zzati.getCastMediaOptions().getImagePicker().onPickImage(mediaMetadata, i) : mediaMetadata.hasImages() ? mediaMetadata.getImages().get(0) : null;
        if (onPickImage == null) {
            return null;
        }
        return onPickImage.getUrl();
    }

    private void zza(int i, MediaInfo mediaInfo) {
        if (i == 0) {
            this.zzatm.a(new PlaybackStateCompat.a().a(0, 0L, 1.0f).a());
            this.zzatm.a(new MediaMetadataCompat.a().a());
            return;
        }
        this.zzatm.a(new PlaybackStateCompat.a().a(i, 0L, 1.0f).a(512L).a());
        this.zzatm.a(zztT());
        zzb(mediaInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(Bitmap bitmap, int i) {
        if (i != 0) {
            if (i != 3) {
                return;
            }
            this.zzatm.a(zztO().a("android.media.metadata.ALBUM_ART", bitmap).a());
        } else if (bitmap != null) {
            this.zzatm.a(zztO().a("android.media.metadata.DISPLAY_ICON", bitmap).a());
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
            createBitmap.eraseColor(0);
            this.zzatm.a(zztO().a("android.media.metadata.DISPLAY_ICON", createBitmap).a());
        }
    }

    private void zzb(MediaInfo mediaInfo) {
        MediaMetadata metadata = mediaInfo.getMetadata();
        this.zzatm.a(zztO().a("android.media.metadata.TITLE", metadata.getString(MediaMetadata.KEY_TITLE)).a("android.media.metadata.DISPLAY_TITLE", metadata.getString(MediaMetadata.KEY_TITLE)).a("android.media.metadata.DISPLAY_SUBTITLE", metadata.getString(MediaMetadata.KEY_SUBTITLE)).a("android.media.metadata.DURATION", mediaInfo.getStreamDuration()).a());
        Uri zza = zza(metadata, 0);
        if (zza != null) {
            this.zzatk.zzo(zza);
        } else {
            zza((Bitmap) null, 0);
        }
        Uri zza2 = zza(metadata, 3);
        if (zza2 != null) {
            this.zzatl.zzo(zza2);
        } else {
            zza((Bitmap) null, 3);
        }
    }

    public static Bitmap zzd(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = (int) (((width * 9.0f) / 16.0f) + 0.5f);
        float f = (i - height) / 2;
        RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, f, width, height + f);
        Bitmap createBitmap = Bitmap.createBitmap(width, i, bitmap.getConfig());
        new Canvas(createBitmap).drawBitmap(bitmap, (Rect) null, rectF, (Paint) null);
        return createBitmap;
    }

    private void zztN() {
        int i;
        MediaInfo mediaInfo;
        boolean z = true;
        boolean z2 = false;
        MediaStatus mediaStatus = this.zzaqo.getMediaStatus();
        MediaInfo mediaInfo2 = mediaStatus == null ? null : mediaStatus.getMediaInfo();
        MediaMetadata metadata = mediaInfo2 == null ? null : mediaInfo2.getMetadata();
        if (mediaStatus != null && mediaInfo2 != null && metadata != null) {
            switch (this.zzaqo.getPlayerState()) {
                case 1:
                    int idleReason = mediaStatus.getIdleReason();
                    boolean z3 = this.zzaqo.isLiveStream() && idleReason == 2;
                    int loadingItemId = mediaStatus.getLoadingItemId();
                    if (loadingItemId == 0 || (idleReason != 1 && idleReason != 3)) {
                        z = false;
                    }
                    if (!z3) {
                        MediaQueueItem queueItemById = mediaStatus.getQueueItemById(loadingItemId);
                        if (queueItemById == null) {
                            i = 0;
                            z2 = z;
                            mediaInfo = mediaInfo2;
                            break;
                        } else {
                            z2 = z;
                            mediaInfo = queueItemById.getMedia();
                            i = 6;
                            break;
                        }
                    } else {
                        z2 = z;
                        i = 2;
                        mediaInfo = mediaInfo2;
                        break;
                    }
                case 2:
                    i = 3;
                    mediaInfo = mediaInfo2;
                    break;
                case 3:
                    i = 2;
                    mediaInfo = mediaInfo2;
                    break;
                case 4:
                    i = 6;
                    mediaInfo = mediaInfo2;
                    break;
                default:
                    i = 0;
                    mediaInfo = mediaInfo2;
                    break;
            }
        } else {
            i = 0;
            mediaInfo = mediaInfo2;
        }
        zza(i, mediaInfo);
        if (i == 0) {
            zztQ();
            zztS();
            return;
        }
        zztP();
        if (z2) {
            return;
        }
        zztR();
    }

    private MediaMetadataCompat.a zztO() {
        MediaMetadataCompat c = this.zzatm.d().c();
        return c == null ? new MediaMetadataCompat.a() : new MediaMetadataCompat.a(c);
    }

    private void zztP() {
        boolean z;
        boolean z2 = true;
        if (this.zzati.getCastMediaOptions().getNotificationOptions() == null || this.zzaqo == null) {
            return;
        }
        Intent intent = new Intent(this.zzPB, MediaNotificationService.class);
        intent.setPackage(this.zzPB.getPackageName());
        intent.setAction(MediaNotificationService.ACTION_UPDATE_NOTIFICATION);
        intent.putExtra("extra_media_info", this.zzaqo.getMediaInfo());
        intent.putExtra("extra_remote_media_client_player_state", this.zzaqo.getPlayerState());
        intent.putExtra("extra_cast_device", this.zzani);
        intent.putExtra("extra_media_session_token", getMediaSessionToken());
        MediaStatus mediaStatus = this.zzaqo.getMediaStatus();
        if (mediaStatus != null) {
            switch (mediaStatus.getQueueRepeatMode()) {
                case 1:
                case 2:
                case 3:
                    z = true;
                    break;
                default:
                    Integer indexById = mediaStatus.getIndexById(mediaStatus.getCurrentItemId());
                    if (indexById == null) {
                        z = false;
                        z2 = false;
                        break;
                    } else {
                        z = indexById.intValue() > 0;
                        if (indexById.intValue() >= mediaStatus.getQueueItemCount() - 1) {
                            z2 = false;
                            break;
                        }
                    }
                    break;
            }
            intent.putExtra("extra_can_skip_next", z2);
            intent.putExtra("extra_can_skip_prev", z);
        }
        this.zzPB.startService(intent);
    }

    private void zztQ() {
        if (this.zzati.getCastMediaOptions().getNotificationOptions() == null) {
            return;
        }
        Intent intent = new Intent(this.zzPB, MediaNotificationService.class);
        intent.setPackage(this.zzPB.getPackageName());
        intent.setAction(MediaNotificationService.ACTION_UPDATE_NOTIFICATION);
        this.zzPB.stopService(intent);
    }

    private void zztR() {
        if (!this.zzati.getEnableReconnectionService()) {
            return;
        }
        Intent intent = new Intent(this.zzPB, ReconnectionService.class);
        intent.setPackage(this.zzPB.getPackageName());
        this.zzPB.startService(intent);
    }

    private void zztS() {
        if (!this.zzati.getEnableReconnectionService()) {
            return;
        }
        Intent intent = new Intent(this.zzPB, ReconnectionService.class);
        intent.setPackage(this.zzPB.getPackageName());
        this.zzPB.stopService(intent);
    }

    private PendingIntent zztT() {
        if (this.zzatj == null) {
            return null;
        }
        Intent intent = new Intent();
        intent.setComponent(this.zzatj);
        return PendingIntent.getActivity(this.zzPB, 0, intent, 134217728);
    }

    public MediaSessionCompat.Token getMediaSessionToken() {
        if (this.zzatm == null) {
            return null;
        }
        return this.zzatm.c();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onAdBreakStatusUpdated() {
        zztN();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onMetadataUpdated() {
        zztN();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onPreloadStatusUpdated() {
        zztN();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onQueueStatusUpdated() {
        zztN();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onSendingRemoteMediaRequest() {
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public void onStatusUpdated() {
        zztN();
    }

    public void zza(RemoteMediaClient remoteMediaClient, CastDevice castDevice) {
        if (this.zzato || this.zzati == null || this.zzati.getCastMediaOptions() == null || remoteMediaClient == null || castDevice == null) {
            return;
        }
        this.zzaqo = remoteMediaClient;
        this.zzaqo.addListener(this);
        this.zzani = castDevice;
        if (!com.google.android.gms.common.util.zzt.zzzo()) {
            ((AudioManager) this.zzPB.getSystemService("audio")).requestAudioFocus(null, 3, 3);
        }
        ComponentName componentName = new ComponentName(this.zzPB, this.zzati.getCastMediaOptions().getMediaIntentReceiverClassName());
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        this.zzatm = new MediaSessionCompat(this.zzPB, "CastMediaSession", componentName, PendingIntent.getBroadcast(this.zzPB, 0, intent, 0));
        this.zzatm.a(3);
        zza(0, (MediaInfo) null);
        if (this.zzani != null && !TextUtils.isEmpty(this.zzani.getFriendlyName())) {
            this.zzatm.a(new MediaMetadataCompat.a().a("android.media.metadata.ALBUM_ARTIST", this.zzPB.getResources().getString(R.string.cast_casting_to_device, this.zzani.getFriendlyName())).a());
        }
        this.zzatn = new MediaSessionCompat.a() { // from class: com.google.android.gms.internal.zzxj.3
            @Override // android.support.v4.media.session.MediaSessionCompat.a
            public boolean onMediaButtonEvent(Intent intent2) {
                KeyEvent keyEvent = (KeyEvent) intent2.getParcelableExtra("android.intent.extra.KEY_EVENT");
                if (keyEvent != null) {
                    if (keyEvent.getKeyCode() != 127 && keyEvent.getKeyCode() != 126) {
                        return true;
                    }
                    zzxj.this.zzaqo.togglePlayback();
                    return true;
                }
                return true;
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.a
            public void onPause() {
                zzxj.this.zzaqo.togglePlayback();
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.a
            public void onPlay() {
                zzxj.this.zzaqo.togglePlayback();
            }
        };
        this.zzatm.a(this.zzatn);
        this.zzatm.a(true);
        this.zzaqL.setMediaSessionCompat(this.zzatm);
        this.zzato = true;
        zztN();
    }

    public void zzce(int i) {
        if (!this.zzato) {
            return;
        }
        this.zzato = false;
        if (this.zzaqo != null) {
            this.zzaqo.removeListener(this);
        }
        if (!com.google.android.gms.common.util.zzt.zzzo()) {
            ((AudioManager) this.zzPB.getSystemService("audio")).abandonAudioFocus(null);
        }
        this.zzaqL.setMediaSessionCompat(null);
        if (this.zzatk != null) {
            this.zzatk.clear();
        }
        if (this.zzatl != null) {
            this.zzatl.clear();
        }
        if (this.zzatm != null) {
            this.zzatm.a((PendingIntent) null);
            this.zzatm.a((MediaSessionCompat.a) null);
            this.zzatm.a(new MediaMetadataCompat.a().a());
            zza(0, (MediaInfo) null);
            this.zzatm.a(false);
            this.zzatm.b();
            this.zzatm = null;
        }
        this.zzaqo = null;
        this.zzani = null;
        this.zzatn = null;
        zztQ();
        if (i != 0) {
            return;
        }
        zztS();
    }
}
