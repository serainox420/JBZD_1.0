package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.CampaignTrackingService;
/* loaded from: classes2.dex */
public final class InstallReferrerReceiver extends CampaignTrackingReceiver {
    @Override // com.google.android.gms.analytics.CampaignTrackingReceiver
    protected Class<? extends CampaignTrackingService> zzms() {
        return InstallReferrerService.class;
    }

    @Override // com.google.android.gms.analytics.CampaignTrackingReceiver
    protected void zzw(Context context, String str) {
        zzbf.zzhk(str);
        zzbf.zzN(context, str);
    }
}
