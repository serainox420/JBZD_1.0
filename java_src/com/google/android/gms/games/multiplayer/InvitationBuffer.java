package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzf;
/* loaded from: classes2.dex */
public final class InvitationBuffer extends zzf<Invitation> {
    public InvitationBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.data.zzf
    /* renamed from: zzt */
    public Invitation zzo(int i, int i2) {
        return new InvitationRef(this.zzaBi, i, i2);
    }

    @Override // com.google.android.gms.common.data.zzf
    protected String zzxn() {
        return "external_invitation_id";
    }
}
