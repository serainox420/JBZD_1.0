package com.google.android.gms.cast;

import android.annotation.SuppressLint;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzyn;
import com.google.android.gms.internal.zzyq;
import com.google.android.gms.internal.zzza;
import com.google.android.gms.internal.zzzb;
import com.google.android.gms.internal.zzzc;
import java.io.IOException;
import java.util.Locale;
import org.json.JSONObject;
@SuppressLint({"MissingRemoteException"})
/* loaded from: classes2.dex */
public class RemoteMediaPlayer implements Cast.MessageReceivedCallback {
    public static final String NAMESPACE = zzza.NAMESPACE;
    public static final int RESUME_STATE_PAUSE = 2;
    public static final int RESUME_STATE_PLAY = 1;
    public static final int RESUME_STATE_UNCHANGED = 0;
    public static final int STATUS_CANCELED = 2101;
    public static final int STATUS_FAILED = 2100;
    public static final int STATUS_REPLACED = 2103;
    public static final int STATUS_SUCCEEDED = 0;
    public static final int STATUS_TIMED_OUT = 2102;
    private final zzza zzaoZ;
    private final zza zzapa;
    private OnPreloadStatusUpdatedListener zzapb;
    private OnQueueStatusUpdatedListener zzapc;
    private OnMetadataUpdatedListener zzapd;
    private OnStatusUpdatedListener zzape;
    private final Object zzrJ;

    /* loaded from: classes2.dex */
    public interface MediaChannelResult extends Result {
        JSONObject getCustomData();
    }

    /* loaded from: classes2.dex */
    public interface OnMetadataUpdatedListener {
        void onMetadataUpdated();
    }

    /* loaded from: classes2.dex */
    public interface OnPreloadStatusUpdatedListener {
        void onPreloadStatusUpdated();
    }

    /* loaded from: classes2.dex */
    public interface OnQueueStatusUpdatedListener {
        void onQueueStatusUpdated();
    }

