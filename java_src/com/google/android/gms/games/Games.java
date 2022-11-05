package com.google.android.gms.games;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.auth.api.signin.GoogleSignInOptionsExtension;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.appcontent.AppContents;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.api.AchievementsImpl;
import com.google.android.gms.games.internal.api.AppContentsImpl;
import com.google.android.gms.games.internal.api.EventsImpl;
import com.google.android.gms.games.internal.api.GamesMetadataImpl;
import com.google.android.gms.games.internal.api.InvitationsImpl;
import com.google.android.gms.games.internal.api.LeaderboardsImpl;
import com.google.android.gms.games.internal.api.MultiplayerImpl;
import com.google.android.gms.games.internal.api.NotificationsImpl;
import com.google.android.gms.games.internal.api.PlayersImpl;
import com.google.android.gms.games.internal.api.QuestsImpl;
import com.google.android.gms.games.internal.api.RealTimeMultiplayerImpl;
import com.google.android.gms.games.internal.api.RequestsImpl;
import com.google.android.gms.games.internal.api.SnapshotsImpl;
import com.google.android.gms.games.internal.api.SocialImpl;
import com.google.android.gms.games.internal.api.StatsImpl;
import com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl;
import com.google.android.gms.games.internal.api.VideosImpl;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.quest.Quests;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.snapshot.Snapshots;
import com.google.android.gms.games.social.Social;
import com.google.android.gms.games.stats.Stats;
import com.google.android.gms.games.video.Videos;
import com.google.android.gms.internal.zzaad;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class Games {
    public static final String EXTRA_PLAYER_IDS = "players";
    public static final String EXTRA_STATUS = "status";
    static final Api.zzf<GamesClientImpl> zzaid = new Api.zzf<>();
    private static final Api.zza<GamesClientImpl, GamesOptions> zzaie = new GamesClientBuilder() { // from class: com.google.android.gms.games.Games.1
        @Override // com.google.android.gms.common.api.Api.zzd
        /* renamed from: zza */
        public List<Scope> zzp(GamesOptions gamesOptions) {
            return Collections.singletonList(Games.SCOPE_GAMES);
        }
    };
    private static final Api.zza<GamesClientImpl, GamesOptions> zzaXQ = new GamesClientBuilder() { // from class: com.google.android.gms.games.Games.2
        @Override // com.google.android.gms.common.api.Api.zzd
        /* renamed from: zza */
        public List<Scope> zzp(GamesOptions gamesOptions) {
            return Collections.singletonList(Games.zzaXS);
        }
    };
    public static final Scope SCOPE_GAMES = new Scope(Scopes.GAMES);
    public static final Scope zzaXR = new Scope("https://www.googleapis.com/auth/games_lite");
    public static final Api<GamesOptions> API = new Api<>("Games.API", zzaie, zzaid);
    public static final Scope zzaXS = new Scope("https://www.googleapis.com/auth/games.firstparty");
    public static final Api<GamesOptions> zzaXT = new Api<>("Games.API_1P", zzaXQ, zzaid);
    public static final GamesMetadata GamesMetadata = new GamesMetadataImpl();
    public static final Achievements Achievements = new AchievementsImpl();
    public static final AppContents zzaXU = new AppContentsImpl();
    public static final Events Events = new EventsImpl();
    public static final Leaderboards Leaderboards = new LeaderboardsImpl();
    public static final Invitations Invitations = new InvitationsImpl();
    public static final TurnBasedMultiplayer TurnBasedMultiplayer = new TurnBasedMultiplayerImpl();
    public static final RealTimeMultiplayer RealTimeMultiplayer = new RealTimeMultiplayerImpl();
    public static final Multiplayer zzaXV = new MultiplayerImpl();
    public static final Players Players = new PlayersImpl();
    public static final Notifications Notifications = new NotificationsImpl();
    public static final Quests Quests = new QuestsImpl();
    public static final Requests Requests = new RequestsImpl();
    public static final Snapshots Snapshots = new SnapshotsImpl();
    public static final Stats Stats = new StatsImpl();
    public static final Videos Videos = new VideosImpl();
    public static final Social zzaXW = new SocialImpl();

    /* renamed from: com.google.android.gms.games.Games$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    final class AnonymousClass3 extends GetTokenImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzf(this);
        }
    }

    /* renamed from: com.google.android.gms.games.Games$6  reason: invalid class name */
    /* loaded from: classes2.dex */
    final class AnonymousClass6 extends BaseGamesApiMethodImpl<Status> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((Account) null, (byte[]) null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    /* renamed from: com.google.android.gms.games.Games$7  reason: invalid class name */
    /* loaded from: classes2.dex */
    final class AnonymousClass7 extends BaseGamesApiMethodImpl<Status> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzg((Account) null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class BaseGamesApiMethodImpl<R extends Result> extends zzaad.zza<R, GamesClientImpl> {
        public BaseGamesApiMethodImpl(GoogleApiClient googleApiClient) {
            super(Games.zzaid, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((BaseGamesApiMethodImpl<R>) ((Result) obj));
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class GamesClientBuilder extends Api.zza<GamesClientImpl, GamesOptions> {
        private GamesClientBuilder() {
        }

        @Override // com.google.android.gms.common.api.Api.zzd
        public int getPriority() {
            return 1;
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public GamesClientImpl zza(Context context, Looper looper, zzg zzgVar, GamesOptions gamesOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new GamesClientImpl(context, looper, zzgVar, gamesOptions == null ? new GamesOptions.Builder().build() : gamesOptions, connectionCallbacks, onConnectionFailedListener);
        }
    }

    /* loaded from: classes2.dex */
    public static final class GamesOptions implements GoogleSignInOptionsExtension, Api.ApiOptions.Optional {
        public final boolean zzaXY;
        public final boolean zzaXZ;
        public final int zzaYa;
        public final boolean zzaYb;
        public final int zzaYc;
        public final String zzaYd;
        public final ArrayList<String> zzaYe;
        public final boolean zzaYf;
        public final boolean zzaYg;
        public final boolean zzaYh;

        /* loaded from: classes2.dex */
        public static final class Builder {
            boolean zzaXY;
            boolean zzaXZ;
            int zzaYa;
            boolean zzaYb;
            int zzaYc;
            String zzaYd;
            ArrayList<String> zzaYe;
            boolean zzaYf;
            boolean zzaYg;
            boolean zzaYh;

            private Builder() {
                this.zzaXY = false;
                this.zzaXZ = true;
                this.zzaYa = 17;
                this.zzaYb = false;
                this.zzaYc = 4368;
                this.zzaYd = null;
                this.zzaYe = new ArrayList<>();
                this.zzaYf = false;
                this.zzaYg = false;
                this.zzaYh = false;
            }

            public GamesOptions build() {
                return new GamesOptions(false, this.zzaXZ, this.zzaYa, false, this.zzaYc, null, this.zzaYe, false, false, false);
            }

            public Builder setSdkVariant(int i) {
                this.zzaYc = i;
                return this;
            }

            public Builder setShowConnectingPopup(boolean z) {
                this.zzaXZ = z;
                this.zzaYa = 17;
                return this;
            }

            public Builder setShowConnectingPopup(boolean z, int i) {
                this.zzaXZ = z;
                this.zzaYa = i;
                return this;
            }
        }

        private GamesOptions(boolean z, boolean z2, int i, boolean z3, int i2, String str, ArrayList<String> arrayList, boolean z4, boolean z5, boolean z6) {
            this.zzaXY = z;
            this.zzaXZ = z2;
            this.zzaYa = i;
            this.zzaYb = z3;
            this.zzaYc = i2;
            this.zzaYd = str;
            this.zzaYe = arrayList;
            this.zzaYf = z4;
            this.zzaYg = z5;
            this.zzaYh = z6;
        }

        public static Builder builder() {
            return new Builder();
        }

        @Override // com.google.android.gms.auth.api.signin.GoogleSignInOptionsExtension
        public Bundle toBundle() {
            return zzDP();
        }

        public Bundle zzDP() {
            Bundle bundle = new Bundle();
            bundle.putBoolean("com.google.android.gms.games.key.isHeadless", this.zzaXY);
            bundle.putBoolean("com.google.android.gms.games.key.showConnectingPopup", this.zzaXZ);
            bundle.putInt("com.google.android.gms.games.key.connectingPopupGravity", this.zzaYa);
            bundle.putBoolean("com.google.android.gms.games.key.retryingSignIn", this.zzaYb);
            bundle.putInt("com.google.android.gms.games.key.sdkVariant", this.zzaYc);
            bundle.putString("com.google.android.gms.games.key.forceResolveAccountKey", this.zzaYd);
            bundle.putStringArrayList("com.google.android.gms.games.key.proxyApis", this.zzaYe);
            bundle.putBoolean("com.google.android.gms.games.key.requireGooglePlus", this.zzaYf);
            bundle.putBoolean("com.google.android.gms.games.key.unauthenticated", this.zzaYg);
            bundle.putBoolean("com.google.android.gms.games.key.skipWelcomePopup", this.zzaYh);
            return bundle;
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class GetServerAuthCodeImpl extends BaseGamesApiMethodImpl<GetServerAuthCodeResult> {
        private GetServerAuthCodeImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzak */
        public GetServerAuthCodeResult zzc(final Status status) {
            return new GetServerAuthCodeResult(this) { // from class: com.google.android.gms.games.Games.GetServerAuthCodeImpl.1
                @Override // com.google.android.gms.games.Games.GetServerAuthCodeResult
                public String getCode() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface GetServerAuthCodeResult extends Result {
        String getCode();
    }

    /* loaded from: classes2.dex */
    private static abstract class GetTokenImpl extends BaseGamesApiMethodImpl<GetTokenResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzal */
        public GetTokenResult zzc(final Status status) {
            return new GetTokenResult(this) { // from class: com.google.android.gms.games.Games.GetTokenImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    public interface GetTokenResult extends Result {
    }

    /* loaded from: classes2.dex */
    private static abstract class SignOutImpl extends BaseGamesApiMethodImpl<Status> {
        private SignOutImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class StatusImpl extends BaseGamesApiMethodImpl<Status> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    private Games() {
    }

    public static String getAppId(GoogleApiClient googleApiClient) {
        return zzi(googleApiClient).zzke();
    }

    public static String getCurrentAccountName(GoogleApiClient googleApiClient) {
        return zzi(googleApiClient).zzEP();
    }

    @Deprecated
    public static PendingResult<GetServerAuthCodeResult> getGamesServerAuthCode(GoogleApiClient googleApiClient, final String str) {
        zzac.zzh(str, "Please provide a valid serverClientId");
        return googleApiClient.zzb((GoogleApiClient) new GetServerAuthCodeImpl(googleApiClient) { // from class: com.google.android.gms.games.Games.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzb(str, this);
            }
        });
    }

    public static int getSdkVariant(GoogleApiClient googleApiClient) {
        return zzi(googleApiClient).zzFc();
    }

    public static Intent getSettingsIntent(GoogleApiClient googleApiClient) {
        return zzi(googleApiClient).zzFb();
    }

    public static void setGravityForPopups(GoogleApiClient googleApiClient, int i) {
        GamesClientImpl zzb = zzb(googleApiClient, false);
        if (zzb != null) {
            zzb.zziH(i);
        }
    }

    public static void setViewForPopups(GoogleApiClient googleApiClient, View view) {
        zzac.zzw(view);
        GamesClientImpl zzb = zzb(googleApiClient, false);
        if (zzb != null) {
            zzb.zzv(view);
        }
    }

    public static PendingResult<Status> signOut(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new SignOutImpl(googleApiClient) { // from class: com.google.android.gms.games.Games.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzh(this);
            }
        });
    }

    public static GamesClientImpl zzb(GoogleApiClient googleApiClient, boolean z) {
        zzac.zzb(googleApiClient != null, "GoogleApiClient parameter is required.");
        zzac.zza(googleApiClient.isConnected(), "GoogleApiClient must be connected.");
        return zzc(googleApiClient, z);
    }

    public static GamesClientImpl zzc(GoogleApiClient googleApiClient, boolean z) {
        zzac.zza(googleApiClient.zza(API), "GoogleApiClient is not configured to use the Games Api. Pass Games.API into GoogleApiClient.Builder#addApi() to use this feature.");
        boolean hasConnectedApi = googleApiClient.hasConnectedApi(API);
        if (!z || hasConnectedApi) {
            if (!hasConnectedApi) {
                return null;
            }
            return (GamesClientImpl) googleApiClient.zza(zzaid);
        }
        throw new IllegalStateException("GoogleApiClient has an optional Games.API and is not connected to Games. Use GoogleApiClient.hasConnectedApi(Games.API) to guard this call.");
    }

    public static GamesClientImpl zzi(GoogleApiClient googleApiClient) {
        return zzb(googleApiClient, true);
    }
}
