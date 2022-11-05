package com.google.android.gms.games.achievement;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.zzc;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzabv;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
public class AchievementsClient extends zzc<Games.GamesOptions> {

    /* renamed from: com.google.android.gms.games.achievement.AchievementsClient$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass1 extends zzabv<GamesClientImpl, Intent> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzabv
        public void zza(GamesClientImpl gamesClientImpl, TaskCompletionSource<Intent> taskCompletionSource) throws RemoteException {
            taskCompletionSource.setResult(gamesClientImpl.zzET());
        }
    }

    /* renamed from: com.google.android.gms.games.achievement.AchievementsClient$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass2 extends zzabv<GamesClientImpl, Intent> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzabv
        public void zza(GamesClientImpl gamesClientImpl, TaskCompletionSource<Intent> taskCompletionSource) throws RemoteException {
            taskCompletionSource.setResult(gamesClientImpl.zza((AchievementEntity) null));
        }
    }
}