    /* loaded from: classes2.dex */
    public interface OnStatusUpdatedListener {
        void onStatusUpdated();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza implements zzzb {
        private GoogleApiClient zzapD;
        private long zzapE = 0;

        /* renamed from: com.google.android.gms.cast.RemoteMediaPlayer$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private final class C0156zza implements ResultCallback<Status> {
            private final long zzapF;

            C0156zza(long j) {
                this.zzapF = j;
            }

            @Override // com.google.android.gms.common.api.ResultCallback
            /* renamed from: zzp */
            public void onResult(Status status) {
                if (!status.isSuccess()) {
                    RemoteMediaPlayer.this.zzaoZ.zzb(this.zzapF, status.getStatusCode());
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
            Cast.CastApi.sendMessage(this.zzapD, str, str2).setResultCallback(new C0156zza(j));
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
            this.zzapH = new zzzc() { // from class: com.google.android.gms.cast.RemoteMediaPlayer.zzb.1
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

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzyq zzyqVar) {
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzq */
        public MediaChannelResult zzc(final Status status) {
            return new MediaChannelResult(this) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.zzb.2
                @Override // com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult
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

        @Override // com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult
        public JSONObject getCustomData() {
            return this.zzamO;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    public RemoteMediaPlayer() {
        this(new zzza(null));
    }

    RemoteMediaPlayer(zzza zzzaVar) {
        this.zzrJ = new Object();
        this.zzaoZ = zzzaVar;
        this.zzaoZ.zza(new zzza.zza() { // from class: com.google.android.gms.cast.RemoteMediaPlayer.1
            @Override // com.google.android.gms.internal.zzza.zza
            public void onAdBreakStatusUpdated() {
            }

            @Override // com.google.android.gms.internal.zzza.zza
            public void onMetadataUpdated() {
                RemoteMediaPlayer.this.onMetadataUpdated();
            }

            @Override // com.google.android.gms.internal.zzza.zza
            public void onPreloadStatusUpdated() {
                RemoteMediaPlayer.this.onPreloadStatusUpdated();
            }

            @Override // com.google.android.gms.internal.zzza.zza
            public void onQueueStatusUpdated() {
                RemoteMediaPlayer.this.onQueueStatusUpdated();
            }

            @Override // com.google.android.gms.internal.zzza.zza
            public void onStatusUpdated() {
                RemoteMediaPlayer.this.onStatusUpdated();
            }
        });
        this.zzapa = new zza();
        this.zzaoZ.zza(this.zzapa);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMetadataUpdated() {
        if (this.zzapd != null) {
            this.zzapd.onMetadataUpdated();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreloadStatusUpdated() {
        if (this.zzapb != null) {
            this.zzapb.onPreloadStatusUpdated();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onQueueStatusUpdated() {
        if (this.zzapc != null) {
            this.zzapc.onQueueStatusUpdated();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStatusUpdated() {
        if (this.zzape != null) {
            this.zzape.onStatusUpdated();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int zzbU(int i) {
        MediaStatus mediaStatus = getMediaStatus();
        for (int i2 = 0; i2 < mediaStatus.getQueueItemCount(); i2++) {
            if (mediaStatus.getQueueItem(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    public long getApproximateStreamPosition() {
        long approximateStreamPosition;
        synchronized (this.zzrJ) {
            approximateStreamPosition = this.zzaoZ.getApproximateStreamPosition();
        }
        return approximateStreamPosition;
    }

    public MediaInfo getMediaInfo() {
        MediaInfo mediaInfo;
        synchronized (this.zzrJ) {
            mediaInfo = this.zzaoZ.getMediaInfo();
        }
        return mediaInfo;
    }

    public MediaStatus getMediaStatus() {
        MediaStatus mediaStatus;
        synchronized (this.zzrJ) {
            mediaStatus = this.zzaoZ.getMediaStatus();
        }
        return mediaStatus;
    }

    public String getNamespace() {
        return this.zzaoZ.getNamespace();
    }

    public long getStreamDuration() {
        long streamDuration;
        synchronized (this.zzrJ) {
            streamDuration = this.zzaoZ.getStreamDuration();
        }
        return streamDuration;
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo) {
        return load(googleApiClient, mediaInfo, true, 0L, null, null);
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean z) {
        return load(googleApiClient, mediaInfo, z, 0L, null, null);
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean z, long j) {
        return load(googleApiClient, mediaInfo, z, j, null, null);
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean z, long j, JSONObject jSONObject) {
        return load(googleApiClient, mediaInfo, z, j, null, jSONObject);
    }

    public PendingResult<MediaChannelResult> load(final GoogleApiClient googleApiClient, final MediaInfo mediaInfo, final boolean z, final long j, final long[] jArr, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.12
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, mediaInfo, z, j, jArr, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (IOException e) {
                        zzb((AnonymousClass12) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.cast.Cast.MessageReceivedCallback
    public void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.zzaoZ.zzcP(str2);
    }

    public PendingResult<MediaChannelResult> pause(GoogleApiClient googleApiClient) {
        return pause(googleApiClient, null);
    }

    public PendingResult<MediaChannelResult> pause(final GoogleApiClient googleApiClient, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.17
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass17) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> play(GoogleApiClient googleApiClient) {
        return play(googleApiClient, null);
    }

    public PendingResult<MediaChannelResult> play(final GoogleApiClient googleApiClient, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.19
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zzc(this.zzapH, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass19) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueAppendItem(GoogleApiClient googleApiClient, MediaQueueItem mediaQueueItem, JSONObject jSONObject) throws IllegalArgumentException {
        return queueInsertItems(googleApiClient, new MediaQueueItem[]{mediaQueueItem}, 0, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueInsertAndPlayItem(final GoogleApiClient googleApiClient, final MediaQueueItem mediaQueueItem, final int i, final long j, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, new MediaQueueItem[]{mediaQueueItem}, i, 0, 0, j, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass6) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueInsertAndPlayItem(GoogleApiClient googleApiClient, MediaQueueItem mediaQueueItem, int i, JSONObject jSONObject) {
        return queueInsertAndPlayItem(googleApiClient, mediaQueueItem, i, -1L, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueInsertItems(final GoogleApiClient googleApiClient, final MediaQueueItem[] mediaQueueItemArr, final int i, final JSONObject jSONObject) throws IllegalArgumentException {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, mediaQueueItemArr, i, 0, -1, -1L, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass5) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueJumpToItem(final GoogleApiClient googleApiClient, final int i, final long j, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.15
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    if (RemoteMediaPlayer.this.zzbU(i) == -1) {
                        zzb((AnonymousClass15) ((MediaChannelResult) zzc(new Status(0))));
                        return;
                    }
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, i, j, (MediaQueueItem[]) null, 0, (Integer) null, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass15) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueJumpToItem(GoogleApiClient googleApiClient, int i, JSONObject jSONObject) {
        return queueJumpToItem(googleApiClient, i, -1L, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueLoad(final GoogleApiClient googleApiClient, final MediaQueueItem[] mediaQueueItemArr, final int i, final int i2, final long j, final JSONObject jSONObject) throws IllegalArgumentException {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, mediaQueueItemArr, i, i2, j, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (IOException e) {
                        zzb((AnonymousClass4) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueLoad(GoogleApiClient googleApiClient, MediaQueueItem[] mediaQueueItemArr, int i, int i2, JSONObject jSONObject) throws IllegalArgumentException {
        return queueLoad(googleApiClient, mediaQueueItemArr, i, i2, -1L, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueMoveItemToNewIndex(final GoogleApiClient googleApiClient, final int i, final int i2, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.16
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                int i3 = 0;
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    int zzbU = RemoteMediaPlayer.this.zzbU(i);
                    if (zzbU == -1) {
                        zzb((AnonymousClass16) ((MediaChannelResult) zzc(new Status(0))));
                    } else if (i2 < 0) {
                        zzb((AnonymousClass16) ((MediaChannelResult) zzc(new Status(2001, String.format(Locale.ROOT, "Invalid request: Invalid newIndex %d.", Integer.valueOf(i2))))));
                    } else if (zzbU == i2) {
                        zzb((AnonymousClass16) ((MediaChannelResult) zzc(new Status(0))));
                    } else {
                        MediaQueueItem queueItem = RemoteMediaPlayer.this.getMediaStatus().getQueueItem(i2 > zzbU ? i2 + 1 : i2);
                        if (queueItem != null) {
                            i3 = queueItem.getItemId();
                        }
                        RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                        try {
                            RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, new int[]{i}, i3, jSONObject);
                            RemoteMediaPlayer.this.zzapa.zzc(null);
                        } catch (zzza.zzb | IOException e) {
                            zzb((AnonymousClass16) ((MediaChannelResult) zzc(new Status(2100))));
                            RemoteMediaPlayer.this.zzapa.zzc(null);
                        }
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueNext(final GoogleApiClient googleApiClient, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.11
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, 0, -1L, (MediaQueueItem[]) null, 1, (Integer) null, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass11) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queuePrev(final GoogleApiClient googleApiClient, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.10
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, 0, -1L, (MediaQueueItem[]) null, -1, (Integer) null, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass10) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueRemoveItem(final GoogleApiClient googleApiClient, final int i, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.14
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    if (RemoteMediaPlayer.this.zzbU(i) == -1) {
                        zzb((AnonymousClass14) ((MediaChannelResult) zzc(new Status(0))));
                        return;
                    }
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, new int[]{i}, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass14) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueRemoveItems(final GoogleApiClient googleApiClient, final int[] iArr, final JSONObject jSONObject) throws IllegalArgumentException {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, iArr, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass8) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueReorderItems(final GoogleApiClient googleApiClient, final int[] iArr, final int i, final JSONObject jSONObject) throws IllegalArgumentException {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.9
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, iArr, i, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass9) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueSetRepeatMode(final GoogleApiClient googleApiClient, final int i, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.13
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, 0, -1L, (MediaQueueItem[]) null, 0, Integer.valueOf(i), jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass13) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> queueUpdateItems(final GoogleApiClient googleApiClient, final MediaQueueItem[] mediaQueueItemArr, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, 0, -1L, mediaQueueItemArr, 0, (Integer) null, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass7) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> requestStatus(final GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.23
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (IOException e) {
                        zzb((AnonymousClass23) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> seek(GoogleApiClient googleApiClient, long j) {
        return seek(googleApiClient, j, 0, null);
    }

    public PendingResult<MediaChannelResult> seek(GoogleApiClient googleApiClient, long j, int i) {
        return seek(googleApiClient, j, i, null);
    }

    public PendingResult<MediaChannelResult> seek(final GoogleApiClient googleApiClient, final long j, final int i, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.20
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, j, i, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass20) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> setActiveMediaTracks(final GoogleApiClient googleApiClient, final long[] jArr) {
        if (jArr == null) {
            throw new IllegalArgumentException("trackIds cannot be null");
        }
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, jArr);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass2) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public void setOnMetadataUpdatedListener(OnMetadataUpdatedListener onMetadataUpdatedListener) {
        this.zzapd = onMetadataUpdatedListener;
    }

    public void setOnPreloadStatusUpdatedListener(OnPreloadStatusUpdatedListener onPreloadStatusUpdatedListener) {
        this.zzapb = onPreloadStatusUpdatedListener;
    }

    public void setOnQueueStatusUpdatedListener(OnQueueStatusUpdatedListener onQueueStatusUpdatedListener) {
        this.zzapc = onQueueStatusUpdatedListener;
    }

    public void setOnStatusUpdatedListener(OnStatusUpdatedListener onStatusUpdatedListener) {
        this.zzape = onStatusUpdatedListener;
    }

    public PendingResult<MediaChannelResult> setStreamMute(GoogleApiClient googleApiClient, boolean z) {
        return setStreamMute(googleApiClient, z, null);
    }

    public PendingResult<MediaChannelResult> setStreamMute(final GoogleApiClient googleApiClient, final boolean z, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.22
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, z, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass22) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> setStreamVolume(GoogleApiClient googleApiClient, double d) throws IllegalArgumentException {
        return setStreamVolume(googleApiClient, d, null);
    }

    public PendingResult<MediaChannelResult> setStreamVolume(final GoogleApiClient googleApiClient, final double d, final JSONObject jSONObject) throws IllegalArgumentException {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new IllegalArgumentException(new StringBuilder(41).append("Volume cannot be ").append(d).toString());
        }
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.21
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, d, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException | IllegalArgumentException e) {
                        zzb((AnonymousClass21) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> setTextTrackStyle(final GoogleApiClient googleApiClient, final TextTrackStyle textTrackStyle) {
        if (textTrackStyle == null) {
            throw new IllegalArgumentException("trackStyle cannot be null");
        }
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zza(this.zzapH, textTrackStyle);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass3) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> stop(GoogleApiClient googleApiClient) {
        return stop(googleApiClient, null);
    }

    public PendingResult<MediaChannelResult> stop(final GoogleApiClient googleApiClient, final JSONObject jSONObject) {
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.cast.RemoteMediaPlayer.18
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzyq zzyqVar) {
                synchronized (RemoteMediaPlayer.this.zzrJ) {
                    RemoteMediaPlayer.this.zzapa.zzc(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.zzaoZ.zzb(this.zzapH, jSONObject);
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    } catch (zzza.zzb | IOException e) {
                        zzb((AnonymousClass18) ((MediaChannelResult) zzc(new Status(2100))));
                        RemoteMediaPlayer.this.zzapa.zzc(null);
                    }
                }
            }
        });
    }
}
