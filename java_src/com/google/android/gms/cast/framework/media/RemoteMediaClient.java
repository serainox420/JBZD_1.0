package com.google.android.gms.cast.framework.media;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.cast.AdBreakInfo;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzyn;
import com.google.android.gms.internal.zzyq;
import com.google.android.gms.internal.zzza;
import com.google.android.gms.internal.zzzb;
import com.google.android.gms.internal.zzzc;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class RemoteMediaClient implements Cast.MessageReceivedCallback {
    public static final String NAMESPACE = zzza.NAMESPACE;
    public static final int RESUME_STATE_PAUSE = 2;
    public static final int RESUME_STATE_PLAY = 1;
    public static final int RESUME_STATE_UNCHANGED = 0;
    public static final int STATUS_FAILED = 2100;
    public static final int STATUS_REPLACED = 2103;
    public static final int STATUS_SUCCEEDED = 0;
    private final zzza zzaoZ;
    private final Cast.CastApi zzaql;
    private GoogleApiClient zzasD;
    private ParseAdsInfoCallback zzasG;
    private final List<Listener> mListeners = new CopyOnWriteArrayList();
    private final Map<ProgressListener, zzd> zzasE = new ConcurrentHashMap();
    private final Map<Long, zzd> zzasF = new ConcurrentHashMap();
    private final Object zzrJ = new Object();
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final zza zzasC = new zza();

    /* loaded from: classes2.dex */
    public interface Listener {
        void onAdBreakStatusUpdated();

        void onMetadataUpdated();

        void onPreloadStatusUpdated();

        void onQueueStatusUpdated();

        void onSendingRemoteMediaRequest();

        void onStatusUpdated();
    }

    /* loaded from: classes2.dex */
    public interface MediaChannelResult extends Result {
        JSONObject getCustomData();
    }

    /* loaded from: classes2.dex */
    public interface ParseAdsInfoCallback {
        List<AdBreakInfo> parseAdBreaksFromMediaStatus(MediaStatus mediaStatus);

        boolean parseIsPlayingAdFromMediaStatus(MediaStatus mediaStatus);
    }

    /* loaded from: classes2.dex */
    public interface ProgressListener {
        void onProgressUpdated(long j, long j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza implements zzzb {
        private GoogleApiClient zzapD;
        private long zzapE = 0;

        /* renamed from: com.google.android.gms.cast.framework.media.RemoteMediaClient$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private final class C0158zza implements ResultCallback<Status> {
            private final long zzapF;

            C0158zza(long j) {
                this.zzapF = j;
            }

            @Override // com.google.android.gms.common.api.ResultCallback
            /* renamed from: zzp */
            public void onResult(Status status) {
                if (!status.isSuccess()) {
                    RemoteMediaClient.this.zzaoZ.zzb(this.zzapF, status.getStatusCode());
                }
            }
        }

        public zza() {
        }

        @Override // com.google.android.gms.internal.zzzb
        public void zza(String str, String str2, long j, String str3) throws IOException {
            if (this.zzapD == null) {
                throw new IOException("No GoogleApiClient available");
            }
            for (Listener listener : RemoteMediaClient.this.mListeners) {
                listener.onSendingRemoteMediaRequest();
            }
            RemoteMediaClient.this.zzaql.sendMessage(this.zzapD, str, str2).setResultCallback(new C0158zza(j));
        }

        public void zzc(GoogleApiClient googleApiClient) {
            this.zzapD = googleApiClient;
        }

        @Override // com.google.android.gms.internal.zzzb
        public long zzsA() {
            long j = this.zzapE + 1;
            this.zzapE = j;
            return j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zzb extends zzyn<MediaChannelResult> {
        zzzc zzapH;

        zzb(GoogleApiClient googleApiClient) {
            super(googleApiClient);
            this.zzapH = new zzzc() { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb.1
                @Override // com.google.android.gms.internal.zzzc
                public void zzD(long j) {
                    zzb.this.zzb((zzb) ((MediaChannelResult) zzb.this.zzc(new Status(2103))));
                }

                @Override // com.google.android.gms.internal.zzzc
                public void zza(long j, int i, Object obj) {
                    zzb.this.zzb((zzb) new zzc(new Status(i), obj instanceof JSONObject ? (JSONObject) obj : null));
                }
            };
        }

        @Override // com.google.android.gms.internal.zzyn, com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzb) ((MediaChannelResult) obj));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzyq zzyqVar) {
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzr */
        public MediaChannelResult zzc(final Status status) {
            return new MediaChannelResult(this) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb.2
                @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult
                public JSONObject getCustomData() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzc implements MediaChannelResult {
        private final Status zzair;
        private final JSONObject zzamO;

        zzc(Status status, JSONObject jSONObject) {
            this.zzair = status;
            this.zzamO = jSONObject;
        }

        @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult
        public JSONObject getCustomData() {
            return this.zzamO;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzd {
        private final Set<ProgressListener> zzasL = new HashSet();
        private final long zzasM;
        private final Runnable zzasN;
        private boolean zzasO;

        public zzd(long j) {
            this.zzasM = j;
            this.zzasN = new TimerTask() { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.zzd.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    RemoteMediaClient.this.zza(zzd.this.zzasL);
                    RemoteMediaClient.this.mHandler.postDelayed(this, zzd.this.zzasM);
                }
            };
        }

        public boolean isStarted() {
            return this.zzasO;
        }

        public void start() {
            RemoteMediaClient.this.mHandler.removeCallbacks(this.zzasN);
            this.zzasO = true;
            RemoteMediaClient.this.mHandler.postDelayed(this.zzasN, this.zzasM);
        }

        public void stop() {
            RemoteMediaClient.this.mHandler.removeCallbacks(this.zzasN);
            this.zzasO = false;
        }

        public void zza(ProgressListener progressListener) {
            this.zzasL.add(progressListener);
        }

        public void zzb(ProgressListener progressListener) {
            this.zzasL.remove(progressListener);
        }

        public long zztJ() {
            return this.zzasM;
        }

        public boolean zztK() {
            return !this.zzasL.isEmpty();
        }
    }

    public RemoteMediaClient(zzza zzzaVar, Cast.CastApi castApi) {
        this.zzaql = castApi;
        this.zzaoZ = (zzza) zzac.zzw(zzzaVar);
        this.zzaoZ.zza(new zzza.zza() { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.1
            private void zztI() {
                MediaStatus mediaStatus;
                if (RemoteMediaClient.this.zzasG == null || (mediaStatus = RemoteMediaClient.this.getMediaStatus()) == null) {
                    return;
                }
                mediaStatus.zzam(RemoteMediaClient.this.zzasG.parseIsPlayingAdFromMediaStatus(mediaStatus));
                List<AdBreakInfo> parseAdBreaksFromMediaStatus = RemoteMediaClient.this.zzasG.parseAdBreaksFromMediaStatus(mediaStatus);
                MediaInfo mediaInfo = RemoteMediaClient.this.getMediaInfo();
                if (mediaInfo == null) {
                    return;
                }
                mediaInfo.zzA(parseAdBreaksFromMediaStatus);
            }

            @Override // com.google.android.gms.internal.zzza.zza
            public void onAdBreakStatusUpdated() {
                for (Listener listener : RemoteMediaClient.this.mListeners) {
                    listener.onAdBreakStatusUpdated();
                }
            }

            @Override // com.google.android.gms.internal.zzza.zza
            public void onMetadataUpdated() {
                zztI();
                for (Listener listener : RemoteMediaClient.this.mListeners) {
                    listener.onMetadataUpdated();
                }
            }

            @Override // com.google.android.gms.internal.zzza.zza
            public void onPreloadStatusUpdated() {
                for (Listener listener : RemoteMediaClient.this.mListeners) {
                    listener.onPreloadStatusUpdated();
                }
            }

            @Override // com.google.android.gms.internal.zzza.zza
            public void onQueueStatusUpdated() {
                for (Listener listener : RemoteMediaClient.this.mListeners) {
                    listener.onQueueStatusUpdated();
                }
            }

            @Override // com.google.android.gms.internal.zzza.zza
            public void onStatusUpdated() {
                zztI();
                RemoteMediaClient.this.zztH();
                for (Listener listener : RemoteMediaClient.this.mListeners) {
                    listener.onStatusUpdated();
                }
            }
        });
        this.zzaoZ.zza(this.zzasC);
    }

    private zzb zza(zzb zzbVar) {
        try {
            try {
                this.zzasD.zzb((GoogleApiClient) zzbVar);
            } catch (IllegalStateException e) {
                zzbVar.zzb((zzb) ((MediaChannelResult) zzbVar.zzc(new Status(2100))));
            }
        } catch (Throwable th) {
        }
        return zzbVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(Set<ProgressListener> set) {
        if (isBuffering() || isPaused()) {
            return;
        }
        HashSet<ProgressListener> hashSet = new HashSet(set);
        if (isPlaying()) {
            for (ProgressListener progressListener : hashSet) {
                progressListener.onProgressUpdated(getApproximateStreamPosition(), getStreamDuration());
            }
        } else if (!isLoadingNextItem()) {
            for (ProgressListener progressListener2 : hashSet) {
                progressListener2.onProgressUpdated(0L, 0L);
            }
        } else {
            MediaQueueItem loadingItem = getLoadingItem();
            if (loadingItem == null || loadingItem.getMedia() == null) {
                return;
            }
            for (ProgressListener progressListener3 : hashSet) {
                progressListener3.onProgressUpdated(0L, loadingItem.getMedia().getStreamDuration());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int zzbU(int i) {
        zzac.zzdj("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        for (int i2 = 0; i2 < mediaStatus.getQueueItemCount(); i2++) {
            if (mediaStatus.getQueueItem(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    private void zztG() throws IllegalStateException {
        if (this.zzasD == null) {
            throw new IllegalStateException("No connection");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zztH() {
        for (zzd zzdVar : this.zzasF.values()) {
            if (hasMediaSession() && !zzdVar.isStarted()) {
                zzdVar.start();
            } else if (!hasMediaSession() && zzdVar.isStarted()) {
                zzdVar.stop();
            }
            if (zzdVar.isStarted() && (isBuffering() || isPaused() || isLoadingNextItem())) {
                zza(zzdVar.zzasL);
            }
        }
    }

    public void addListener(Listener listener) {
        zzac.zzdj("Must be called from the main thread.");
        if (listener != null) {
            this.mListeners.add(listener);
        }
    }

    public boolean addProgressListener(ProgressListener progressListener, long j) {
        zzac.zzdj("Must be called from the main thread.");
        if (progressListener == null || this.zzasE.containsKey(progressListener)) {
            return false;
        }
        zzd zzdVar = this.zzasF.get(Long.valueOf(j));
        if (zzdVar == null) {
            zzdVar = new zzd(j);
            this.zzasF.put(Long.valueOf(j), zzdVar);
        }
        zzdVar.zza(progressListener);
        this.zzasE.put(progressListener, zzdVar);
        if (hasMediaSession()) {
            zzdVar.start();
        }
        return true;
    }

    public long getApproximateStreamPosition() {
        long approximateStreamPosition;
        synchronized (this.zzrJ) {
            zzac.zzdj("Must be called from the main thread.");
            approximateStreamPosition = this.zzaoZ.getApproximateStreamPosition();
        }
        return approximateStreamPosition;
    }

    public MediaQueueItem getCurrentItem() {
        zzac.zzdj("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getQueueItemById(mediaStatus.getCurrentItemId());
    }

    public int getIdleReason() {
        int idleReason;
        synchronized (this.zzrJ) {
            zzac.zzdj("Must be called from the main thread.");
            MediaStatus mediaStatus = getMediaStatus();
            idleReason = mediaStatus != null ? mediaStatus.getIdleReason() : 0;
        }
        return idleReason;
    }

    public MediaQueueItem getLoadingItem() {
        zzac.zzdj("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getQueueItemById(mediaStatus.getLoadingItemId());
    }

    public MediaInfo getMediaInfo() {
        MediaInfo mediaInfo;
        synchronized (this.zzrJ) {
            zzac.zzdj("Must be called from the main thread.");
            mediaInfo = this.zzaoZ.getMediaInfo();
        }
        return mediaInfo;
    }

    public MediaStatus getMediaStatus() {
        MediaStatus mediaStatus;
        synchronized (this.zzrJ) {
            zzac.zzdj("Must be called from the main thread.");
            mediaStatus = this.zzaoZ.getMediaStatus();
        }
        return mediaStatus;
    }

    public String getNamespace() {
        zzac.zzdj("Must be called from the main thread.");
        return this.zzaoZ.getNamespace();
    }

    public int getPlayerState() {
        int playerState;
        synchronized (this.zzrJ) {
            zzac.zzdj("Must be called from the main thread.");
            MediaStatus mediaStatus = getMediaStatus();
            playerState = mediaStatus != null ? mediaStatus.getPlayerState() : 1;
        }
        return playerState;
    }

    public MediaQueueItem getPreloadedItem() {
        zzac.zzdj("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getQueueItemById(mediaStatus.getPreloadedItemId());
    }

    public long getStreamDuration() {
        long streamDuration;
        synchronized (this.zzrJ) {
            zzac.zzdj("Must be called from the main thread.");
            streamDuration = this.zzaoZ.getStreamDuration();
        }
        return streamDuration;
    }

    public boolean hasMediaSession() {
        zzac.zzdj("Must be called from the main thread.");
        return isBuffering() || isPlaying() || isPaused() || isLoadingNextItem();
    }

    public boolean isBuffering() {
        zzac.zzdj("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 4;
    }

    public boolean isLiveStream() {
        zzac.zzdj("Must be called from the main thread.");
        MediaInfo mediaInfo = getMediaInfo();
        return mediaInfo != null && mediaInfo.getStreamType() == 2;
    }

    public boolean isLoadingNextItem() {
        zzac.zzdj("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return (mediaStatus == null || mediaStatus.getLoadingItemId() == 0) ? false : true;
    }

    public boolean isPaused() {
        zzac.zzdj("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && (mediaStatus.getPlayerState() == 3 || (isLiveStream() && getIdleReason() == 2));
    }

    public boolean isPlaying() {
        zzac.zzdj("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 2;
    }

    public boolean isPlayingAd() {
        zzac.zzdj("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.isPlayingAd();
    }

    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo) {
        return load(mediaInfo, true, 0L, null, null);
    }

    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z) {
        return load(mediaInfo, z, 0L, null, null);
    }

    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z, long j) {
        return load(mediaInfo, z, j, null, null);
    }

    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z, long j, JSONObject jSONObject) {
        return load(mediaInfo, z, j, null, jSONObject);
    }

    public PendingResult<MediaChannelResult> load(final MediaInfo mediaInfo, final boolean z, final long j, final long[] jArr, final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.12
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, mediaInfo, z, j, jArr, jSONObject);
                    } catch (IOException | IllegalStateException e) {
                        zzb((AnonymousClass12) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.cast.Cast.MessageReceivedCallback
    public void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.zzaoZ.zzcP(str2);
    }

    public PendingResult<MediaChannelResult> pause() {
        return pause(null);
    }

    public PendingResult<MediaChannelResult> pause(final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.17
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass17) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> play() {
        return play(null);
    }

    public PendingResult<MediaChannelResult> play(final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.19
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zzc(this.zzapH, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass19) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueAppendItem(MediaQueueItem mediaQueueItem, JSONObject jSONObject) throws IllegalArgumentException {
        return queueInsertItems(new MediaQueueItem[]{mediaQueueItem}, 0, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueInsertAndPlayItem(final MediaQueueItem mediaQueueItem, final int i, final long j, final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, new MediaQueueItem[]{mediaQueueItem}, i, 0, 0, j, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass6) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueInsertAndPlayItem(MediaQueueItem mediaQueueItem, int i, JSONObject jSONObject) {
        return queueInsertAndPlayItem(mediaQueueItem, i, -1L, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueInsertItems(final MediaQueueItem[] mediaQueueItemArr, final int i, final JSONObject jSONObject) throws IllegalArgumentException {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, mediaQueueItemArr, i, 0, -1, -1L, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass5) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueJumpToItem(final int i, final long j, final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.15
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    if (RemoteMediaClient.this.zzbU(i) == -1) {
                        zzb((AnonymousClass15) ((MediaChannelResult) zzc(new Status(0))));
                        return;
                    }
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, i, j, (MediaQueueItem[]) null, 0, (Integer) null, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass15) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueJumpToItem(int i, JSONObject jSONObject) {
        return queueJumpToItem(i, -1L, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueLoad(final MediaQueueItem[] mediaQueueItemArr, final int i, final int i2, final long j, final JSONObject jSONObject) throws IllegalArgumentException {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, mediaQueueItemArr, i, i2, j, jSONObject);
                    } catch (IOException e) {
                        zzb((AnonymousClass4) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueLoad(MediaQueueItem[] mediaQueueItemArr, int i, int i2, JSONObject jSONObject) throws IllegalArgumentException {
        return queueLoad(mediaQueueItemArr, i, i2, -1L, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueMoveItemToNewIndex(final int i, final int i2, final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.16
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                int i3 = 0;
                synchronized (RemoteMediaClient.this.zzrJ) {
                    int zzbU = RemoteMediaClient.this.zzbU(i);
                    if (zzbU == -1) {
                        zzb((AnonymousClass16) ((MediaChannelResult) zzc(new Status(0))));
                    } else if (i2 < 0) {
                        zzb((AnonymousClass16) ((MediaChannelResult) zzc(new Status(2001, String.format(Locale.ROOT, "Invalid request: Invalid newIndex %d.", Integer.valueOf(i2))))));
                    } else if (zzbU == i2) {
                        zzb((AnonymousClass16) ((MediaChannelResult) zzc(new Status(0))));
                    } else {
                        MediaQueueItem queueItem = RemoteMediaClient.this.getMediaStatus().getQueueItem(i2 > zzbU ? i2 + 1 : i2);
                        if (queueItem != null) {
                            i3 = queueItem.getItemId();
                        }
                        try {
                            RemoteMediaClient.this.zzaoZ.zza(this.zzapH, new int[]{i}, i3, jSONObject);
                        } catch (zzza.zzb | IOException e) {
                            zzb((AnonymousClass16) ((MediaChannelResult) zzc(new Status(2100))));
                        }
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueNext(final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.11
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, 0, -1L, (MediaQueueItem[]) null, 1, (Integer) null, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass11) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queuePrev(final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.10
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, 0, -1L, (MediaQueueItem[]) null, -1, (Integer) null, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass10) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueRemoveItem(final int i, final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.14
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    if (RemoteMediaClient.this.zzbU(i) == -1) {
                        zzb((AnonymousClass14) ((MediaChannelResult) zzc(new Status(0))));
                        return;
                    }
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, new int[]{i}, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass14) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueRemoveItems(final int[] iArr, final JSONObject jSONObject) throws IllegalArgumentException {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, iArr, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass8) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueReorderItems(final int[] iArr, final int i, final JSONObject jSONObject) throws IllegalArgumentException {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.9
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, iArr, i, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass9) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueSetRepeatMode(final int i, final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.13
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, 0, -1L, (MediaQueueItem[]) null, 0, Integer.valueOf(i), jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass13) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueUpdateItems(final MediaQueueItem[] mediaQueueItemArr, final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, 0, -1L, mediaQueueItemArr, 0, (Integer) null, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass7) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public void removeListener(Listener listener) {
        zzac.zzdj("Must be called from the main thread.");
        if (listener != null) {
            this.mListeners.remove(listener);
        }
    }

    public void removeProgressListener(ProgressListener progressListener) {
        zzac.zzdj("Must be called from the main thread.");
        zzd remove = this.zzasE.remove(progressListener);
        if (remove != null) {
            remove.zzb(progressListener);
            if (remove.zztK()) {
                return;
            }
            this.zzasF.remove(Long.valueOf(remove.zztJ()));
            remove.stop();
        }
    }

    public PendingResult<MediaChannelResult> requestStatus() {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.23
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH);
                    } catch (IOException e) {
                        zzb((AnonymousClass23) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> seek(long j) {
        return seek(j, 0, null);
    }

    public PendingResult<MediaChannelResult> seek(long j, int i) {
        return seek(j, i, null);
    }

    public PendingResult<MediaChannelResult> seek(final long j, final int i, final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.20
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, j, i, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass20) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> setActiveMediaTracks(final long[] jArr) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        if (jArr == null) {
            throw new IllegalArgumentException("trackIds cannot be null");
        }
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, jArr);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass2) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public void setParseAdsInfoCallback(ParseAdsInfoCallback parseAdsInfoCallback) {
        zzac.zzdj("Must be called from the main thread.");
        this.zzasG = parseAdsInfoCallback;
    }

    public PendingResult<MediaChannelResult> setStreamMute(boolean z) {
        return setStreamMute(z, null);
    }

    public PendingResult<MediaChannelResult> setStreamMute(final boolean z, final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.22
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, z, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass22) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> setStreamVolume(double d) throws IllegalArgumentException {
        return setStreamVolume(d, null);
    }

    public PendingResult<MediaChannelResult> setStreamVolume(final double d, final JSONObject jSONObject) throws IllegalArgumentException {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new IllegalArgumentException(new StringBuilder(41).append("Volume cannot be ").append(d).toString());
        }
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.21
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, d, jSONObject);
                    } catch (zzza.zzb | IOException | IllegalArgumentException e) {
                        zzb((AnonymousClass21) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> setTextTrackStyle(final TextTrackStyle textTrackStyle) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        if (textTrackStyle == null) {
            throw new IllegalArgumentException("trackStyle cannot be null");
        }
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zza(this.zzapH, textTrackStyle);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass3) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> stop() {
        return stop(null);
    }

    public PendingResult<MediaChannelResult> stop(final JSONObject jSONObject) {
        zzac.zzdj("Must be called from the main thread.");
        zztG();
        return zza(new zzb(this.zzasD) { // from class: com.google.android.gms.cast.framework.media.RemoteMediaClient.18
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaClient.this.zzrJ) {
                    try {
                        RemoteMediaClient.this.zzaoZ.zzb(this.zzapH, jSONObject);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass18) ((MediaChannelResult) zzc(new Status(2100))));
                    }
                }
            }
        });
    }

    public void togglePlayback() {
        zzac.zzdj("Must be called from the main thread.");
        int playerState = getPlayerState();
        if (playerState == 4 || playerState == 2) {
            pause();
        } else {
            play();
        }
    }

    public void zzd(GoogleApiClient googleApiClient) throws IOException {
        if (this.zzasD == googleApiClient) {
            return;
        }
        if (this.zzasD != null) {
            this.zzaoZ.zzuz();
            this.zzaql.removeMessageReceivedCallbacks(this.zzasD, getNamespace());
            this.zzasC.zzc(null);
            this.mHandler.removeCallbacksAndMessages(null);
        }
        this.zzasD = googleApiClient;
        if (this.zzasD == null) {
            return;
        }
        this.zzasC.zzc(this.zzasD);
    }

    public void zztF() throws IOException {
        if (this.zzasD != null) {
            this.zzaql.setMessageReceivedCallbacks(this.zzasD, getNamespace(), this);
        }
    }
}
