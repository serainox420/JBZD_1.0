package com.google.android.gms.games.internal.notification;

import com.google.android.gms.common.data.AbstractDataBuffer;
/* loaded from: classes2.dex */
public final class GameNotificationBuffer extends AbstractDataBuffer<GameNotification> {
    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: zziU */
    public GameNotification mo547get(int i) {
        return new GameNotificationRef(this.zzaBi, i);
    }
}
