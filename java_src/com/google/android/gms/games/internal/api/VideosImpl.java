package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.video.CaptureState;
import com.google.android.gms.games.video.VideoCapabilities;
import com.google.android.gms.games.video.VideoConfiguration;
import com.google.android.gms.games.video.Videos;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public final class VideosImpl implements Videos {

    /* renamed from: com.google.android.gms.games.internal.api.VideosImpl$10  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass10 extends CaptureStopImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzq(this);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.VideosImpl$11  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass11 extends CaptureStreamingMetadataImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzl(this);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.VideosImpl$12  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass12 extends CaptureStreamingUrlImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzm(this);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.VideosImpl$13  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass13 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (String) null, (VideoConfiguration) null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.VideosImpl$14  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass14 extends ListVideosImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzc(this, (String) null, 0);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.VideosImpl$15  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass15 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzc((zzaad.zzb<Status>) this, (String) null, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.VideosImpl$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass3 extends CaptureStreamingAvailabilityImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzk(this);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.VideosImpl$4  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass4 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzn(this);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.VideosImpl$6  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass6 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzo(this);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.VideosImpl$7  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass7 extends ListVideosImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzp(this);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.VideosImpl$8  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass8 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzg((zzaad.zzb<Status>) this, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.VideosImpl$9  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass9 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (VideoConfiguration) null, (Videos.CaptureRuntimeErrorCallback) null);
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class CaptureAvailableImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureAvailableResult> {
        private CaptureAvailableImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbg */
        public Videos.CaptureAvailableResult zzc(final Status status) {
            return new Videos.CaptureAvailableResult(this) { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureAvailableImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.games.video.Videos.CaptureAvailableResult
                public boolean isAvailable() {
                    return false;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class CaptureCapabilitiesImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureCapabilitiesResult> {
        private CaptureCapabilitiesImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbh */
        public Videos.CaptureCapabilitiesResult zzc(final Status status) {
            return new Videos.CaptureCapabilitiesResult(this) { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureCapabilitiesImpl.1
                @Override // com.google.android.gms.games.video.Videos.CaptureCapabilitiesResult
                public VideoCapabilities getCapabilities() {
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
    private static abstract class CaptureStateImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureStateResult> {
        private CaptureStateImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbi */
        public Videos.CaptureStateResult zzc(final Status status) {
            return new Videos.CaptureStateResult(this) { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureStateImpl.1
                @Override // com.google.android.gms.games.video.Videos.CaptureStateResult
                public CaptureState getCaptureState() {
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
    private static abstract class CaptureStopImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureStoppedResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbj */
        public Videos.CaptureStoppedResult zzc(final Status status) {
            return new Videos.CaptureStoppedResult(this) { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureStopImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class CaptureStreamingAvailabilityImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureStreamingAvailabilityResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbk */
        public Videos.CaptureStreamingAvailabilityResult zzc(final Status status) {
            return new Videos.CaptureStreamingAvailabilityResult(this) { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureStreamingAvailabilityImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class CaptureStreamingMetadataImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureStreamingMetadataResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbl */
        public Videos.CaptureStreamingMetadataResult zzc(final Status status) {
            return new Videos.CaptureStreamingMetadataResult(this) { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureStreamingMetadataImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class CaptureStreamingUrlImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureStreamingUrlResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbm */
        public Videos.CaptureStreamingUrlResult zzc(final Status status) {
            return new Videos.CaptureStreamingUrlResult(this) { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureStreamingUrlImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.games.video.Videos.CaptureStreamingUrlResult
                public String getUrl() {
                    return null;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class ListVideosImpl extends Games.BaseGamesApiMethodImpl<Videos.ListVideosResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbn */
        public Videos.ListVideosResult zzc(final Status status) {
            return new Videos.ListVideosResult(this) { // from class: com.google.android.gms.games.internal.api.VideosImpl.ListVideosImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    @Override // com.google.android.gms.games.video.Videos
    public PendingResult<Videos.CaptureCapabilitiesResult> getCaptureCapabilities(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new CaptureCapabilitiesImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.VideosImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzi(this);
            }
        });
    }

    @Override // com.google.android.gms.games.video.Videos
    public Intent getCaptureOverlayIntent(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzFj();
    }

    @Override // com.google.android.gms.games.video.Videos
    public PendingResult<Videos.CaptureStateResult> getCaptureState(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new CaptureStateImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.VideosImpl.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzj(this);
            }
        });
    }

    @Override // com.google.android.gms.games.video.Videos
    public PendingResult<Videos.CaptureAvailableResult> isCaptureAvailable(GoogleApiClient googleApiClient, final int i) {
        return googleApiClient.zza((GoogleApiClient) new CaptureAvailableImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.VideosImpl.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzb(this, i);
            }
        });
    }

    @Override // com.google.android.gms.games.video.Videos
    public boolean isCaptureSupported(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzFk();
    }

    @Override // com.google.android.gms.games.video.Videos
    public void registerCaptureOverlayStateChangedListener(GoogleApiClient googleApiClient, Videos.CaptureOverlayStateListener captureOverlayStateListener) {
        GamesClientImpl zzb = Games.zzb(googleApiClient, false);
        if (zzb != null) {
            zzb.zze(googleApiClient.zzr(captureOverlayStateListener));
        }
    }

    @Override // com.google.android.gms.games.video.Videos
    public void unregisterCaptureOverlayStateChangedListener(GoogleApiClient googleApiClient) {
        GamesClientImpl zzb = Games.zzb(googleApiClient, false);
        if (zzb != null) {
            zzb.zzFl();
        }
    }
}
