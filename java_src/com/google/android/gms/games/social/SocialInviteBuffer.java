package com.google.android.gms.games.social;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public class SocialInviteBuffer extends AbstractDataBuffer<SocialInvite> {
    public SocialInviteBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: zzjp */
    public SocialInvite mo547get(int i) {
        return new SocialInviteRef(this.zzaBi, i);
    }
}
