package com.google.android.gms.games.internal;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.drive.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.games.Notifications;
import com.google.android.gms.games.OnNearbyPlayerDetectedListener;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.AchievementEntity;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.appcontent.AppContents;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.IGamesService;
import com.google.android.gms.games.internal.constants.RequestType;
import com.google.android.gms.games.internal.events.EventIncrementCache;
import com.google.android.gms.games.internal.events.EventIncrementManager;
import com.google.android.gms.games.internal.experience.ExperienceEventBuffer;
import com.google.android.gms.games.internal.game.GameInstanceBuffer;
import com.google.android.gms.games.internal.game.GameSearchSuggestionBuffer;
import com.google.android.gms.games.internal.player.ProfileSettingsEntity;
import com.google.android.gms.games.internal.player.StockProfileImageBuffer;
import com.google.android.gms.games.internal.request.RequestUpdateOutcomes;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardEntity;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScoreEntity;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomBuffer;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestBuffer;
import com.google.android.gms.games.quest.QuestEntity;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.games.quest.Quests;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotContentsEntity;
import com.google.android.gms.games.snapshot.SnapshotEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.SnapshotMetadataChangeEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import com.google.android.gms.games.snapshot.Snapshots;
import com.google.android.gms.games.social.OnSocialInviteUpdateReceivedListener;
import com.google.android.gms.games.social.Social;
import com.google.android.gms.games.social.SocialInvite;
import com.google.android.gms.games.social.SocialInviteBuffer;
import com.google.android.gms.games.social.SocialInviteEntity;
import com.google.android.gms.games.stats.PlayerStats;
import com.google.android.gms.games.stats.PlayerStatsBuffer;
import com.google.android.gms.games.stats.PlayerStatsEntity;
import com.google.android.gms.games.stats.Stats;
import com.google.android.gms.games.video.CaptureState;
import com.google.android.gms.games.video.VideoBuffer;
import com.google.android.gms.games.video.VideoCapabilities;
import com.google.android.gms.games.video.VideoConfiguration;
import com.google.android.gms.games.video.Videos;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaan;
import com.google.android.gms.internal.zzaao;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzbat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public final class GamesClientImpl extends zzl<IGamesService> {
    private final long zzaZA;
    private final Games.GamesOptions zzaZB;
    private boolean zzaZC;
    EventIncrementManager zzaZt;
    private final String zzaZu;
    private PlayerEntity zzaZv;
    private GameEntity zzaZw;
    private final PopupManager zzaZx;
    private boolean zzaZy;
    private final Binder zzaZz;

    /* loaded from: classes2.dex */
    private static abstract class AbstractPeerStatusNotifier extends AbstractRoomStatusNotifier {
        private final ArrayList<String> zzaZE;

        AbstractPeerStatusNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder);
            this.zzaZE = new ArrayList<>();
            for (String str : strArr) {
                this.zzaZE.add(str);
            }
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            zza(roomStatusUpdateListener, room, this.zzaZE);
        }

        protected abstract void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList);
    }

    /* loaded from: classes2.dex */
    private static abstract class AbstractRoomNotifier extends zzaan<RoomUpdateListener> {
        AbstractRoomNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaan
        public void zza(RoomUpdateListener roomUpdateListener, DataHolder dataHolder) {
            zza(roomUpdateListener, GamesClientImpl.zzai(dataHolder), dataHolder.getStatusCode());
        }

        protected abstract void zza(RoomUpdateListener roomUpdateListener, Room room, int i);
    }

    /* loaded from: classes2.dex */
    private static abstract class AbstractRoomStatusNotifier extends zzaan<RoomStatusUpdateListener> {
        AbstractRoomStatusNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaan
        public void zza(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            zza(roomStatusUpdateListener, GamesClientImpl.zzai(dataHolder));
        }

        protected abstract void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room);
    }

    /* loaded from: classes2.dex */
    private static final class AcceptFriendInviteFirstPartyBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Social.InviteUpdateResult> zzaGN;

        AcceptFriendInviteFirstPartyBinderCallback(zzaad.zzb<Social.InviteUpdateResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzaa(DataHolder dataHolder) {
            this.zzaGN.setResult(new InviteUpdateResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class AcceptQuestResultImpl extends GamesDataHolderResult implements Quests.AcceptQuestResult {
        private final Quest zzaZF;

        AcceptQuestResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            QuestBuffer questBuffer = new QuestBuffer(dataHolder);
            try {
                if (questBuffer.getCount() > 0) {
                    this.zzaZF = new QuestEntity(questBuffer.mo547get(0));
                } else {
                    this.zzaZF = null;
                }
            } finally {
                questBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.quest.Quests.AcceptQuestResult
        public Quest getQuest() {
            return this.zzaZF;
        }
    }

    /* loaded from: classes2.dex */
    private static final class AchievementUpdatedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Achievements.UpdateAchievementResult> zzaGN;

        AchievementUpdatedBinderCallback(zzaad.zzb<Achievements.UpdateAchievementResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzi(int i, String str) {
            this.zzaGN.setResult(new UpdateAchievementResultImpl(i, str));
        }
    }

    /* loaded from: classes2.dex */
    private static final class AchievementsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Achievements.LoadAchievementsResult> zzaGN;

        AchievementsLoadedBinderCallback(zzaad.zzb<Achievements.LoadAchievementsResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzh(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadAchievementsResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class AppContentLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<AppContents.LoadAppContentResult> zzaZG;

        public AppContentLoadedBinderCallbacks(zzaad.zzb<AppContents.LoadAppContentResult> zzbVar) {
            this.zzaZG = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(DataHolder[] dataHolderArr) {
            this.zzaZG.setResult(new LoadAppContentsResultImpl(dataHolderArr));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CancelFriendInviteFirstPartyBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Social.InviteUpdateResult> zzaGN;

        CancelFriendInviteFirstPartyBinderCallback(zzaad.zzb<Social.InviteUpdateResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzae(DataHolder dataHolder) {
            this.zzaGN.setResult(new InviteUpdateResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CancelMatchResultImpl implements TurnBasedMultiplayer.CancelMatchResult {
        private final String zzaZH;
        private final Status zzair;

        CancelMatchResultImpl(Status status, String str) {
            this.zzair = status;
            this.zzaZH = str;
        }

        @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult
        public String getMatchId() {
            return this.zzaZH;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureAvailableBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Videos.CaptureAvailableResult> zzaGN;

        CaptureAvailableBinderCallback(zzaad.zzb<Videos.CaptureAvailableResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzd(int i, boolean z) {
            this.zzaGN.setResult(new CaptureAvailableResultImpl(new Status(i), z));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureAvailableResultImpl implements Videos.CaptureAvailableResult {
        private final boolean zzaZI;
        private final Status zzair;

        CaptureAvailableResultImpl(Status status, boolean z) {
            this.zzair = status;
            this.zzaZI = z;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }

        @Override // com.google.android.gms.games.video.Videos.CaptureAvailableResult
        public boolean isAvailable() {
            return this.zzaZI;
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureCapabilitiesBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Videos.CaptureCapabilitiesResult> zzaGN;

        CaptureCapabilitiesBinderCallback(zzaad.zzb<Videos.CaptureCapabilitiesResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(int i, VideoCapabilities videoCapabilities) {
            this.zzaGN.setResult(new CaptureCapabilitiesResultImpl(new Status(i), videoCapabilities));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureCapabilitiesResultImpl implements Videos.CaptureCapabilitiesResult {
        private final VideoCapabilities zzaZJ;
        private final Status zzair;

        CaptureCapabilitiesResultImpl(Status status, VideoCapabilities videoCapabilities) {
            this.zzair = status;
            this.zzaZJ = videoCapabilities;
        }

        @Override // com.google.android.gms.games.video.Videos.CaptureCapabilitiesResult
        public VideoCapabilities getCapabilities() {
            return this.zzaZJ;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureLaunchGameAndOverlayBinderCallback extends AbstractGamesCallbacks {
        private final Games.BaseGamesApiMethodImpl<Status> zzaZK;

        CaptureLaunchGameAndOverlayBinderCallback(Games.BaseGamesApiMethodImpl<Status> baseGamesApiMethodImpl) {
            this.zzaZK = (Games.BaseGamesApiMethodImpl) zzac.zzb(baseGamesApiMethodImpl, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzam(Status status) {
            this.zzaZK.zzb((Games.BaseGamesApiMethodImpl<Status>) status);
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zziz(int i) {
            this.zzaZK.zzb((Games.BaseGamesApiMethodImpl<Status>) new Status(i));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureOverlayStateBinderCallback extends AbstractGamesCallbacks {
        private final zzabh<Videos.CaptureOverlayStateListener> zzaNm;

        CaptureOverlayStateBinderCallback(zzabh<Videos.CaptureOverlayStateListener> zzabhVar) {
            this.zzaNm = (zzabh) zzac.zzb(zzabhVar, "Callback must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onCaptureOverlayStateChanged(int i) {
            this.zzaNm.zza(new CaptureOverlayStateChangedNotifier(i));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureOverlayStateChangedNotifier implements zzabh.zzc<Videos.CaptureOverlayStateListener> {
        private final int zzaZL;

        CaptureOverlayStateChangedNotifier(int i) {
            this.zzaZL = i;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(Videos.CaptureOverlayStateListener captureOverlayStateListener) {
            captureOverlayStateListener.onCaptureOverlayStateChanged(this.zzaZL);
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class CapturePausedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Status> zzaGN;

        public CapturePausedBinderCallback(zzaad.zzb<Status> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zziF(int i) {
            this.zzaGN.setResult(new Status(i));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStartedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Status> zzaGN;
        private final Videos.CaptureRuntimeErrorCallback zzaZM;

        public CaptureStartedBinderCallbacks(zzaad.zzb<Status> zzbVar, Videos.CaptureRuntimeErrorCallback captureRuntimeErrorCallback) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
            this.zzaZM = (Videos.CaptureRuntimeErrorCallback) zzac.zzb(captureRuntimeErrorCallback, "Callback must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzap(Status status) {
            this.zzaGN.setResult(status);
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zziE(int i) {
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStateBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Videos.CaptureStateResult> zzaGN;

        public CaptureStateBinderCallbacks(zzaad.zzb<Videos.CaptureStateResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzi(int i, Bundle bundle) {
            this.zzaGN.setResult(new CaptureStateResultImpl(new Status(i), CaptureState.zzC(bundle)));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStateResultImpl implements Videos.CaptureStateResult {
        private final CaptureState zzaZN;
        private final Status zzair;

        CaptureStateResultImpl(Status status, CaptureState captureState) {
            this.zzair = status;
            this.zzaZN = captureState;
        }

        @Override // com.google.android.gms.games.video.Videos.CaptureStateResult
        public CaptureState getCaptureState() {
            return this.zzaZN;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStoppedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Videos.CaptureStoppedResult> zzaGN;

        public CaptureStoppedBinderCallbacks(zzaad.zzb<Videos.CaptureStoppedResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(int i, Uri uri) {
            this.zzaGN.setResult(new CaptureStoppedResultImpl(new Status(i), uri));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStoppedResultImpl implements Videos.CaptureStoppedResult {
        private final Uri zzaZO;
        private final Status zzair;

        CaptureStoppedResultImpl(Status status, Uri uri) {
            this.zzair = status;
            this.zzaZO = uri;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStreamingAvailabilityBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Videos.CaptureStreamingAvailabilityResult> zzaGN;

        CaptureStreamingAvailabilityBinderCallback(zzaad.zzb<Videos.CaptureStreamingAvailabilityResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(int i, boolean z, boolean z2) {
            this.zzaGN.setResult(new CaptureStreamingAvailabilityResultImpl(new Status(i), z, z2));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStreamingAvailabilityResultImpl implements Videos.CaptureStreamingAvailabilityResult {
        private final boolean zzaZI;
        private final boolean zzaZP;
        private final Status zzair;

        CaptureStreamingAvailabilityResultImpl(Status status, boolean z, boolean z2) {
            this.zzair = status;
            this.zzaZI = z;
            this.zzaZP = z2;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStreamingEnabledBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Status> zzaGN;

        CaptureStreamingEnabledBinderCallback(zzaad.zzb<Status> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zziA(int i) {
            this.zzaGN.setResult(new Status(i));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStreamingEnabledResultImpl implements Result {
        private final Status zzair;

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStreamingMetadataBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Videos.CaptureStreamingMetadataResult> zzaGN;

        CaptureStreamingMetadataBinderCallback(zzaad.zzb<Videos.CaptureStreamingMetadataResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzd(int i, String str, String str2) {
            this.zzaGN.setResult(new CaptureStreamingMetadataResultImpl(new Status(i), str, str2));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStreamingMetadataResultImpl implements Videos.CaptureStreamingMetadataResult {
        private final String zzade;
        private final Status zzair;
        private final String zzamJ;

        CaptureStreamingMetadataResultImpl(Status status, String str, String str2) {
            this.zzair = status;
            this.zzamJ = str;
            this.zzade = str2;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStreamingUrlBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Videos.CaptureStreamingUrlResult> zzaGN;

        CaptureStreamingUrlBinderCallback(zzaad.zzb<Videos.CaptureStreamingUrlResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzl(int i, String str) {
            this.zzaGN.setResult(new CaptureStreamingUrlResultImpl(new Status(i), str));
        }
    }

    /* loaded from: classes2.dex */
    private static final class CaptureStreamingUrlResultImpl implements Videos.CaptureStreamingUrlResult {
        private final String zzE;
        private final Status zzair;

        CaptureStreamingUrlResultImpl(Status status, String str) {
            this.zzair = status;
            this.zzE = str;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }

        @Override // com.google.android.gms.games.video.Videos.CaptureStreamingUrlResult
        public String getUrl() {
            return this.zzE;
        }
    }

    /* loaded from: classes2.dex */
    private static final class ClaimMilestoneResultImpl extends GamesDataHolderResult implements Quests.ClaimMilestoneResult {
        private final Quest zzaZF;
        private final Milestone zzaZQ;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ClaimMilestoneResultImpl(DataHolder dataHolder, String str) {
            super(dataHolder);
            QuestBuffer questBuffer = new QuestBuffer(dataHolder);
            try {
                if (questBuffer.getCount() > 0) {
                    this.zzaZF = new QuestEntity(questBuffer.mo547get(0));
                    List<Milestone> zzGw = this.zzaZF.zzGw();
                    int size = zzGw.size();
                    for (int i = 0; i < size; i++) {
                        if (zzGw.get(i).getMilestoneId().equals(str)) {
                            this.zzaZQ = zzGw.get(i);
                            return;
                        }
                    }
                    this.zzaZQ = null;
                } else {
                    this.zzaZQ = null;
                    this.zzaZF = null;
                }
            } finally {
                questBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.quest.Quests.ClaimMilestoneResult
        public Milestone getMilestone() {
            return this.zzaZQ;
        }

        @Override // com.google.android.gms.games.quest.Quests.ClaimMilestoneResult
        public Quest getQuest() {
            return this.zzaZF;
        }
    }

    /* loaded from: classes2.dex */
    private static final class CommitSnapshotResultImpl extends GamesDataHolderResult implements Snapshots.CommitSnapshotResult {
        private final SnapshotMetadata zzaZR;

        CommitSnapshotResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            SnapshotMetadataBuffer snapshotMetadataBuffer = new SnapshotMetadataBuffer(dataHolder);
            try {
                if (snapshotMetadataBuffer.getCount() > 0) {
                    this.zzaZR = new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.mo547get(0));
                } else {
                    this.zzaZR = null;
                }
            } finally {
                snapshotMetadataBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.CommitSnapshotResult
        public SnapshotMetadata getSnapshotMetadata() {
            return this.zzaZR;
        }
    }

    /* loaded from: classes2.dex */
    private static final class ConnectedToRoomNotifier extends AbstractRoomStatusNotifier {
        ConnectedToRoomNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomStatusNotifier
        public void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onConnectedToRoom(room);
        }
    }

    /* loaded from: classes2.dex */
    private static final class ContactSettingLoadResultImpl extends GamesDataHolderResult implements Notifications.ContactSettingLoadResult {
        ContactSettingLoadResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    /* loaded from: classes2.dex */
    private static final class ContactSettingsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Notifications.ContactSettingLoadResult> zzaGN;

        ContactSettingsLoadedBinderCallback(zzaad.zzb<Notifications.ContactSettingLoadResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzI(DataHolder dataHolder) {
            this.zzaGN.setResult(new ContactSettingLoadResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class ContactSettingsUpdatedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Status> zzaGN;

        ContactSettingsUpdatedBinderCallback(zzaad.zzb<Status> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzix(int i) {
            this.zzaGN.setResult(GamesStatusCodes.zzik(i));
        }
    }

    /* loaded from: classes2.dex */
    private static final class DeletePlayerBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Status> zzaGN;

        DeletePlayerBinderCallback(zzaad.zzb<Status> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zziB(int i) {
            this.zzaGN.setResult(new Status(i));
        }
    }

    /* loaded from: classes2.dex */
    private static final class DeleteSnapshotResultImpl implements Snapshots.DeleteSnapshotResult {
        private final String zzaZS;
        private final Status zzair;

        DeleteSnapshotResultImpl(int i, String str) {
            this.zzair = GamesStatusCodes.zzik(i);
            this.zzaZS = str;
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult
        public String getSnapshotId() {
            return this.zzaZS;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class DisconnectedFromRoomNotifier extends AbstractRoomStatusNotifier {
        DisconnectedFromRoomNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomStatusNotifier
        public void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onDisconnectedFromRoom(room);
        }
    }

    /* loaded from: classes2.dex */
    private static final class EventsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Events.LoadEventsResult> zzaGN;

        EventsLoadedBinderCallback(zzaad.zzb<Events.LoadEventsResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzi(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadEventResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private class GameClientEventIncrementCache extends EventIncrementCache {
        public GameClientEventIncrementCache() {
            super(GamesClientImpl.this.getContext().getMainLooper(), 1000);
        }

        @Override // com.google.android.gms.games.internal.events.EventIncrementCache
        protected void zzr(String str, int i) {
            try {
                if (GamesClientImpl.this.isConnected()) {
                    ((IGamesService) GamesClientImpl.this.zzxD()).zzo(str, i);
                } else {
                    GamesLog.zzG("GamesClientImpl", new StringBuilder(String.valueOf(str).length() + 89).append("Unable to increment event ").append(str).append(" by ").append(i).append(" because the games client is no longer connected").toString());
                }
            } catch (RemoteException e) {
                GamesClientImpl.this.zzd(e);
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class GameInstancesLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<GamesMetadata.LoadGameInstancesResult> zzaGN;

        GameInstancesLoadedBinderCallback(zzaad.zzb<GamesMetadata.LoadGameInstancesResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzp(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadGameInstancesResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class GameMuteStatusChangeResultImpl implements Notifications.GameMuteStatusChangeResult {
        private final String zzaZT;
        private final boolean zzaaD;
        private final Status zzair;

        public GameMuteStatusChangeResultImpl(int i, String str, boolean z) {
            this.zzair = GamesStatusCodes.zzik(i);
            this.zzaZT = str;
            this.zzaaD = z;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class GameMuteStatusChangedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Notifications.GameMuteStatusChangeResult> zzaGN;

        GameMuteStatusChangedBinderCallback(zzaad.zzb<Notifications.GameMuteStatusChangeResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(int i, String str, boolean z) {
            this.zzaGN.setResult(new GameMuteStatusChangeResultImpl(i, str, z));
        }
    }

    /* loaded from: classes2.dex */
    private static final class GameMuteStatusLoadResultImpl implements Notifications.GameMuteStatusLoadResult {
        private final String zzaZT;
        private final boolean zzaaD;
        private final Status zzair;

        public GameMuteStatusLoadResultImpl(DataHolder dataHolder) {
            try {
                this.zzair = GamesStatusCodes.zzik(dataHolder.getStatusCode());
                if (dataHolder.getCount() > 0) {
                    this.zzaZT = dataHolder.zzd("external_game_id", 0, 0);
                    this.zzaaD = dataHolder.zze("muted", 0, 0);
                } else {
                    this.zzaZT = null;
                    this.zzaaD = false;
                }
            } finally {
                dataHolder.close();
            }
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class GameMuteStatusLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Notifications.GameMuteStatusLoadResult> zzaGN;

        GameMuteStatusLoadedBinderCallback(zzaad.zzb<Notifications.GameMuteStatusLoadResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzG(DataHolder dataHolder) {
            this.zzaGN.setResult(new GameMuteStatusLoadResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class GameSearchSuggestionsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<GamesMetadata.LoadGameSearchSuggestionsResult> zzaGN;

        GameSearchSuggestionsLoadedBinderCallback(zzaad.zzb<GamesMetadata.LoadGameSearchSuggestionsResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzq(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadGameSearchSuggestionsResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class GamerProfileUpdatedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Players.UpdateGamerProfileResult> zzaGN;

        GamerProfileUpdatedBinderCallback(zzaad.zzb<Players.UpdateGamerProfileResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzh(int i, Bundle bundle) {
            this.zzaGN.setResult(new UpdateGamerProfileResultImpl(i, bundle));
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class GamesDataHolderResult extends zzaao {
        protected GamesDataHolderResult(DataHolder dataHolder) {
            super(dataHolder, GamesStatusCodes.zzik(dataHolder.getStatusCode()));
        }
    }

    /* loaded from: classes2.dex */
    private static final class GamesLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<GamesMetadata.LoadGamesResult> zzaGN;

        GamesLoadedBinderCallback(zzaad.zzb<GamesMetadata.LoadGamesResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzn(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadGamesResultImpl(dataHolder));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class GetAuthTokenBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Games.GetTokenResult> zzaGN;

        public GetAuthTokenBinderCallbacks(zzaad.zzb<Games.GetTokenResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzh(int i, String str) {
            this.zzaGN.setResult(new GetTokenResultImpl(GamesStatusCodes.zzik(i), str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class GetServerAuthCodeBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Games.GetServerAuthCodeResult> zzaGN;

        public GetServerAuthCodeBinderCallbacks(zzaad.zzb<Games.GetServerAuthCodeResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzh(int i, String str) {
            this.zzaGN.setResult(new GetServerAuthCodeResultImpl(GamesStatusCodes.zzik(i), str));
        }
    }

    /* loaded from: classes2.dex */
    private static final class GetServerAuthCodeResultImpl implements Games.GetServerAuthCodeResult {
        private final String zzaZU;
        private final Status zzair;

        GetServerAuthCodeResultImpl(Status status, String str) {
            this.zzair = status;
            this.zzaZU = str;
        }

        @Override // com.google.android.gms.games.Games.GetServerAuthCodeResult
        public String getCode() {
            return this.zzaZU;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class GetTokenResultImpl implements Games.GetTokenResult {
        private final String zzaiJ;
        private final Status zzair;

        GetTokenResultImpl(Status status, String str) {
            this.zzair = status;
            this.zzaiJ = str;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class HeadlessCaptureEnabledBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Status> zzaGN;

        HeadlessCaptureEnabledBinderCallback(zzaad.zzb<Status> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzan(Status status) {
            this.zzaGN.setResult(status);
        }
    }

    /* loaded from: classes2.dex */
    private static final class IgnoreFriendInviteFirstPartyBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Social.InviteUpdateResult> zzaGN;

        IgnoreFriendInviteFirstPartyBinderCallback(zzaad.zzb<Social.InviteUpdateResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzad(DataHolder dataHolder) {
            this.zzaGN.setResult(new InviteUpdateResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class InboxCountResultImpl implements Notifications.InboxCountResult {
        private final Bundle zzaZV;
        private final Status zzair;

        InboxCountResultImpl(Status status, Bundle bundle) {
            this.zzair = status;
            this.zzaZV = bundle;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class InboxCountsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Notifications.InboxCountResult> zzaGN;

        InboxCountsLoadedBinderCallback(zzaad.zzb<Notifications.InboxCountResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzg(int i, Bundle bundle) {
            bundle.setClassLoader(getClass().getClassLoader());
            this.zzaGN.setResult(new InboxCountResultImpl(GamesStatusCodes.zzik(i), bundle));
        }
    }

    /* loaded from: classes2.dex */
    private static final class InitiateMatchResultImpl extends TurnBasedMatchResult implements TurnBasedMultiplayer.InitiateMatchResult {
        InitiateMatchResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    /* loaded from: classes2.dex */
    private static final class InvitationReceivedBinderCallback extends AbstractGamesCallbacks {
        private final zzabh<OnInvitationReceivedListener> zzaNm;

        InvitationReceivedBinderCallback(zzabh<OnInvitationReceivedListener> zzabhVar) {
            this.zzaNm = zzabhVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onInvitationRemoved(String str) {
            this.zzaNm.zza(new InvitationRemovedNotifier(str));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzs(DataHolder dataHolder) {
            InvitationBuffer invitationBuffer = new InvitationBuffer(dataHolder);
            Invitation invitation = null;
            try {
                if (invitationBuffer.getCount() > 0) {
                    invitation = invitationBuffer.mo547get(0).mo520freeze();
                }
                if (invitation == null) {
                    return;
                }
                this.zzaNm.zza(new InvitationReceivedNotifier(invitation));
            } finally {
                invitationBuffer.release();
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class InvitationReceivedNotifier implements zzabh.zzc<OnInvitationReceivedListener> {
        private final Invitation zzaZW;

        InvitationReceivedNotifier(Invitation invitation) {
            this.zzaZW = invitation;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(OnInvitationReceivedListener onInvitationReceivedListener) {
            onInvitationReceivedListener.onInvitationReceived(this.zzaZW);
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class InvitationRemovedNotifier implements zzabh.zzc<OnInvitationReceivedListener> {
        private final String zzaij;

        InvitationRemovedNotifier(String str) {
            this.zzaij = str;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(OnInvitationReceivedListener onInvitationReceivedListener) {
            onInvitationReceivedListener.onInvitationRemoved(this.zzaij);
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class InvitationsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Invitations.LoadInvitationsResult> zzaGN;

        InvitationsLoadedBinderCallback(zzaad.zzb<Invitations.LoadInvitationsResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzr(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadInvitationsResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class InviteUpdateResultImpl extends GamesDataHolderResult implements Social.InviteUpdateResult {
        private final SocialInvite zzaZX;

        InviteUpdateResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            SocialInviteBuffer socialInviteBuffer = new SocialInviteBuffer(dataHolder);
            try {
                if (socialInviteBuffer.getCount() > 0) {
                    this.zzaZX = new SocialInviteEntity((SocialInvite) socialInviteBuffer.mo547get(0));
                } else {
                    this.zzaZX = null;
                }
            } finally {
                socialInviteBuffer.release();
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class InvitesLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Social.LoadInvitesResult> zzaGN;

        InvitesLoadedBinderCallback(zzaad.zzb<Social.LoadInvitesResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzah(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadInvitesResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class JoinedRoomNotifier extends AbstractRoomNotifier {
        public JoinedRoomNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomNotifier
        public void zza(RoomUpdateListener roomUpdateListener, Room room, int i) {
            roomUpdateListener.onJoinedRoom(i, room);
        }
    }

    /* loaded from: classes2.dex */
    private static final class LeaderboardMetadataResultImpl extends GamesDataHolderResult implements Leaderboards.LeaderboardMetadataResult {
        private final LeaderboardBuffer zzaZY;

        LeaderboardMetadataResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzaZY = new LeaderboardBuffer(dataHolder);
        }

        @Override // com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult
        public LeaderboardBuffer getLeaderboards() {
            return this.zzaZY;
        }
    }

    /* loaded from: classes2.dex */
    private static final class LeaderboardScoresLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Leaderboards.LoadScoresResult> zzaGN;

        LeaderboardScoresLoadedBinderCallback(zzaad.zzb<Leaderboards.LoadScoresResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(DataHolder dataHolder, DataHolder dataHolder2) {
            this.zzaGN.setResult(new LoadScoresResultImpl(dataHolder, dataHolder2));
        }
    }

    /* loaded from: classes2.dex */
    private static final class LeaderboardsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Leaderboards.LeaderboardMetadataResult> zzaGN;

        LeaderboardsLoadedBinderCallback(zzaad.zzb<Leaderboards.LeaderboardMetadataResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzj(DataHolder dataHolder) {
            this.zzaGN.setResult(new LeaderboardMetadataResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class LeaveMatchResultImpl extends TurnBasedMatchResult implements TurnBasedMultiplayer.LeaveMatchResult {
        LeaveMatchResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    /* loaded from: classes2.dex */
    private static final class LeftRoomNotifier implements zzabh.zzc<RoomUpdateListener> {
        private final String zzaZZ;
        private final int zzavD;

        LeftRoomNotifier(int i, String str) {
            this.zzavD = i;
            this.zzaZZ = str;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(RoomUpdateListener roomUpdateListener) {
            roomUpdateListener.onLeftRoom(this.zzavD, this.zzaZZ);
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class ListVideosBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Videos.ListVideosResult> zzaGN;

        ListVideosBinderCallback(zzaad.zzb<Videos.ListVideosResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzX(DataHolder dataHolder) {
            this.zzaGN.setResult(new ListVideosResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class ListVideosResultImpl extends GamesDataHolderResult implements Videos.ListVideosResult {
        private final VideoBuffer zzbaa;

        public ListVideosResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbaa = new VideoBuffer(dataHolder);
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadAchievementsResultImpl extends GamesDataHolderResult implements Achievements.LoadAchievementsResult {
        private final AchievementBuffer zzbab;

        LoadAchievementsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbab = new AchievementBuffer(dataHolder);
        }

        @Override // com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult
        public AchievementBuffer getAchievements() {
            return this.zzbab;
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadAppContentsResultImpl extends GamesDataHolderResult implements AppContents.LoadAppContentResult {
        private final ArrayList<DataHolder> zzbac;

        LoadAppContentsResultImpl(DataHolder[] dataHolderArr) {
            super(dataHolderArr[0]);
            this.zzbac = new ArrayList<>(Arrays.asList(dataHolderArr));
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadEventResultImpl extends GamesDataHolderResult implements Events.LoadEventsResult {
        private final EventBuffer zzbad;

        LoadEventResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbad = new EventBuffer(dataHolder);
        }

        @Override // com.google.android.gms.games.event.Events.LoadEventsResult
        public EventBuffer getEvents() {
            return this.zzbad;
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadGameInstancesResultImpl extends GamesDataHolderResult implements GamesMetadata.LoadGameInstancesResult {
        private final GameInstanceBuffer zzbae;

        LoadGameInstancesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbae = new GameInstanceBuffer(dataHolder);
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadGameSearchSuggestionsResultImpl extends GamesDataHolderResult implements GamesMetadata.LoadGameSearchSuggestionsResult {
        private final GameSearchSuggestionBuffer zzbaf;

        LoadGameSearchSuggestionsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbaf = new GameSearchSuggestionBuffer(dataHolder);
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadGamesResultImpl extends GamesDataHolderResult implements GamesMetadata.LoadGamesResult {
        private final GameBuffer zzbag;

        LoadGamesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbag = new GameBuffer(dataHolder);
        }

        @Override // com.google.android.gms.games.GamesMetadata.LoadGamesResult
        public GameBuffer getGames() {
            return this.zzbag;
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadInvitationsResultImpl extends GamesDataHolderResult implements Invitations.LoadInvitationsResult {
        private final InvitationBuffer zzbah;

        LoadInvitationsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbah = new InvitationBuffer(dataHolder);
        }

        @Override // com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult
        public InvitationBuffer getInvitations() {
            return this.zzbah;
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadInvitesResultImpl extends GamesDataHolderResult implements Social.LoadInvitesResult {
        private final SocialInviteBuffer zzbai;

        LoadInvitesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbai = new SocialInviteBuffer(dataHolder);
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadMatchResultImpl extends TurnBasedMatchResult implements TurnBasedMultiplayer.LoadMatchResult {
        LoadMatchResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadMatchesResultImpl implements TurnBasedMultiplayer.LoadMatchesResult {
        private final Status zzair;
        private final LoadMatchesResponse zzbaj;

        LoadMatchesResultImpl(Status status, Bundle bundle) {
            this.zzair = status;
            this.zzbaj = new LoadMatchesResponse(bundle);
        }

        @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult
        public LoadMatchesResponse getMatches() {
            return this.zzbaj;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            this.zzbaj.release();
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadPlayerScoreResultImpl extends GamesDataHolderResult implements Leaderboards.LoadPlayerScoreResult {
        private final LeaderboardScoreEntity zzbak;

        LoadPlayerScoreResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            LeaderboardScoreBuffer leaderboardScoreBuffer = new LeaderboardScoreBuffer(dataHolder);
            try {
                if (leaderboardScoreBuffer.getCount() > 0) {
                    this.zzbak = (LeaderboardScoreEntity) ((LeaderboardScore) leaderboardScoreBuffer.mo547get(0)).mo520freeze();
                } else {
                    this.zzbak = null;
                }
            } finally {
                leaderboardScoreBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult
        public LeaderboardScore getScore() {
            return this.zzbak;
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadPlayerStatsResultImpl extends GamesDataHolderResult implements Stats.LoadPlayerStatsResult {
        private final PlayerStats zzbal;

        LoadPlayerStatsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            PlayerStatsBuffer playerStatsBuffer = new PlayerStatsBuffer(dataHolder);
            try {
                if (playerStatsBuffer.getCount() > 0) {
                    this.zzbal = new PlayerStatsEntity((PlayerStats) playerStatsBuffer.mo547get(0));
                } else {
                    this.zzbal = null;
                }
            } finally {
                playerStatsBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.stats.Stats.LoadPlayerStatsResult
        public PlayerStats getPlayerStats() {
            return this.zzbal;
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadPlayersResultImpl extends GamesDataHolderResult implements Players.LoadPlayersResult {
        private final PlayerBuffer zzbam;

        LoadPlayersResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbam = new PlayerBuffer(dataHolder);
        }

        @Override // com.google.android.gms.games.Players.LoadPlayersResult
        public PlayerBuffer getPlayers() {
            return this.zzbam;
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadQuestsResultImpl extends GamesDataHolderResult implements Quests.LoadQuestsResult {
        private final DataHolder zzaBi;

        LoadQuestsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzaBi = dataHolder;
        }

        @Override // com.google.android.gms.games.quest.Quests.LoadQuestsResult
        public QuestBuffer getQuests() {
            return new QuestBuffer(this.zzaBi);
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadRequestSummariesResultImpl extends GamesDataHolderResult implements Requests.LoadRequestSummariesResult {
        LoadRequestSummariesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadRequestsResultImpl implements Requests.LoadRequestsResult {
        private final Status zzair;
        private final Bundle zzban;

        LoadRequestsResultImpl(Status status, Bundle bundle) {
            this.zzair = status;
            this.zzban = bundle;
        }

        @Override // com.google.android.gms.games.request.Requests.LoadRequestsResult
        public GameRequestBuffer getRequests(int i) {
            String zziL = RequestType.zziL(i);
            if (!this.zzban.containsKey(zziL)) {
                return null;
            }
            return new GameRequestBuffer((DataHolder) this.zzban.get(zziL));
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            for (String str : this.zzban.keySet()) {
                DataHolder dataHolder = (DataHolder) this.zzban.getParcelable(str);
                if (dataHolder != null) {
                    dataHolder.close();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadScoresResultImpl extends GamesDataHolderResult implements Leaderboards.LoadScoresResult {
        private final LeaderboardEntity zzbao;
        private final LeaderboardScoreBuffer zzbap;

        LoadScoresResultImpl(DataHolder dataHolder, DataHolder dataHolder2) {
            super(dataHolder2);
            LeaderboardBuffer leaderboardBuffer = new LeaderboardBuffer(dataHolder);
            try {
                if (leaderboardBuffer.getCount() > 0) {
                    this.zzbao = (LeaderboardEntity) leaderboardBuffer.mo547get(0).mo520freeze();
                } else {
                    this.zzbao = null;
                }
                leaderboardBuffer.release();
                this.zzbap = new LeaderboardScoreBuffer(dataHolder2);
            } catch (Throwable th) {
                leaderboardBuffer.release();
                throw th;
            }
        }

        @Override // com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult
        public Leaderboard getLeaderboard() {
            return this.zzbao;
        }

        @Override // com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult
        public LeaderboardScoreBuffer getScores() {
            return this.zzbap;
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadSnapshotsResultImpl extends GamesDataHolderResult implements Snapshots.LoadSnapshotsResult {
        LoadSnapshotsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult
        public SnapshotMetadataBuffer getSnapshots() {
            return new SnapshotMetadataBuffer(this.zzaBi);
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadStockProfileImagesResultImpl extends GamesDataHolderResult implements Players.LoadStockProfileImagesResult {
        private final StockProfileImageBuffer zzbaq;

        LoadStockProfileImagesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbaq = new StockProfileImageBuffer(dataHolder);
        }

        @Override // com.google.android.gms.internal.zzaao, com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadXpForGameCategoriesResultImpl implements Players.LoadXpForGameCategoriesResult {
        private final Status zzair;
        private final List<String> zzbar;
        private final Bundle zzbas;

        LoadXpForGameCategoriesResultImpl(Status status, Bundle bundle) {
            this.zzair = status;
            this.zzbar = bundle.getStringArrayList("game_category_list");
            this.zzbas = bundle;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class LoadXpStreamResultImpl extends GamesDataHolderResult implements Players.LoadXpStreamResult {
        private final ExperienceEventBuffer zzbat;

        LoadXpStreamResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbat = new ExperienceEventBuffer(dataHolder);
        }
    }

    /* loaded from: classes2.dex */
    private static final class MatchRemovedNotifier implements zzabh.zzc<OnTurnBasedMatchUpdateReceivedListener> {
        private final String zzbau;

        MatchRemovedNotifier(String str) {
            this.zzbau = str;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
            onTurnBasedMatchUpdateReceivedListener.onTurnBasedMatchRemoved(this.zzbau);
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class MatchUpdateReceivedBinderCallback extends AbstractGamesCallbacks {
        private final zzabh<OnTurnBasedMatchUpdateReceivedListener> zzaNm;

        MatchUpdateReceivedBinderCallback(zzabh<OnTurnBasedMatchUpdateReceivedListener> zzabhVar) {
            this.zzaNm = zzabhVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onTurnBasedMatchRemoved(String str) {
            this.zzaNm.zza(new MatchRemovedNotifier(str));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzy(DataHolder dataHolder) {
            TurnBasedMatchBuffer turnBasedMatchBuffer = new TurnBasedMatchBuffer(dataHolder);
            TurnBasedMatch turnBasedMatch = null;
            try {
                if (turnBasedMatchBuffer.getCount() > 0) {
                    turnBasedMatch = turnBasedMatchBuffer.mo547get(0).mo520freeze();
                }
                if (turnBasedMatch == null) {
                    return;
                }
                this.zzaNm.zza(new MatchUpdateReceivedNotifier(turnBasedMatch));
            } finally {
                turnBasedMatchBuffer.release();
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class MatchUpdateReceivedNotifier implements zzabh.zzc<OnTurnBasedMatchUpdateReceivedListener> {
        private final TurnBasedMatch zzbav;

        MatchUpdateReceivedNotifier(TurnBasedMatch turnBasedMatch) {
            this.zzbav = turnBasedMatch;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
            onTurnBasedMatchUpdateReceivedListener.onTurnBasedMatchReceived(this.zzbav);
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class MessageReceivedNotifier implements zzabh.zzc<RealTimeMessageReceivedListener> {
        private final RealTimeMessage zzbaw;

        MessageReceivedNotifier(RealTimeMessage realTimeMessage) {
            this.zzbaw = realTimeMessage;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(RealTimeMessageReceivedListener realTimeMessageReceivedListener) {
            realTimeMessageReceivedListener.onRealTimeMessageReceived(this.zzbaw);
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class NearbyPlayerDetectedNotifier implements zzabh.zzc<OnNearbyPlayerDetectedListener> {
        @Override // com.google.android.gms.internal.zzabh.zzc
        public /* bridge */ /* synthetic */ void zzs(OnNearbyPlayerDetectedListener onNearbyPlayerDetectedListener) {
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class OpenSnapshotResultImpl extends GamesDataHolderResult implements Snapshots.OpenSnapshotResult {
        private final zzc zzbaA;
        private final SnapshotContents zzbaB;
        private final Snapshot zzbax;
        private final String zzbay;
        private final Snapshot zzbaz;

        OpenSnapshotResultImpl(DataHolder dataHolder, zzc zzcVar) {
            this(dataHolder, null, zzcVar, null, null);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        OpenSnapshotResultImpl(DataHolder dataHolder, String str, zzc zzcVar, zzc zzcVar2, zzc zzcVar3) {
            super(dataHolder);
            boolean z = true;
            SnapshotMetadataBuffer snapshotMetadataBuffer = new SnapshotMetadataBuffer(dataHolder);
            try {
                if (snapshotMetadataBuffer.getCount() == 0) {
                    this.zzbax = null;
                    this.zzbaz = null;
                } else if (snapshotMetadataBuffer.getCount() == 1) {
                    com.google.android.gms.common.internal.zzc.zzaw(dataHolder.getStatusCode() == 4004 ? false : z);
                    this.zzbax = new SnapshotEntity(new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.mo547get(0)), new SnapshotContentsEntity(zzcVar));
                    this.zzbaz = null;
                } else {
                    this.zzbax = new SnapshotEntity(new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.mo547get(0)), new SnapshotContentsEntity(zzcVar));
                    this.zzbaz = new SnapshotEntity(new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.mo547get(1)), new SnapshotContentsEntity(zzcVar2));
                }
                snapshotMetadataBuffer.release();
                this.zzbay = str;
                this.zzbaA = zzcVar3;
                this.zzbaB = new SnapshotContentsEntity(zzcVar3);
            } catch (Throwable th) {
                snapshotMetadataBuffer.release();
                throw th;
            }
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult
        public String getConflictId() {
            return this.zzbay;
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult
        public Snapshot getConflictingSnapshot() {
            return this.zzbaz;
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult
        public SnapshotContents getResolutionSnapshotContents() {
            return this.zzbaB;
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult
        public Snapshot getSnapshot() {
            return this.zzbax;
        }
    }

    /* loaded from: classes2.dex */
    private static final class P2PConnectedNotifier implements zzabh.zzc<RoomStatusUpdateListener> {
        private final String zzbaC;

        P2PConnectedNotifier(String str) {
            this.zzbaC = str;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(RoomStatusUpdateListener roomStatusUpdateListener) {
            roomStatusUpdateListener.onP2PConnected(this.zzbaC);
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class P2PDisconnectedNotifier implements zzabh.zzc<RoomStatusUpdateListener> {
        private final String zzbaC;

        P2PDisconnectedNotifier(String str) {
            this.zzbaC = str;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(RoomStatusUpdateListener roomStatusUpdateListener) {
            roomStatusUpdateListener.onP2PDisconnected(this.zzbaC);
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class PeerConnectedNotifier extends AbstractPeerStatusNotifier {
        PeerConnectedNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeersConnected(room, arrayList);
        }
    }

    /* loaded from: classes2.dex */
    private static final class PeerDeclinedNotifier extends AbstractPeerStatusNotifier {
        PeerDeclinedNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerDeclined(room, arrayList);
        }
    }

    /* loaded from: classes2.dex */
    private static final class PeerDisconnectedNotifier extends AbstractPeerStatusNotifier {
        PeerDisconnectedNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeersDisconnected(room, arrayList);
        }
    }

    /* loaded from: classes2.dex */
    private static final class PeerInvitedToRoomNotifier extends AbstractPeerStatusNotifier {
        PeerInvitedToRoomNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerInvitedToRoom(room, arrayList);
        }
    }

    /* loaded from: classes2.dex */
    private static final class PeerJoinedRoomNotifier extends AbstractPeerStatusNotifier {
        PeerJoinedRoomNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerJoined(room, arrayList);
        }
    }

    /* loaded from: classes2.dex */
    private static final class PeerLeftRoomNotifier extends AbstractPeerStatusNotifier {
        PeerLeftRoomNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerLeft(room, arrayList);
        }
    }

    /* loaded from: classes2.dex */
    private static final class PlayerLeaderboardScoreLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Leaderboards.LoadPlayerScoreResult> zzaGN;

        PlayerLeaderboardScoreLoadedBinderCallback(zzaad.zzb<Leaderboards.LoadPlayerScoreResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzJ(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadPlayerScoreResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class PlayerStatsLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Stats.LoadPlayerStatsResult> zzaGN;

        public PlayerStatsLoadedBinderCallbacks(zzaad.zzb<Stats.LoadPlayerStatsResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzW(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadPlayerStatsResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class PlayerUnfriendedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Players.LoadPlayersResult> zzaGN;

        PlayerUnfriendedBinderCallback(zzaad.zzb<Players.LoadPlayersResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzaf(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadPlayersResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class PlayerXpForGameCategoriesLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Players.LoadXpForGameCategoriesResult> zzaGN;

        PlayerXpForGameCategoriesLoadedBinderCallback(zzaad.zzb<Players.LoadXpForGameCategoriesResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzf(int i, Bundle bundle) {
            bundle.setClassLoader(getClass().getClassLoader());
            this.zzaGN.setResult(new LoadXpForGameCategoriesResultImpl(GamesStatusCodes.zzik(i), bundle));
        }
    }

    /* loaded from: classes2.dex */
    static final class PlayerXpStreamLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Players.LoadXpStreamResult> zzaGN;

        PlayerXpStreamLoadedBinderCallback(zzaad.zzb<Players.LoadXpStreamResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzU(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadXpStreamResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class PlayersLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Players.LoadPlayersResult> zzaGN;

        PlayersLoadedBinderCallback(zzaad.zzb<Players.LoadPlayersResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzl(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadPlayersResultImpl(dataHolder));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzm(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadPlayersResultImpl(dataHolder));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class PopupLocationInfoBinderCallbacks extends AbstractGamesClient {
        private final PopupManager zzaZx;

        public PopupLocationInfoBinderCallbacks(PopupManager popupManager) {
            this.zzaZx = popupManager;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesClient, com.google.android.gms.games.internal.IGamesClient
        public PopupLocationInfoParcelable zzEL() {
            return new PopupLocationInfoParcelable(this.zzaZx.zzFE());
        }
    }

    /* loaded from: classes2.dex */
    private static final class ProfileSettingsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Players.LoadProfileSettingsResult> zzaGN;

        ProfileSettingsLoadedBinderCallback(zzaad.zzb<Players.LoadProfileSettingsResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzV(DataHolder dataHolder) {
            this.zzaGN.setResult(new ProfileSettingsEntity(dataHolder));
            dataHolder.close();
        }
    }

    /* loaded from: classes2.dex */
    private static final class ProfileSettingsUpdatedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Status> zzaGN;

        ProfileSettingsUpdatedBinderCallback(zzaad.zzb<Status> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zziy(int i) {
            this.zzaGN.setResult(GamesStatusCodes.zzik(i));
        }
    }

    /* loaded from: classes2.dex */
    private static final class QuestAcceptedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Quests.AcceptQuestResult> zzbaD;

        public QuestAcceptedBinderCallbacks(zzaad.zzb<Quests.AcceptQuestResult> zzbVar) {
            this.zzbaD = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzQ(DataHolder dataHolder) {
            this.zzbaD.setResult(new AcceptQuestResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class QuestCompletedNotifier implements zzabh.zzc<QuestUpdateListener> {
        private final Quest zzaZF;

        QuestCompletedNotifier(Quest quest) {
            this.zzaZF = quest;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(QuestUpdateListener questUpdateListener) {
            questUpdateListener.onQuestCompleted(this.zzaZF);
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class QuestMilestoneClaimBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Quests.ClaimMilestoneResult> zzbaE;
        private final String zzbaF;

        public QuestMilestoneClaimBinderCallbacks(zzaad.zzb<Quests.ClaimMilestoneResult> zzbVar, String str) {
            this.zzbaE = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
            this.zzbaF = (String) zzac.zzb(str, "MilestoneId must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzP(DataHolder dataHolder) {
            this.zzbaE.setResult(new ClaimMilestoneResultImpl(dataHolder, this.zzbaF));
        }
    }

    /* loaded from: classes2.dex */
    private static final class QuestUpdateBinderCallback extends AbstractGamesCallbacks {
        private final zzabh<QuestUpdateListener> zzaNm;

        QuestUpdateBinderCallback(zzabh<QuestUpdateListener> zzabhVar) {
            this.zzaNm = zzabhVar;
        }

        private Quest zzak(DataHolder dataHolder) {
            QuestBuffer questBuffer = new QuestBuffer(dataHolder);
            Quest quest = null;
            try {
                if (questBuffer.getCount() > 0) {
                    quest = questBuffer.mo547get(0).mo520freeze();
                }
                return quest;
            } finally {
                questBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzR(DataHolder dataHolder) {
            Quest zzak = zzak(dataHolder);
            if (zzak != null) {
                this.zzaNm.zza(new QuestCompletedNotifier(zzak));
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class QuestsLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Quests.LoadQuestsResult> zzbaG;

        public QuestsLoadedBinderCallbacks(zzaad.zzb<Quests.LoadQuestsResult> zzbVar) {
            this.zzbaG = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzT(DataHolder dataHolder) {
            this.zzbaG.setResult(new LoadQuestsResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class RealTimeMessageSentNotifier implements zzabh.zzc<RealTimeMultiplayer.ReliableMessageSentCallback> {
        private final int zzavD;
        private final String zzbaH;
        private final int zzbaI;

        RealTimeMessageSentNotifier(int i, int i2, String str) {
            this.zzavD = i;
            this.zzbaI = i2;
            this.zzbaH = str;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(RealTimeMultiplayer.ReliableMessageSentCallback reliableMessageSentCallback) {
            if (reliableMessageSentCallback != null) {
                reliableMessageSentCallback.onRealTimeMessageSent(this.zzavD, this.zzbaI, this.zzbaH);
            }
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class RealTimeReliableMessageBinderCallbacks extends AbstractGamesCallbacks {
        final zzabh<RealTimeMultiplayer.ReliableMessageSentCallback> zzbaJ;

        public RealTimeReliableMessageBinderCallbacks(zzabh<RealTimeMultiplayer.ReliableMessageSentCallback> zzabhVar) {
            this.zzbaJ = zzabhVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzb(int i, int i2, String str) {
            if (this.zzbaJ != null) {
                this.zzbaJ.zza(new RealTimeMessageSentNotifier(i, i2, str));
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class RequestReceivedBinderCallback extends AbstractGamesCallbacks {
        private final zzabh<OnRequestReceivedListener> zzaNm;

        RequestReceivedBinderCallback(zzabh<OnRequestReceivedListener> zzabhVar) {
            this.zzaNm = zzabhVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onRequestRemoved(String str) {
            this.zzaNm.zza(new RequestRemovedNotifier(str));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzt(DataHolder dataHolder) {
            GameRequestBuffer gameRequestBuffer = new GameRequestBuffer(dataHolder);
            GameRequest gameRequest = null;
            try {
                if (gameRequestBuffer.getCount() > 0) {
                    gameRequest = gameRequestBuffer.mo547get(0).mo520freeze();
                }
                if (gameRequest == null) {
                    return;
                }
                this.zzaNm.zza(new RequestReceivedNotifier(gameRequest));
            } finally {
                gameRequestBuffer.release();
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class RequestReceivedNotifier implements zzabh.zzc<OnRequestReceivedListener> {
        private final GameRequest zzbaK;

        RequestReceivedNotifier(GameRequest gameRequest) {
            this.zzbaK = gameRequest;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(OnRequestReceivedListener onRequestReceivedListener) {
            onRequestReceivedListener.onRequestReceived(this.zzbaK);
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class RequestRemovedNotifier implements zzabh.zzc<OnRequestReceivedListener> {
        private final String zzOV;

        RequestRemovedNotifier(String str) {
            this.zzOV = str;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(OnRequestReceivedListener onRequestReceivedListener) {
            onRequestReceivedListener.onRequestRemoved(this.zzOV);
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class RequestSentBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Requests.SendRequestResult> zzbaL;

        public RequestSentBinderCallbacks(zzaad.zzb<Requests.SendRequestResult> zzbVar) {
            this.zzbaL = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzL(DataHolder dataHolder) {
            this.zzbaL.setResult(new SendRequestResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class RequestSummariesLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Requests.LoadRequestSummariesResult> zzbaM;

        public RequestSummariesLoadedBinderCallbacks(zzaad.zzb<Requests.LoadRequestSummariesResult> zzbVar) {
            this.zzbaM = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzM(DataHolder dataHolder) {
            this.zzbaM.setResult(new LoadRequestSummariesResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class RequestsLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Requests.LoadRequestsResult> zzbaN;

        public RequestsLoadedBinderCallbacks(zzaad.zzb<Requests.LoadRequestsResult> zzbVar) {
            this.zzbaN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzd(int i, Bundle bundle) {
            bundle.setClassLoader(getClass().getClassLoader());
            this.zzbaN.setResult(new LoadRequestsResultImpl(GamesStatusCodes.zzik(i), bundle));
        }
    }

    /* loaded from: classes2.dex */
    private static final class RequestsUpdatedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Requests.UpdateRequestsResult> zzbaO;

        public RequestsUpdatedBinderCallbacks(zzaad.zzb<Requests.UpdateRequestsResult> zzbVar) {
            this.zzbaO = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzK(DataHolder dataHolder) {
            this.zzbaO.setResult(new UpdateRequestsResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class RoomAutoMatchingNotifier extends AbstractRoomStatusNotifier {
        RoomAutoMatchingNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomStatusNotifier
        public void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onRoomAutoMatching(room);
        }
    }

    /* loaded from: classes2.dex */
    private static final class RoomBinderCallbacks extends AbstractGamesCallbacks {
        private final zzabh<? extends RoomUpdateListener> zzbaP;
        private final zzabh<? extends RoomStatusUpdateListener> zzbaQ;
        private final zzabh<RealTimeMessageReceivedListener> zzbaR;

        public RoomBinderCallbacks(zzabh<RoomUpdateListener> zzabhVar) {
            this.zzbaP = (zzabh) zzac.zzb(zzabhVar, "Callbacks must not be null");
            this.zzbaQ = null;
            this.zzbaR = null;
        }

        public RoomBinderCallbacks(zzabh<? extends RoomUpdateListener> zzabhVar, zzabh<? extends RoomStatusUpdateListener> zzabhVar2, zzabh<RealTimeMessageReceivedListener> zzabhVar3) {
            this.zzbaP = (zzabh) zzac.zzb(zzabhVar, "Callbacks must not be null");
            this.zzbaQ = zzabhVar2;
            this.zzbaR = zzabhVar3;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onLeftRoom(int i, String str) {
            this.zzbaP.zza(new LeftRoomNotifier(i, str));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onP2PConnected(String str) {
            if (this.zzbaQ != null) {
                this.zzbaQ.zza(new P2PConnectedNotifier(str));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onP2PDisconnected(String str) {
            if (this.zzbaQ != null) {
                this.zzbaQ.zza(new P2PDisconnectedNotifier(str));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onRealTimeMessageReceived(RealTimeMessage realTimeMessage) {
            if (this.zzbaR != null) {
                this.zzbaR.zza(new MessageReceivedNotifier(realTimeMessage));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzA(DataHolder dataHolder) {
            this.zzbaP.zza(new JoinedRoomNotifier(dataHolder));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzB(DataHolder dataHolder) {
            if (this.zzbaQ != null) {
                this.zzbaQ.zza(new RoomConnectingNotifier(dataHolder));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzC(DataHolder dataHolder) {
            if (this.zzbaQ != null) {
                this.zzbaQ.zza(new RoomAutoMatchingNotifier(dataHolder));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzD(DataHolder dataHolder) {
            this.zzbaP.zza(new RoomConnectedNotifier(dataHolder));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzE(DataHolder dataHolder) {
            if (this.zzbaQ != null) {
                this.zzbaQ.zza(new ConnectedToRoomNotifier(dataHolder));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzF(DataHolder dataHolder) {
            if (this.zzbaQ != null) {
                this.zzbaQ.zza(new DisconnectedFromRoomNotifier(dataHolder));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(DataHolder dataHolder, String[] strArr) {
            if (this.zzbaQ != null) {
                this.zzbaQ.zza(new PeerInvitedToRoomNotifier(dataHolder, strArr));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzb(DataHolder dataHolder, String[] strArr) {
            if (this.zzbaQ != null) {
                this.zzbaQ.zza(new PeerJoinedRoomNotifier(dataHolder, strArr));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzc(DataHolder dataHolder, String[] strArr) {
            if (this.zzbaQ != null) {
                this.zzbaQ.zza(new PeerLeftRoomNotifier(dataHolder, strArr));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzd(DataHolder dataHolder, String[] strArr) {
            if (this.zzbaQ != null) {
                this.zzbaQ.zza(new PeerDeclinedNotifier(dataHolder, strArr));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zze(DataHolder dataHolder, String[] strArr) {
            if (this.zzbaQ != null) {
                this.zzbaQ.zza(new PeerConnectedNotifier(dataHolder, strArr));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzf(DataHolder dataHolder, String[] strArr) {
            if (this.zzbaQ != null) {
                this.zzbaQ.zza(new PeerDisconnectedNotifier(dataHolder, strArr));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzz(DataHolder dataHolder) {
            this.zzbaP.zza(new RoomCreatedNotifier(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class RoomConnectedNotifier extends AbstractRoomNotifier {
        RoomConnectedNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomNotifier
        public void zza(RoomUpdateListener roomUpdateListener, Room room, int i) {
            roomUpdateListener.onRoomConnected(i, room);
        }
    }

    /* loaded from: classes2.dex */
    private static final class RoomConnectingNotifier extends AbstractRoomStatusNotifier {
        RoomConnectingNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomStatusNotifier
        public void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onRoomConnecting(room);
        }
    }

    /* loaded from: classes2.dex */
    private static final class RoomCreatedNotifier extends AbstractRoomNotifier {
        public RoomCreatedNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomNotifier
        public void zza(RoomUpdateListener roomUpdateListener, Room room, int i) {
            roomUpdateListener.onRoomCreated(i, room);
        }
    }

    /* loaded from: classes2.dex */
    private static final class SendFriendInviteFirstPartyBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Social.InviteUpdateResult> zzaGN;

        SendFriendInviteFirstPartyBinderCallback(zzaad.zzb<Social.InviteUpdateResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzZ(DataHolder dataHolder) {
            this.zzaGN.setResult(new InviteUpdateResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class SendRequestResultImpl extends GamesDataHolderResult implements Requests.SendRequestResult {
        private final GameRequest zzbaK;

        SendRequestResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            GameRequestBuffer gameRequestBuffer = new GameRequestBuffer(dataHolder);
            try {
                if (gameRequestBuffer.getCount() > 0) {
                    this.zzbaK = gameRequestBuffer.mo547get(0).mo520freeze();
                } else {
                    this.zzbaK = null;
                }
            } finally {
                gameRequestBuffer.release();
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class SetPlayerMutedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Players.LoadPlayersResult> zzaGN;

        SetPlayerMutedBinderCallback(zzaad.zzb<Players.LoadPlayersResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzag(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadPlayersResultImpl(dataHolder));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class SignOutCompleteBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Status> zzaGN;

        public SignOutCompleteBinderCallbacks(zzaad.zzb<Status> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzEK() {
            this.zzaGN.setResult(GamesStatusCodes.zzik(0));
        }
    }

    /* loaded from: classes2.dex */
    private static final class SnapshotCommittedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Snapshots.CommitSnapshotResult> zzbaS;

        public SnapshotCommittedBinderCallbacks(zzaad.zzb<Snapshots.CommitSnapshotResult> zzbVar) {
            this.zzbaS = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzO(DataHolder dataHolder) {
            this.zzbaS.setResult(new CommitSnapshotResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    static final class SnapshotDeletedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Snapshots.DeleteSnapshotResult> zzaGN;

        public SnapshotDeletedBinderCallbacks(zzaad.zzb<Snapshots.DeleteSnapshotResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzk(int i, String str) {
            this.zzaGN.setResult(new DeleteSnapshotResultImpl(i, str));
        }
    }

    /* loaded from: classes2.dex */
    private static final class SnapshotOpenedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Snapshots.OpenSnapshotResult> zzbaT;

        public SnapshotOpenedBinderCallbacks(zzaad.zzb<Snapshots.OpenSnapshotResult> zzbVar) {
            this.zzbaT = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(DataHolder dataHolder, zzc zzcVar) {
            this.zzbaT.setResult(new OpenSnapshotResultImpl(dataHolder, zzcVar));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(DataHolder dataHolder, String str, zzc zzcVar, zzc zzcVar2, zzc zzcVar3) {
            this.zzbaT.setResult(new OpenSnapshotResultImpl(dataHolder, str, zzcVar, zzcVar2, zzcVar3));
        }
    }

    /* loaded from: classes2.dex */
    private static final class SnapshotsLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Snapshots.LoadSnapshotsResult> zzbaU;

        public SnapshotsLoadedBinderCallbacks(zzaad.zzb<Snapshots.LoadSnapshotsResult> zzbVar) {
            this.zzbaU = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzN(DataHolder dataHolder) {
            this.zzbaU.setResult(new LoadSnapshotsResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class SocialInviteRemovedNotifier implements zzabh.zzc<OnSocialInviteUpdateReceivedListener> {
        private final SocialInvite zzbaV;

        SocialInviteRemovedNotifier(SocialInvite socialInvite) {
            this.zzbaV = socialInvite;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public /* bridge */ /* synthetic */ void zzs(OnSocialInviteUpdateReceivedListener onSocialInviteUpdateReceivedListener) {
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class SocialInviteUpdateReceivedBinderCallback extends AbstractGamesCallbacks {
        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzab(DataHolder dataHolder) {
            zzabh zzabhVar = null;
            SocialInviteBuffer socialInviteBuffer = new SocialInviteBuffer(dataHolder);
            try {
                SocialInvite freeze = socialInviteBuffer.getCount() > 0 ? ((SocialInvite) socialInviteBuffer.mo547get(0)).mo520freeze() : null;
                if (freeze == null) {
                    return;
                }
                zzabhVar.zza(new SocialInviteUpdateReceivedNotifier(freeze));
            } finally {
                socialInviteBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzac(DataHolder dataHolder) {
            zzabh zzabhVar = null;
            SocialInviteBuffer socialInviteBuffer = new SocialInviteBuffer(dataHolder);
            try {
                SocialInvite freeze = socialInviteBuffer.getCount() > 0 ? ((SocialInvite) socialInviteBuffer.mo547get(0)).mo520freeze() : null;
                if (freeze == null) {
                    return;
                }
                zzabhVar.zza(new SocialInviteRemovedNotifier(freeze));
            } finally {
                socialInviteBuffer.release();
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class SocialInviteUpdateReceivedNotifier implements zzabh.zzc<OnSocialInviteUpdateReceivedListener> {
        private final SocialInvite zzbaV;

        SocialInviteUpdateReceivedNotifier(SocialInvite socialInvite) {
            this.zzbaV = socialInvite;
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public /* bridge */ /* synthetic */ void zzs(OnSocialInviteUpdateReceivedListener onSocialInviteUpdateReceivedListener) {
        }

        @Override // com.google.android.gms.internal.zzabh.zzc
        public void zzwc() {
        }
    }

    /* loaded from: classes2.dex */
    private static final class StockProfileImagesLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Players.LoadStockProfileImagesResult> zzaGN;

        StockProfileImagesLoadedBinderCallback(zzaad.zzb<Players.LoadStockProfileImagesResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzY(DataHolder dataHolder) {
            this.zzaGN.setResult(new LoadStockProfileImagesResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class SubmitScoreBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<Leaderboards.SubmitScoreResult> zzaGN;

        public SubmitScoreBinderCallbacks(zzaad.zzb<Leaderboards.SubmitScoreResult> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzk(DataHolder dataHolder) {
            this.zzaGN.setResult(new SubmitScoreResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class SubmitScoreResultImpl extends GamesDataHolderResult implements Leaderboards.SubmitScoreResult {
        private final ScoreSubmissionData zzbaW;

        public SubmitScoreResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            try {
                this.zzbaW = new ScoreSubmissionData(dataHolder);
            } finally {
                dataHolder.close();
            }
        }

        @Override // com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult
        public ScoreSubmissionData getScoreData() {
            return this.zzbaW;
        }
    }

    /* loaded from: classes2.dex */
    private static final class TurnBasedMatchCanceledBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<TurnBasedMultiplayer.CancelMatchResult> zzbaX;

        public TurnBasedMatchCanceledBinderCallbacks(zzaad.zzb<TurnBasedMultiplayer.CancelMatchResult> zzbVar) {
            this.zzbaX = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzj(int i, String str) {
            this.zzbaX.setResult(new CancelMatchResultImpl(GamesStatusCodes.zzik(i), str));
        }
    }

    /* loaded from: classes2.dex */
    private static final class TurnBasedMatchInitiatedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbaY;

        public TurnBasedMatchInitiatedBinderCallbacks(zzaad.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbVar) {
            this.zzbaY = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzv(DataHolder dataHolder) {
            this.zzbaY.setResult(new InitiateMatchResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class TurnBasedMatchLeftBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<TurnBasedMultiplayer.LeaveMatchResult> zzbaZ;

        public TurnBasedMatchLeftBinderCallbacks(zzaad.zzb<TurnBasedMultiplayer.LeaveMatchResult> zzbVar) {
            this.zzbaZ = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzx(DataHolder dataHolder) {
            this.zzbaZ.setResult(new LeaveMatchResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class TurnBasedMatchLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<TurnBasedMultiplayer.LoadMatchResult> zzbba;

        public TurnBasedMatchLoadedBinderCallbacks(zzaad.zzb<TurnBasedMultiplayer.LoadMatchResult> zzbVar) {
            this.zzbba = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzu(DataHolder dataHolder) {
            this.zzbba.setResult(new LoadMatchResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class TurnBasedMatchResult extends GamesDataHolderResult {
        final TurnBasedMatch zzbav;

        TurnBasedMatchResult(DataHolder dataHolder) {
            super(dataHolder);
            TurnBasedMatchBuffer turnBasedMatchBuffer = new TurnBasedMatchBuffer(dataHolder);
            try {
                if (turnBasedMatchBuffer.getCount() > 0) {
                    this.zzbav = turnBasedMatchBuffer.mo547get(0).mo520freeze();
                } else {
                    this.zzbav = null;
                }
            } finally {
                turnBasedMatchBuffer.release();
            }
        }

        public TurnBasedMatch getMatch() {
            return this.zzbav;
        }
    }

    /* loaded from: classes2.dex */
    private static final class TurnBasedMatchUpdatedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<TurnBasedMultiplayer.UpdateMatchResult> zzbbb;

        public TurnBasedMatchUpdatedBinderCallbacks(zzaad.zzb<TurnBasedMultiplayer.UpdateMatchResult> zzbVar) {
            this.zzbbb = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzw(DataHolder dataHolder) {
            this.zzbbb.setResult(new UpdateMatchResultImpl(dataHolder));
        }
    }

    /* loaded from: classes2.dex */
    private static final class TurnBasedMatchesLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzaad.zzb<TurnBasedMultiplayer.LoadMatchesResult> zzbbc;

        public TurnBasedMatchesLoadedBinderCallbacks(zzaad.zzb<TurnBasedMultiplayer.LoadMatchesResult> zzbVar) {
            this.zzbbc = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzc(int i, Bundle bundle) {
            bundle.setClassLoader(getClass().getClassLoader());
            this.zzbbc.setResult(new LoadMatchesResultImpl(GamesStatusCodes.zzik(i), bundle));
        }
    }

    /* loaded from: classes2.dex */
    private static final class UpdateAchievementResultImpl implements Achievements.UpdateAchievementResult {
        private final String zzaYF;
        private final Status zzair;

        UpdateAchievementResultImpl(int i, String str) {
            this.zzair = GamesStatusCodes.zzik(i);
            this.zzaYF = str;
        }

        @Override // com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult
        public String getAchievementId() {
            return this.zzaYF;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class UpdateAutoSignInBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Status> zzaGN;

        UpdateAutoSignInBinderCallback(zzaad.zzb<Status> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zziC(int i) {
            this.zzaGN.setResult(new Status(i));
        }
    }

    /* loaded from: classes2.dex */
    private static final class UpdateGamerProfileResultImpl implements Players.UpdateGamerProfileResult {
        private final Status zzair;
        private final Bundle zzbbd;

        UpdateGamerProfileResultImpl(int i, Bundle bundle) {
            this.zzair = new Status(i);
            this.zzbbd = bundle;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private static final class UpdateHeadlessCapturePermissionBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Status> zzaGN;

        UpdateHeadlessCapturePermissionBinderCallback(zzaad.zzb<Status> zzbVar) {
            this.zzaGN = (zzaad.zzb) zzac.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzao(Status status) {
            this.zzaGN.setResult(status);
        }
    }

    /* loaded from: classes2.dex */
    private static final class UpdateMatchResultImpl extends TurnBasedMatchResult implements TurnBasedMultiplayer.UpdateMatchResult {
        UpdateMatchResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    /* loaded from: classes2.dex */
    private static final class UpdateProfileDiscoverabilityBinderCallback extends AbstractGamesCallbacks {
        private final zzaad.zzb<Status> zzaGN;

        UpdateProfileDiscoverabilityBinderCallback(zzaad.zzb<Status> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zziD(int i) {
            this.zzaGN.setResult(new Status(i));
        }
    }

    /* loaded from: classes2.dex */
    private static final class UpdateRequestsResultImpl extends GamesDataHolderResult implements Requests.UpdateRequestsResult {
        private final RequestUpdateOutcomes zzbbe;

        UpdateRequestsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.zzbbe = RequestUpdateOutcomes.zzal(dataHolder);
        }

        @Override // com.google.android.gms.games.request.Requests.UpdateRequestsResult
        public Set<String> getRequestIds() {
            return this.zzbbe.getRequestIds();
        }

        @Override // com.google.android.gms.games.request.Requests.UpdateRequestsResult
        public int getRequestOutcome(String str) {
            return this.zzbbe.getRequestOutcome(str);
        }
    }

    public GamesClientImpl(Context context, Looper looper, zzg zzgVar, Games.GamesOptions gamesOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 1, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzaZt = new EventIncrementManager() { // from class: com.google.android.gms.games.internal.GamesClientImpl.1
            @Override // com.google.android.gms.games.internal.events.EventIncrementManager
            public EventIncrementCache zzFn() {
                return new GameClientEventIncrementCache();
            }
        };
        this.zzaZy = false;
        this.zzaZC = false;
        this.zzaZu = zzgVar.zzxO();
        this.zzaZz = new Binder();
        this.zzaZx = PopupManager.zza(this, zzgVar.zzxK());
        this.zzaZA = hashCode();
        this.zzaZB = gamesOptions;
        if (!this.zzaZB.zzaYg) {
            zzv(zzgVar.zzxQ());
        }
    }

    private void zzEO() {
        this.zzaZv = null;
        this.zzaZw = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Room zzai(DataHolder dataHolder) {
        RoomBuffer roomBuffer = new RoomBuffer(dataHolder);
        Room room = null;
        try {
            if (roomBuffer.getCount() > 0) {
                room = roomBuffer.mo547get(0).mo520freeze();
            }
            return room;
        } finally {
            roomBuffer.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzd(RemoteException remoteException) {
        GamesLog.zzc("GamesClientImpl", "service died", remoteException);
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public void disconnect() {
        this.zzaZy = false;
        if (isConnected()) {
            try {
                IGamesService iGamesService = (IGamesService) zzxD();
                iGamesService.zzFm();
                this.zzaZt.flush();
                iGamesService.zzN(this.zzaZA);
            } catch (RemoteException e) {
                GamesLog.zzF("GamesClientImpl", "Failed to notify client disconnect.");
            }
        }
        super.disconnect();
    }

    @Override // com.google.android.gms.common.internal.zzf
    public void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        this.zzaZy = false;
    }

    public String zzEP() {
        try {
            return ((IGamesService) zzxD()).zzEP();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public Player zzEQ() {
        zzxC();
        synchronized (this) {
            if (this.zzaZv == null) {
                try {
                    PlayerBuffer playerBuffer = new PlayerBuffer(((IGamesService) zzxD()).zzFp());
                    try {
                        if (playerBuffer.getCount() > 0) {
                            this.zzaZv = (PlayerEntity) ((Player) playerBuffer.mo547get(0)).mo520freeze();
                        }
                    } finally {
                        playerBuffer.release();
                    }
                } catch (RemoteException e) {
                    zzd(e);
                }
            }
        }
        return this.zzaZv;
    }

    public Game zzER() {
        zzxC();
        synchronized (this) {
            if (this.zzaZw == null) {
                try {
                    GameBuffer gameBuffer = new GameBuffer(((IGamesService) zzxD()).zzFr());
                    try {
                        if (gameBuffer.getCount() > 0) {
                            this.zzaZw = (GameEntity) ((Game) gameBuffer.mo547get(0)).mo520freeze();
                        }
                    } finally {
                        gameBuffer.release();
                    }
                } catch (RemoteException e) {
                    zzd(e);
                }
            }
        }
        return this.zzaZw;
    }

    public Intent zzES() {
        try {
            return ((IGamesService) zzxD()).zzES();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public Intent zzET() {
        try {
            return ((IGamesService) zzxD()).zzET();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public Intent zzEU() {
        try {
            return ((IGamesService) zzxD()).zzEU();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public Intent zzEV() {
        try {
            return ((IGamesService) zzxD()).zzEV();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public void zzEW() {
        try {
            ((IGamesService) zzxD()).zzO(this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public void zzEX() {
        try {
            ((IGamesService) zzxD()).zzP(this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public void zzEY() {
        try {
            ((IGamesService) zzxD()).zzR(this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public void zzEZ() {
        try {
            ((IGamesService) zzxD()).zzQ(this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public Intent zzFa() {
        try {
            return ((IGamesService) zzxD()).zzFa();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public Intent zzFb() {
        try {
            return ((IGamesService) zzxD()).zzFb();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public int zzFc() {
        try {
            return ((IGamesService) zzxD()).zzFc();
        } catch (RemoteException e) {
            zzd(e);
            return 4368;
        }
    }

    public int zzFd() {
        try {
            return ((IGamesService) zzxD()).zzFd();
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public Intent zzFe() {
        try {
            return ((IGamesService) zzxD()).zzFe();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public int zzFf() {
        try {
            return ((IGamesService) zzxD()).zzFf();
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public int zzFg() {
        try {
            return ((IGamesService) zzxD()).zzFg();
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public int zzFh() {
        try {
            return ((IGamesService) zzxD()).zzFh();
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public int zzFi() {
        try {
            return ((IGamesService) zzxD()).zzFi();
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public Intent zzFj() {
        try {
            return ((IGamesService) zzxD()).zzFx();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public boolean zzFk() {
        try {
            return ((IGamesService) zzxD()).zzFk();
        } catch (RemoteException e) {
            zzd(e);
            return false;
        }
    }

    public void zzFl() {
        try {
            ((IGamesService) zzxD()).zzU(this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public void zzFm() {
        if (isConnected()) {
            try {
                ((IGamesService) zzxD()).zzFm();
            } catch (RemoteException e) {
                zzd(e);
            }
        }
    }

    public int zza(zzabh<RealTimeMultiplayer.ReliableMessageSentCallback> zzabhVar, byte[] bArr, String str, String str2) {
        try {
            return ((IGamesService) zzxD()).zza(new RealTimeReliableMessageBinderCallbacks(zzabhVar), bArr, str, str2);
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public int zza(byte[] bArr, String str, String[] strArr) {
        zzac.zzb(strArr, "Participant IDs must not be null");
        try {
            return ((IGamesService) zzxD()).zzb(bArr, str, strArr);
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public Intent zza(int i, byte[] bArr, int i2, Bitmap bitmap, String str) {
        try {
            Intent zza = ((IGamesService) zzxD()).zza(i, bArr, i2, str);
            zzac.zzb(bitmap, "Must provide a non null icon");
            zza.putExtra("com.google.android.gms.games.REQUEST_ITEM_ICON", bitmap);
            return zza;
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public Intent zza(PlayerEntity playerEntity) {
        try {
            return ((IGamesService) zzxD()).zza(playerEntity);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public Intent zza(AchievementEntity achievementEntity) {
        try {
            Intent zza = ((IGamesService) zzxD()).zza(achievementEntity);
            if (achievementEntity == null || zza == null) {
                return zza;
            }
            zza.setExtrasClassLoader(achievementEntity.getClass().getClassLoader());
            return zza;
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public Intent zza(Room room, int i) {
        try {
            return ((IGamesService) zzxD()).zza((RoomEntity) room.mo520freeze(), i);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public Intent zza(String str, boolean z, boolean z2, int i) {
        try {
            return ((IGamesService) zzxD()).zza(str, z, z2, i);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (i == 0 && bundle != null) {
            bundle.setClassLoader(GamesClientImpl.class.getClassLoader());
            this.zzaZy = bundle.getBoolean("show_welcome_popup");
            this.zzaZC = this.zzaZy;
            this.zzaZv = (PlayerEntity) bundle.getParcelable("com.google.android.gms.games.current_player");
            this.zzaZw = (GameEntity) bundle.getParcelable("com.google.android.gms.games.current_game");
        }
        super.zza(i, iBinder, bundle, i2);
    }

    public void zza(Account account, byte[] bArr) throws RemoteException {
        ((IGamesService) zzxD()).zza(account, bArr);
    }

    public void zza(IBinder iBinder, Bundle bundle) {
        if (isConnected()) {
            try {
                ((IGamesService) zzxD()).zza(iBinder, bundle);
            } catch (RemoteException e) {
                zzd(e);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public void zza(zzf.InterfaceC0175zzf interfaceC0175zzf) {
        zzEO();
        super.zza(interfaceC0175zzf);
    }

    public void zza(Games.BaseGamesApiMethodImpl<Status> baseGamesApiMethodImpl, String str, VideoConfiguration videoConfiguration) throws RemoteException {
        ((IGamesService) zzxD()).zza(new CaptureLaunchGameAndOverlayBinderCallback(baseGamesApiMethodImpl), str, videoConfiguration);
    }

    @Override // com.google.android.gms.common.internal.zzf
    public void zza(IGamesService iGamesService) {
        super.zza((GamesClientImpl) iGamesService);
        if (this.zzaZy) {
            this.zzaZx.zzFB();
            this.zzaZy = false;
        }
        if (this.zzaZB.zzaXY || this.zzaZB.zzaYg) {
            return;
        }
        zzb(iGamesService);
    }

    public void zza(Snapshot snapshot) {
        SnapshotContents snapshotContents = snapshot.getSnapshotContents();
        zzac.zza(!snapshotContents.isClosed(), "Snapshot already closed");
        zzc zzAq = snapshotContents.zzAq();
        snapshotContents.close();
        try {
            ((IGamesService) zzxD()).zza(zzAq);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public void zza(zzaad.zzb<Invitations.LoadInvitationsResult> zzbVar, int i) throws RemoteException {
        ((IGamesService) zzxD()).zza((IGamesCallbacks) new InvitationsLoadedBinderCallback(zzbVar), i);
    }

    public void zza(zzaad.zzb<Requests.LoadRequestsResult> zzbVar, int i, int i2, int i3) throws RemoteException {
        ((IGamesService) zzxD()).zza(new RequestsLoadedBinderCallbacks(zzbVar), i, i2, i3);
    }

    public void zza(zzaad.zzb<AppContents.LoadAppContentResult> zzbVar, int i, String str, String[] strArr, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zza(new AppContentLoadedBinderCallbacks(zzbVar), i, str, strArr, z);
    }

    public void zza(zzaad.zzb<Players.LoadPlayersResult> zzbVar, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzxD()).zza(new PlayersLoadedBinderCallback(zzbVar), i, z, z2);
    }

    public void zza(zzaad.zzb<TurnBasedMultiplayer.LoadMatchesResult> zzbVar, int i, int[] iArr) throws RemoteException {
        ((IGamesService) zzxD()).zza(new TurnBasedMatchesLoadedBinderCallbacks(zzbVar), i, iArr);
    }

    public void zza(zzaad.zzb<Players.LoadPlayersResult> zzbVar, Account account) throws RemoteException {
        ((IGamesService) zzxD()).zza(new PlayersLoadedBinderCallback(zzbVar), account);
    }

    public void zza(zzaad.zzb<Leaderboards.LoadScoresResult> zzbVar, LeaderboardScoreBuffer leaderboardScoreBuffer, int i, int i2) throws RemoteException {
        ((IGamesService) zzxD()).zza(new LeaderboardScoresLoadedBinderCallback(zzbVar), leaderboardScoreBuffer.zzGo().asBundle(), i, i2);
    }

    public void zza(zzaad.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbVar, TurnBasedMatchConfig turnBasedMatchConfig) throws RemoteException {
        ((IGamesService) zzxD()).zza(new TurnBasedMatchInitiatedBinderCallbacks(zzbVar), turnBasedMatchConfig.getVariant(), turnBasedMatchConfig.zzGu(), turnBasedMatchConfig.getInvitedPlayerIds(), turnBasedMatchConfig.getAutoMatchCriteria());
    }

    public void zza(zzaad.zzb<Snapshots.CommitSnapshotResult> zzbVar, Snapshot snapshot, SnapshotMetadataChange snapshotMetadataChange) throws RemoteException {
        SnapshotContents snapshotContents = snapshot.getSnapshotContents();
        zzac.zza(!snapshotContents.isClosed(), "Snapshot already closed");
        BitmapTeleporter zzGz = snapshotMetadataChange.zzGz();
        if (zzGz != null) {
            zzGz.zzd(getContext().getCacheDir());
        }
        zzc zzAq = snapshotContents.zzAq();
        snapshotContents.close();
        ((IGamesService) zzxD()).zza(new SnapshotCommittedBinderCallbacks(zzbVar), snapshot.getMetadata().getSnapshotId(), (SnapshotMetadataChangeEntity) snapshotMetadataChange, zzAq);
    }

    public void zza(zzaad.zzb<Status> zzbVar, VideoConfiguration videoConfiguration, Videos.CaptureRuntimeErrorCallback captureRuntimeErrorCallback) throws RemoteException {
        ((IGamesService) zzxD()).zza(new CaptureStartedBinderCallbacks(zzbVar, captureRuntimeErrorCallback), videoConfiguration);
    }

    public void zza(zzaad.zzb<Achievements.UpdateAchievementResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zza(zzbVar == null ? null : new AchievementUpdatedBinderCallback(zzbVar), str, this.zzaZx.zzFD(), this.zzaZx.zzFC());
    }

    public void zza(zzaad.zzb<Achievements.UpdateAchievementResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzxD()).zza(zzbVar == null ? null : new AchievementUpdatedBinderCallback(zzbVar), str, i, this.zzaZx.zzFD(), this.zzaZx.zzFC());
    }

    public void zza(zzaad.zzb<Leaderboards.LoadScoresResult> zzbVar, String str, int i, int i2, int i3, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zza(new LeaderboardScoresLoadedBinderCallback(zzbVar), str, i, i2, i3, z);
    }

    public void zza(zzaad.zzb<Players.LoadPlayersResult> zzbVar, String str, int i, boolean z, boolean z2) throws RemoteException {
        char c = 65535;
        switch (str.hashCode()) {
            case 156408498:
                if (str.equals("played_with")) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                ((IGamesService) zzxD()).zzd(new PlayersLoadedBinderCallback(zzbVar), str, i, z, z2);
                return;
            default:
                String valueOf = String.valueOf(str);
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid player collection: ".concat(valueOf) : new String("Invalid player collection: "));
        }
    }

    public void zza(zzaad.zzb<TurnBasedMultiplayer.LoadMatchesResult> zzbVar, String str, int i, int[] iArr) throws RemoteException {
        ((IGamesService) zzxD()).zza(new TurnBasedMatchesLoadedBinderCallbacks(zzbVar), str, i, iArr);
    }

    public void zza(zzaad.zzb<Leaderboards.SubmitScoreResult> zzbVar, String str, long j, String str2) throws RemoteException {
        ((IGamesService) zzxD()).zza(zzbVar == null ? null : new SubmitScoreBinderCallbacks(zzbVar), str, j, str2);
    }

    public void zza(zzaad.zzb<TurnBasedMultiplayer.LeaveMatchResult> zzbVar, String str, String str2) throws RemoteException {
        ((IGamesService) zzxD()).zzc(new TurnBasedMatchLeftBinderCallbacks(zzbVar), str, str2);
    }

    public void zza(zzaad.zzb<Leaderboards.LoadPlayerScoreResult> zzbVar, String str, String str2, int i, int i2) throws RemoteException {
        ((IGamesService) zzxD()).zza(new PlayerLeaderboardScoreLoadedBinderCallback(zzbVar), str, str2, i, i2);
    }

    public void zza(zzaad.zzb<Requests.LoadRequestsResult> zzbVar, String str, String str2, int i, int i2, int i3) throws RemoteException {
        ((IGamesService) zzxD()).zza(new RequestsLoadedBinderCallbacks(zzbVar), str, str2, i, i2, i3);
    }

    public void zza(zzaad.zzb<Leaderboards.LoadScoresResult> zzbVar, String str, String str2, int i, int i2, int i3, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zza(new LeaderboardScoresLoadedBinderCallback(zzbVar), str, str2, i, i2, i3, z);
    }

    public void zza(zzaad.zzb<Players.LoadPlayersResult> zzbVar, String str, String str2, int i, boolean z, boolean z2) throws RemoteException {
        char c = 65535;
        switch (str.hashCode()) {
            case -1049482625:
                if (str.equals("nearby")) {
                    c = 3;
                    break;
                }
                break;
            case 156408498:
                if (str.equals("played_with")) {
                    c = 2;
                    break;
                }
                break;
            case 782949780:
                if (str.equals("circled")) {
                    c = 0;
                    break;
                }
                break;
            case 1919070037:
                if (str.equals("connected_1p")) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
                ((IGamesService) zzxD()).zza(new PlayersLoadedBinderCallback(zzbVar), str, str2, i, z, z2);
                return;
            default:
                String valueOf = String.valueOf(str);
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid player collection: ".concat(valueOf) : new String("Invalid player collection: "));
        }
    }

    public void zza(zzaad.zzb<Snapshots.OpenSnapshotResult> zzbVar, String str, String str2, SnapshotMetadataChange snapshotMetadataChange, SnapshotContents snapshotContents) throws RemoteException {
        zzac.zza(!snapshotContents.isClosed(), "SnapshotContents already closed");
        BitmapTeleporter zzGz = snapshotMetadataChange.zzGz();
        if (zzGz != null) {
            zzGz.zzd(getContext().getCacheDir());
        }
        zzc zzAq = snapshotContents.zzAq();
        snapshotContents.close();
        ((IGamesService) zzxD()).zza(new SnapshotOpenedBinderCallbacks(zzbVar), str, str2, (SnapshotMetadataChangeEntity) snapshotMetadataChange, zzAq);
    }

    public void zza(zzaad.zzb<Leaderboards.LeaderboardMetadataResult> zzbVar, String str, String str2, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzb(new LeaderboardsLoadedBinderCallback(zzbVar), str, str2, z);
    }

    public void zza(zzaad.zzb<Quests.LoadQuestsResult> zzbVar, String str, String str2, boolean z, String[] strArr) throws RemoteException {
        this.zzaZt.flush();
        ((IGamesService) zzxD()).zza(new QuestsLoadedBinderCallbacks(zzbVar), str, str2, strArr, z);
    }

    public void zza(zzaad.zzb<Quests.LoadQuestsResult> zzbVar, String str, String str2, int[] iArr, int i, boolean z) throws RemoteException {
        this.zzaZt.flush();
        ((IGamesService) zzxD()).zza(new QuestsLoadedBinderCallbacks(zzbVar), str, str2, iArr, i, z);
    }

    public void zza(zzaad.zzb<Requests.UpdateRequestsResult> zzbVar, String str, String str2, String[] strArr) throws RemoteException {
        ((IGamesService) zzxD()).zza(new RequestsUpdatedBinderCallbacks(zzbVar), str, str2, strArr);
    }

    public void zza(zzaad.zzb<Players.LoadPlayersResult> zzbVar, String str, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzf(new PlayersLoadedBinderCallback(zzbVar), str, z);
    }

    public void zza(zzaad.zzb<Snapshots.OpenSnapshotResult> zzbVar, String str, boolean z, int i) throws RemoteException {
        ((IGamesService) zzxD()).zza(new SnapshotOpenedBinderCallbacks(zzbVar), str, z, i);
    }

    public void zza(zzaad.zzb<Players.UpdateGamerProfileResult> zzbVar, String str, boolean z, String str2, boolean z2, boolean z3) throws RemoteException {
        ((IGamesService) zzxD()).zza(new GamerProfileUpdatedBinderCallback(zzbVar), str, z, str2, z2, z3);
    }

    public void zza(zzaad.zzb<TurnBasedMultiplayer.UpdateMatchResult> zzbVar, String str, byte[] bArr, String str2, ParticipantResult[] participantResultArr) throws RemoteException {
        ((IGamesService) zzxD()).zza(new TurnBasedMatchUpdatedBinderCallbacks(zzbVar), str, bArr, str2, participantResultArr);
    }

    public void zza(zzaad.zzb<TurnBasedMultiplayer.UpdateMatchResult> zzbVar, String str, byte[] bArr, ParticipantResult[] participantResultArr) throws RemoteException {
        ((IGamesService) zzxD()).zza(new TurnBasedMatchUpdatedBinderCallbacks(zzbVar), str, bArr, participantResultArr);
    }

    public void zza(zzaad.zzb<Requests.SendRequestResult> zzbVar, String str, String[] strArr, int i, byte[] bArr, int i2) throws RemoteException {
        ((IGamesService) zzxD()).zza(new RequestSentBinderCallbacks(zzbVar), str, strArr, i, bArr, i2);
    }

    public void zza(zzaad.zzb<Players.LoadPlayersResult> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzc(new PlayersLoadedBinderCallback(zzbVar), z);
    }

    public void zza(zzaad.zzb<Players.LoadProfileSettingsResult> zzbVar, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzxD()).zza(new ProfileSettingsLoadedBinderCallback(zzbVar), z, z2);
    }

    public void zza(zzaad.zzb<Status> zzbVar, boolean z, boolean z2, Bundle bundle) throws RemoteException {
        ((IGamesService) zzxD()).zza(new ContactSettingsUpdatedBinderCallback(zzbVar), z, z2, bundle);
    }

    public void zza(zzaad.zzb<Events.LoadEventsResult> zzbVar, boolean z, String... strArr) throws RemoteException {
        this.zzaZt.flush();
        ((IGamesService) zzxD()).zza(new EventsLoadedBinderCallback(zzbVar), z, strArr);
    }

    public void zza(zzaad.zzb<Quests.LoadQuestsResult> zzbVar, int[] iArr, int i, boolean z) throws RemoteException {
        this.zzaZt.flush();
        ((IGamesService) zzxD()).zza(new QuestsLoadedBinderCallbacks(zzbVar), iArr, i, z);
    }

    public void zza(zzaad.zzb<Players.LoadPlayersResult> zzbVar, String[] strArr) throws RemoteException {
        ((IGamesService) zzxD()).zzc(new PlayersLoadedBinderCallback(zzbVar), strArr);
    }

    public void zza(zzabh<OnInvitationReceivedListener> zzabhVar) {
        try {
            ((IGamesService) zzxD()).zza(new InvitationReceivedBinderCallback(zzabhVar), this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public void zza(zzabh<RoomUpdateListener> zzabhVar, zzabh<RoomStatusUpdateListener> zzabhVar2, zzabh<RealTimeMessageReceivedListener> zzabhVar3, RoomConfig roomConfig) {
        try {
            ((IGamesService) zzxD()).zza((IGamesCallbacks) new RoomBinderCallbacks(zzabhVar, zzabhVar2, zzabhVar3), (IBinder) this.zzaZz, roomConfig.getVariant(), roomConfig.getInvitedPlayerIds(), roomConfig.getAutoMatchCriteria(), false, this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public void zza(zzabh<RoomUpdateListener> zzabhVar, String str) {
        try {
            ((IGamesService) zzxD()).zzc(new RoomBinderCallbacks(zzabhVar), str);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public String zzaC(boolean z) {
        if (!z || this.zzaZv == null) {
            try {
                return ((IGamesService) zzxD()).zzFo();
            } catch (RemoteException e) {
                zzd(e);
                return null;
            }
        }
        return this.zzaZv.getPlayerId();
    }

    public Intent zzb(int i, int i2, boolean z) {
        try {
            return ((IGamesService) zzxD()).zzb(i, i2, z);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public void zzb(IGamesService iGamesService) {
        try {
            iGamesService.zza(new PopupLocationInfoBinderCallbacks(this.zzaZx), this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public void zzb(zzaad.zzb<Videos.CaptureAvailableResult> zzbVar, int i) throws RemoteException {
        ((IGamesService) zzxD()).zzc((IGamesCallbacks) new CaptureAvailableBinderCallback(zzbVar), i);
    }

    public void zzb(zzaad.zzb<Players.LoadPlayersResult> zzbVar, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzxD()).zzb(new PlayersLoadedBinderCallback(zzbVar), i, z, z2);
    }

    public void zzb(zzaad.zzb<Achievements.UpdateAchievementResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzb(zzbVar == null ? null : new AchievementUpdatedBinderCallback(zzbVar), str, this.zzaZx.zzFD(), this.zzaZx.zzFC());
    }

    public void zzb(zzaad.zzb<Achievements.UpdateAchievementResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzxD()).zzb(zzbVar == null ? null : new AchievementUpdatedBinderCallback(zzbVar), str, i, this.zzaZx.zzFD(), this.zzaZx.zzFC());
    }

    public void zzb(zzaad.zzb<Leaderboards.LoadScoresResult> zzbVar, String str, int i, int i2, int i3, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzb(new LeaderboardScoresLoadedBinderCallback(zzbVar), str, i, i2, i3, z);
    }

    public void zzb(zzaad.zzb<Players.LoadPlayersResult> zzbVar, String str, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzxD()).zzb(new PlayersLoadedBinderCallback(zzbVar), str, i, z, z2);
    }

    public void zzb(zzaad.zzb<Quests.ClaimMilestoneResult> zzbVar, String str, String str2) throws RemoteException {
        this.zzaZt.flush();
        ((IGamesService) zzxD()).zzf(new QuestMilestoneClaimBinderCallbacks(zzbVar, str2), str, str2);
    }

    public void zzb(zzaad.zzb<Leaderboards.LoadScoresResult> zzbVar, String str, String str2, int i, int i2, int i3, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzb(new LeaderboardScoresLoadedBinderCallback(zzbVar), str, str2, i, i2, i3, z);
    }

    public void zzb(zzaad.zzb<Players.LoadPlayersResult> zzbVar, String str, String str2, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzxD()).zzb(new PlayersLoadedBinderCallback(zzbVar), str, str2, i, z, z2);
    }

    public void zzb(zzaad.zzb<Achievements.LoadAchievementsResult> zzbVar, String str, String str2, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zza(new AchievementsLoadedBinderCallback(zzbVar), str, str2, z);
    }

    public void zzb(zzaad.zzb<Leaderboards.LeaderboardMetadataResult> zzbVar, String str, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzc(new LeaderboardsLoadedBinderCallback(zzbVar), str, z);
    }

    public void zzb(zzaad.zzb<Leaderboards.LeaderboardMetadataResult> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzb(new LeaderboardsLoadedBinderCallback(zzbVar), z);
    }

    public void zzb(zzaad.zzb<Quests.LoadQuestsResult> zzbVar, boolean z, String[] strArr) throws RemoteException {
        this.zzaZt.flush();
        ((IGamesService) zzxD()).zza(new QuestsLoadedBinderCallbacks(zzbVar), strArr, z);
    }

    public void zzb(zzaad.zzb<Requests.UpdateRequestsResult> zzbVar, String[] strArr) throws RemoteException {
        ((IGamesService) zzxD()).zza(new RequestsUpdatedBinderCallbacks(zzbVar), strArr);
    }

    public void zzb(zzabh<OnTurnBasedMatchUpdateReceivedListener> zzabhVar) {
        try {
            ((IGamesService) zzxD()).zzb(new MatchUpdateReceivedBinderCallback(zzabhVar), this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public void zzb(zzabh<RoomUpdateListener> zzabhVar, zzabh<RoomStatusUpdateListener> zzabhVar2, zzabh<RealTimeMessageReceivedListener> zzabhVar3, RoomConfig roomConfig) {
        try {
            ((IGamesService) zzxD()).zza((IGamesCallbacks) new RoomBinderCallbacks(zzabhVar, zzabhVar2, zzabhVar3), (IBinder) this.zzaZz, roomConfig.getInvitationId(), false, this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public void zzb(String str, zzaad.zzb<Games.GetServerAuthCodeResult> zzbVar) throws RemoteException {
        zzac.zzh(str, "Please provide a valid serverClientId");
        ((IGamesService) zzxD()).zza(str, new GetServerAuthCodeBinderCallbacks(zzbVar));
    }

    public Intent zzc(int i, int i2, boolean z) {
        try {
            return ((IGamesService) zzxD()).zzc(i, i2, z);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public Intent zzc(int[] iArr) {
        try {
            return ((IGamesService) zzxD()).zzc(iArr);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    @Override // com.google.android.gms.common.internal.zzl
    protected Set<Scope> zzc(Set<Scope> set) {
        boolean z;
        boolean z2;
        Scope scope = new Scope(Scopes.GAMES);
        Scope scope2 = new Scope("https://www.googleapis.com/auth/games.firstparty");
        boolean z3 = false;
        boolean z4 = false;
        for (Scope scope3 : set) {
            if (scope3.equals(scope)) {
                z = z3;
                z2 = true;
            } else if (scope3.equals(scope2)) {
                z = true;
                z2 = z4;
            } else {
                z = z3;
                z2 = z4;
            }
            z4 = z2;
            z3 = z;
        }
        if (z3) {
            zzac.zza(!z4, "Cannot have both %s and %s!", Scopes.GAMES, "https://www.googleapis.com/auth/games.firstparty");
        } else {
            zzac.zza(z4, "Games APIs requires %s to function.", Scopes.GAMES);
        }
        return set;
    }

    public void zzc(zzaad.zzb<Social.LoadInvitesResult> zzbVar, int i) throws RemoteException {
        ((IGamesService) zzxD()).zzb((IGamesCallbacks) new InvitesLoadedBinderCallback(zzbVar), i);
    }

    public void zzc(zzaad.zzb<Players.LoadPlayersResult> zzbVar, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzxD()).zzc(new PlayersLoadedBinderCallback(zzbVar), i, z, z2);
    }

    public void zzc(zzaad.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzk(new TurnBasedMatchInitiatedBinderCallbacks(zzbVar), str);
    }

    public void zzc(zzaad.zzb<Videos.ListVideosResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzxD()).zzd(new ListVideosBinderCallback(zzbVar), str, i);
    }

    public void zzc(zzaad.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbVar, String str, String str2) throws RemoteException {
        ((IGamesService) zzxD()).zzd(new TurnBasedMatchInitiatedBinderCallbacks(zzbVar), str, str2);
    }

    public void zzc(zzaad.zzb<Snapshots.LoadSnapshotsResult> zzbVar, String str, String str2, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzc(new SnapshotsLoadedBinderCallbacks(zzbVar), str, str2, z);
    }

    public void zzc(zzaad.zzb<Status> zzbVar, String str, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzh(new UpdateHeadlessCapturePermissionBinderCallback(zzbVar), str, z);
    }

    public void zzc(zzaad.zzb<Achievements.LoadAchievementsResult> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zza(new AchievementsLoadedBinderCallback(zzbVar), z);
    }

    public void zzc(zzaad.zzb<Requests.UpdateRequestsResult> zzbVar, String[] strArr) throws RemoteException {
        ((IGamesService) zzxD()).zzb(new RequestsUpdatedBinderCallbacks(zzbVar), strArr);
    }

    public void zzc(zzabh<QuestUpdateListener> zzabhVar) {
        try {
            ((IGamesService) zzxD()).zzd(new QuestUpdateBinderCallback(zzabhVar), this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzcP */
    public IGamesService zzh(IBinder iBinder) {
        return IGamesService.Stub.zzcS(iBinder);
    }

    public void zzd(zzaad.zzb<Players.LoadPlayersResult> zzbVar, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzxD()).zze(new PlayersLoadedBinderCallback(zzbVar), i, z, z2);
    }

    public void zzd(zzaad.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzl(new TurnBasedMatchInitiatedBinderCallbacks(zzbVar), str);
    }

    public void zzd(zzaad.zzb<Players.LoadXpStreamResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzxD()).zzb(new PlayerXpStreamLoadedBinderCallback(zzbVar), str, i);
    }

    public void zzd(zzaad.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbVar, String str, String str2) throws RemoteException {
        ((IGamesService) zzxD()).zze(new TurnBasedMatchInitiatedBinderCallbacks(zzbVar), str, str2);
    }

    public void zzd(zzaad.zzb<Leaderboards.LeaderboardMetadataResult> zzbVar, String str, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzd(new LeaderboardsLoadedBinderCallback(zzbVar), str, z);
    }

    public void zzd(zzaad.zzb<Events.LoadEventsResult> zzbVar, boolean z) throws RemoteException {
        this.zzaZt.flush();
        ((IGamesService) zzxD()).zzf(new EventsLoadedBinderCallback(zzbVar), z);
    }

    public void zzd(zzabh<OnRequestReceivedListener> zzabhVar) {
        try {
            ((IGamesService) zzxD()).zzc(new RequestReceivedBinderCallback(zzabhVar), this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public int zze(byte[] bArr, String str) {
        try {
            return ((IGamesService) zzxD()).zzb(bArr, str, (String[]) null);
        } catch (RemoteException e) {
            zzd(e);
            return -1;
        }
    }

    public void zze(zzaad.zzb<Players.LoadPlayersResult> zzbVar, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzxD()).zzf(new PlayersLoadedBinderCallback(zzbVar), i, z, z2);
    }

    public void zze(zzaad.zzb<TurnBasedMultiplayer.LeaveMatchResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzn(new TurnBasedMatchLeftBinderCallbacks(zzbVar), str);
    }

    public void zze(zzaad.zzb<Players.LoadXpStreamResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzxD()).zzc(new PlayerXpStreamLoadedBinderCallback(zzbVar), str, i);
    }

    public void zze(zzaad.zzb<Notifications.GameMuteStatusChangeResult> zzbVar, String str, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zza(new GameMuteStatusChangedBinderCallback(zzbVar), str, z);
    }

    public void zze(zzaad.zzb<Stats.LoadPlayerStatsResult> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzi(new PlayerStatsLoadedBinderCallbacks(zzbVar), z);
    }

    public void zze(zzabh<Videos.CaptureOverlayStateListener> zzabhVar) {
        try {
            ((IGamesService) zzxD()).zzf(new CaptureOverlayStateBinderCallback(zzabhVar), this.zzaZA);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.games.internal.IGamesService";
    }

    public void zzem(String str) {
        try {
            ((IGamesService) zzxD()).zzeu(str);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public Intent zzen(String str) {
        try {
            return ((IGamesService) zzxD()).zzen(str);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public void zzeo(String str) {
        try {
            ((IGamesService) zzxD()).zza(str, this.zzaZx.zzFD(), this.zzaZx.zzFC());
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.games.service.START";
    }

    public void zzf(zzaad.zzb<Games.GetTokenResult> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzj(new GetAuthTokenBinderCallbacks(zzbVar));
    }

    public void zzf(zzaad.zzb<TurnBasedMultiplayer.CancelMatchResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzm(new TurnBasedMatchCanceledBinderCallbacks(zzbVar), str);
    }

    public void zzf(zzaad.zzb<Invitations.LoadInvitationsResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzxD()).zzb((IGamesCallbacks) new InvitationsLoadedBinderCallback(zzbVar), str, i, false);
    }

    public void zzf(zzaad.zzb<Players.LoadPlayersResult> zzbVar, String str, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzg(new SetPlayerMutedBinderCallback(zzbVar), str, z);
    }

    public void zzf(zzaad.zzb<Snapshots.LoadSnapshotsResult> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzd(new SnapshotsLoadedBinderCallbacks(zzbVar), z);
    }

    public void zzg(Account account) throws RemoteException {
        ((IGamesService) zzxD()).zzg(account);
    }

    public void zzg(zzaad.zzb<GamesMetadata.LoadGamesResult> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzd(new GamesLoadedBinderCallback(zzbVar));
    }

    public void zzg(zzaad.zzb<TurnBasedMultiplayer.LoadMatchResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzo(new TurnBasedMatchLoadedBinderCallbacks(zzbVar), str);
    }

    public void zzg(zzaad.zzb<Requests.LoadRequestSummariesResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzxD()).zza((IGamesCallbacks) new RequestSummariesLoadedBinderCallbacks(zzbVar), str, i);
    }

    public void zzg(zzaad.zzb<Status> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzm(new CapturePausedBinderCallback(zzbVar), z);
    }

    public void zzh(zzaad.zzb<Status> zzbVar) throws RemoteException {
        this.zzaZt.flush();
        ((IGamesService) zzxD()).zza(new SignOutCompleteBinderCallbacks(zzbVar));
    }

    public void zzh(zzaad.zzb<Quests.AcceptQuestResult> zzbVar, String str) throws RemoteException {
        this.zzaZt.flush();
        ((IGamesService) zzxD()).zzt(new QuestAcceptedBinderCallbacks(zzbVar), str);
    }

    public void zzh(zzaad.zzb<Status> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzh(new ProfileSettingsUpdatedBinderCallback(zzbVar), z);
    }

    public void zzi(zzaad.zzb<Videos.CaptureCapabilitiesResult> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzl(new CaptureCapabilitiesBinderCallback(zzbVar));
    }

    public void zzi(zzaad.zzb<Snapshots.DeleteSnapshotResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzq(new SnapshotDeletedBinderCallbacks(zzbVar), str);
    }

    public void zzi(zzaad.zzb<Status> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzj(new DeletePlayerBinderCallback(zzbVar), z);
    }

    public void zziH(int i) {
        this.zzaZx.setGravity(i);
    }

    public void zziI(int i) {
        try {
            ((IGamesService) zzxD()).zziI(i);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public void zzj(zzaad.zzb<Videos.CaptureStateResult> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzv(new CaptureStateBinderCallbacks(zzbVar));
    }

    public void zzj(zzaad.zzb<GamesMetadata.LoadGameInstancesResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzf(new GameInstancesLoadedBinderCallback(zzbVar), str);
    }

    public void zzj(zzaad.zzb<Status> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzk(new UpdateAutoSignInBinderCallback(zzbVar), z);
    }

    public void zzk(zzaad.zzb<Videos.CaptureStreamingAvailabilityResult> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzs(new CaptureStreamingAvailabilityBinderCallback(zzbVar));
    }

    public void zzk(zzaad.zzb<GamesMetadata.LoadGameSearchSuggestionsResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzp(new GameSearchSuggestionsLoadedBinderCallback(zzbVar), str);
    }

    public void zzk(zzaad.zzb<Status> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zzl(new UpdateProfileDiscoverabilityBinderCallback(zzbVar), z);
    }

    public String zzke() {
        try {
            return ((IGamesService) zzxD()).zzke();
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public Intent zzl(String str, int i, int i2) {
        try {
            return ((IGamesService) zzxD()).zzm(str, i, i2);
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public void zzl(zzaad.zzb<Videos.CaptureStreamingMetadataResult> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzq(new CaptureStreamingMetadataBinderCallback(zzbVar));
    }

    public void zzl(zzaad.zzb<Players.LoadXpForGameCategoriesResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzr(new PlayerXpForGameCategoriesLoadedBinderCallback(zzbVar), str);
    }

    public void zzl(zzaad.zzb<Notifications.ContactSettingLoadResult> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzxD()).zze(new ContactSettingsLoadedBinderCallback(zzbVar), z);
    }

    public void zzm(zzaad.zzb<Videos.CaptureStreamingUrlResult> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzr(new CaptureStreamingUrlBinderCallback(zzbVar));
    }

    public void zzm(zzaad.zzb<Invitations.LoadInvitationsResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzj(new InvitationsLoadedBinderCallback(zzbVar), str);
    }

    public void zzn(zzaad.zzb<Status> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzt(new HeadlessCaptureEnabledBinderCallback(zzbVar));
    }

    public void zzn(zzaad.zzb<Notifications.GameMuteStatusLoadResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzi(new GameMuteStatusLoadedBinderCallback(zzbVar), str);
    }

    public void zzo(zzaad.zzb<Status> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzo(new CaptureStreamingEnabledBinderCallback(zzbVar));
    }

    public void zzo(zzaad.zzb<Social.InviteUpdateResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzu(new SendFriendInviteFirstPartyBinderCallback(zzbVar), str);
    }

    public void zzo(String str, int i) {
        this.zzaZt.zzo(str, i);
    }

    public void zzp(zzaad.zzb<Videos.ListVideosResult> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzk(new ListVideosBinderCallback(zzbVar));
    }

    public void zzp(zzaad.zzb<Social.InviteUpdateResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzv(new AcceptFriendInviteFirstPartyBinderCallback(zzbVar), str);
    }

    public void zzp(String str, int i) {
        try {
            ((IGamesService) zzxD()).zzp(str, i);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    public void zzq(zzaad.zzb<Videos.CaptureStoppedResult> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzu(new CaptureStoppedBinderCallbacks(zzbVar));
    }

    public void zzq(zzaad.zzb<Social.InviteUpdateResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzw(new IgnoreFriendInviteFirstPartyBinderCallback(zzbVar), str);
    }

    public void zzq(String str, int i) {
        try {
            ((IGamesService) zzxD()).zzq(str, i);
        } catch (RemoteException e) {
            zzd(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public Bundle zzqL() {
        String locale = getContext().getResources().getConfiguration().locale.toString();
        Bundle zzDP = this.zzaZB.zzDP();
        zzDP.putString("com.google.android.gms.games.key.gamePackageName", this.zzaZu);
        zzDP.putString("com.google.android.gms.games.key.desiredLocale", locale);
        zzDP.putParcelable("com.google.android.gms.games.key.popupWindowToken", new BinderWrapper(this.zzaZx.zzFD()));
        zzDP.putInt("com.google.android.gms.games.key.API_VERSION", 6);
        zzDP.putBundle("com.google.android.gms.games.key.signInOptions", zzbat.zza(zzxW()));
        return zzDP;
    }

    public void zzr(zzaad.zzb<Players.LoadStockProfileImagesResult> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzp(new StockProfileImagesLoadedBinderCallback(zzbVar));
    }

    public void zzr(zzaad.zzb<Social.InviteUpdateResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzx(new CancelFriendInviteFirstPartyBinderCallback(zzbVar), str);
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public boolean zzrd() {
        return true;
    }

    public void zzs(zzaad.zzb<Notifications.InboxCountResult> zzbVar) throws RemoteException {
        ((IGamesService) zzxD()).zzs(new InboxCountsLoadedBinderCallback(zzbVar), (String) null);
    }

    public void zzs(zzaad.zzb<Players.LoadPlayersResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzxD()).zzy(new PlayerUnfriendedBinderCallback(zzbVar), str);
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.internal.zzm.zza
    public Bundle zzuC() {
        try {
            Bundle zzuC = ((IGamesService) zzxD()).zzuC();
            if (zzuC == null) {
                return zzuC;
            }
            zzuC.setClassLoader(GamesClientImpl.class.getClassLoader());
            return zzuC;
        } catch (RemoteException e) {
            zzd(e);
            return null;
        }
    }

    public void zzv(View view) {
        this.zzaZx.zzw(view);
    }
}
