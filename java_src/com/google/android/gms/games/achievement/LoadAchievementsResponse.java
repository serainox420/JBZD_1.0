package com.google.android.gms.games.achievement;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.zze;
import com.google.android.gms.games.achievement.Achievements;
/* loaded from: classes2.dex */
public class LoadAchievementsResponse extends zze<Achievements.LoadAchievementsResult> implements Releasable {
    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
        zzvs().release();
    }
}
