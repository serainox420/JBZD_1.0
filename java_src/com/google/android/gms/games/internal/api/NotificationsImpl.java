package com.google.android.gms.games.internal.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Notifications;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public final class NotificationsImpl implements Notifications {

    /* renamed from: com.google.android.gms.games.internal.api.NotificationsImpl$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass1 extends Games.BaseGamesApiMethodImpl<Notifications.GameMuteStatusChangeResult> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zze((zzaad.zzb<Notifications.GameMuteStatusChangeResult>) this, (String) null, true);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaC */
        public Notifications.GameMuteStatusChangeResult zzc(final Status status) {
            return new Notifications.GameMuteStatusChangeResult() { // from class: com.google.android.gms.games.internal.api.NotificationsImpl.1.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.NotificationsImpl$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass2 extends Games.BaseGamesApiMethodImpl<Notifications.GameMuteStatusChangeResult> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zze((zzaad.zzb<Notifications.GameMuteStatusChangeResult>) this, (String) null, false);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaC */
        public Notifications.GameMuteStatusChangeResult zzc(final Status status) {
            return new Notifications.GameMuteStatusChangeResult() { // from class: com.google.android.gms.games.internal.api.NotificationsImpl.2.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.NotificationsImpl$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass3 extends Games.BaseGamesApiMethodImpl<Notifications.GameMuteStatusLoadResult> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzn(this, null);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaD */
        public Notifications.GameMuteStatusLoadResult zzc(final Status status) {
            return new Notifications.GameMuteStatusLoadResult() { // from class: com.google.android.gms.games.internal.api.NotificationsImpl.3.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.NotificationsImpl$4  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass4 extends ContactSettingLoadImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzl((zzaad.zzb<Notifications.ContactSettingLoadResult>) this, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.NotificationsImpl$5  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass5 extends ContactSettingUpdateImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzaad.zzb<Status>) this, false, false, (Bundle) null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.NotificationsImpl$6  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass6 extends InboxCountImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzs(this);
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class ContactSettingLoadImpl extends Games.BaseGamesApiMethodImpl<Notifications.ContactSettingLoadResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaE */
        public Notifications.ContactSettingLoadResult zzc(final Status status) {
            return new Notifications.ContactSettingLoadResult(this) { // from class: com.google.android.gms.games.internal.api.NotificationsImpl.ContactSettingLoadImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class ContactSettingUpdateImpl extends Games.BaseGamesApiMethodImpl<Status> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class InboxCountImpl extends Games.BaseGamesApiMethodImpl<Notifications.InboxCountResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaF */
        public Notifications.InboxCountResult zzc(final Status status) {
            return new Notifications.InboxCountResult(this) { // from class: com.google.android.gms.games.internal.api.NotificationsImpl.InboxCountImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    @Override // com.google.android.gms.games.Notifications
    public void clear(GoogleApiClient googleApiClient, int i) {
        GamesClientImpl zzb = Games.zzb(googleApiClient, false);
        if (zzb != null) {
            zzb.zziI(i);
        }
    }

    @Override // com.google.android.gms.games.Notifications
    public void clearAll(GoogleApiClient googleApiClient) {
        clear(googleApiClient, 63);
    }
}
