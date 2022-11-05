package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
@zzme
/* loaded from: classes.dex */
public class zznx implements RewardItem {
    private final zznt zzVp;

    public zznx(zznt zzntVar) {
        this.zzVp = zzntVar;
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public int getAmount() {
        if (this.zzVp == null) {
            return 0;
        }
        try {
            return this.zzVp.getAmount();
        } catch (RemoteException e) {
            zzqf.zzc("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public String getType() {
        if (this.zzVp == null) {
            return null;
        }
        try {
            return this.zzVp.getType();
        } catch (RemoteException e) {
            zzqf.zzc("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
