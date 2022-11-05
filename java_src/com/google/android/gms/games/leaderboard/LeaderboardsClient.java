package com.google.android.gms.games.leaderboard;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.zzc;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzabv;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
public class LeaderboardsClient extends zzc<Games.GamesOptions> {

    /* renamed from: com.google.android.gms.games.leaderboard.LeaderboardsClient$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass1 extends zzabv<GamesClientImpl, Intent> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzabv
        public void zza(GamesClientImpl gamesClientImpl, TaskCompletionSource<Intent> taskCompletionSource) throws RemoteException {
            taskCompletionSource.setResult(gamesClientImpl.zzES());
        }
    }

    /* renamed from: com.google.android.gms.games.leaderboard.LeaderboardsClient$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass2 extends zzabv<GamesClientImpl, Intent> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzabv
        public void zza(GamesClientImpl gamesClientImpl, TaskCompletionSource<Intent> taskCompletionSource) throws RemoteException {
            taskCompletionSource.setResult(gamesClientImpl.zzl(null, -1, -1));
        }
    }

    /* renamed from: com.google.android.gms.games.leaderboard.LeaderboardsClient$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass3 extends zzabv<GamesClientImpl, Intent> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzabv
        public void zza(GamesClientImpl gamesClientImpl, TaskCompletionSource<Intent> taskCompletionSource) throws RemoteException {
            taskCompletionSource.setResult(gamesClientImpl.zzl(null, 0, -1));
        }
    }

    /* renamed from: com.google.android.gms.games.leaderboard.LeaderboardsClient$4  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass4 extends zzabv<GamesClientImpl, Intent> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzabv
        public void zza(GamesClientImpl gamesClientImpl, TaskCompletionSource<Intent> taskCompletionSource) throws RemoteException {
            taskCompletionSource.setResult(gamesClientImpl.zzl(null, 0, 0));
        }
    }

    /* renamed from: com.google.android.gms.games.leaderboard.LeaderboardsClient$5  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass5 extends zzabv<GamesClientImpl, Intent> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzabv
        public void zza(GamesClientImpl gamesClientImpl, TaskCompletionSource<Intent> taskCompletionSource) throws RemoteException {
            Intent zzl = gamesClientImpl.zzl(null, -1, -1);
            if (zzl != null) {
                zzl.putExtra("com.google.android.gms.games.GAME_PACKAGE_NAME", (String) null);
            }
            taskCompletionSource.setResult(zzl);
        }
    }
}
