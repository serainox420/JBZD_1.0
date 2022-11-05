package com.google.android.gms.games.internal.api;

import android.annotation.SuppressLint;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.GamesClientImpl;
/* loaded from: classes2.dex */
public final class EventsImpl implements Events {

    /* loaded from: classes2.dex */
    private static abstract class LoadImpl extends Games.BaseGamesApiMethodImpl<Events.LoadEventsResult> {
        private LoadImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzat */
        public Events.LoadEventsResult zzc(final Status status) {
            return new Events.LoadEventsResult(this) { // from class: com.google.android.gms.games.internal.api.EventsImpl.LoadImpl.1
                @Override // com.google.android.gms.games.event.Events.LoadEventsResult
                public EventBuffer getEvents() {
                    return new EventBuffer(DataHolder.zzcJ(14));
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.common.api.Releasable
                public void release() {
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class UpdateImpl extends Games.BaseGamesApiMethodImpl<Result> {
        private UpdateImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        public Result zzc(final Status status) {
            return new Result(this) { // from class: com.google.android.gms.games.internal.api.EventsImpl.UpdateImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    @Override // com.google.android.gms.games.event.Events
    @SuppressLint({"MissingRemoteException"})
    public void increment(GoogleApiClient googleApiClient, final String str, final int i) {
        GamesClientImpl zzc = Games.zzc(googleApiClient, false);
        if (zzc == null) {
            return;
        }
        if (zzc.isConnected()) {
            zzc.zzo(str, i);
        } else {
            googleApiClient.zzb((GoogleApiClient) new UpdateImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.EventsImpl.3
                @Override // com.google.android.gms.internal.zzaad.zza
                public void zza(GamesClientImpl gamesClientImpl) {
                    gamesClientImpl.zzo(str, i);
                }
            });
        }
    }

    @Override // com.google.android.gms.games.event.Events
    public PendingResult<Events.LoadEventsResult> load(GoogleApiClient googleApiClient, final boolean z) {
        return googleApiClient.zza((GoogleApiClient) new LoadImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.EventsImpl.2
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzd(this, z);
            }
        });
    }

    @Override // com.google.android.gms.games.event.Events
    public PendingResult<Events.LoadEventsResult> loadByIds(GoogleApiClient googleApiClient, final boolean z, final String... strArr) {
        return googleApiClient.zza((GoogleApiClient) new LoadImpl(this, googleApiClient) { // from class: com.google.android.gms.games.internal.api.EventsImpl.1
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza(this, z, strArr);
            }
        });
    }
}
