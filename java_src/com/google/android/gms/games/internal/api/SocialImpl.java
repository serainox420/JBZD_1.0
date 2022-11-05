package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.api.PlayersImpl;
import com.google.android.gms.games.social.Social;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public class SocialImpl implements Social {

    /* renamed from: com.google.android.gms.games.internal.api.SocialImpl$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass1 extends SocialInviteUpdateImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzo(this, (String) null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.SocialImpl$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass2 extends SocialInviteUpdateImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzp(this, (String) null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.SocialImpl$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass3 extends SocialInviteUpdateImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzr(this, null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.SocialImpl$4  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass4 extends SocialInviteUpdateImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzq(this, (String) null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.SocialImpl$5  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass5 extends LoadSocialInvitesImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzc(this, 0);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.SocialImpl$6  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass6 extends PlayersImpl.LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zze(this, 0, false, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.SocialImpl$7  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass7 extends PlayersImpl.LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zze(this, 0, true, false);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.SocialImpl$8  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass8 extends PlayersImpl.LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzs(this, null);
        }
    }

    /* renamed from: com.google.android.gms.games.internal.api.SocialImpl$9  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass9 extends PlayersImpl.LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzf((zzaad.zzb<Players.LoadPlayersResult>) this, (String) null, false);
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class LoadSocialInvitesImpl extends Games.BaseGamesApiMethodImpl<Social.LoadInvitesResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaX */
        public Social.LoadInvitesResult zzc(final Status status) {
            return new Social.LoadInvitesResult(this) { // from class: com.google.android.gms.games.internal.api.SocialImpl.LoadSocialInvitesImpl.1
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
    private static abstract class SocialInviteUpdateImpl extends Games.BaseGamesApiMethodImpl<Social.InviteUpdateResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzaY */
        public Social.InviteUpdateResult zzc(final Status status) {
            return new Social.InviteUpdateResult(this) { // from class: com.google.android.gms.games.internal.api.SocialImpl.SocialInviteUpdateImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }
}
