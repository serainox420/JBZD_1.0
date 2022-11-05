package com.google.android.gms.internal;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.doubleclick.CustomRenderedAd;
@zzme
/* loaded from: classes.dex */
public class zzgn implements CustomRenderedAd {
    private final zzgo zzFW;

    public zzgn(zzgo zzgoVar) {
        this.zzFW = zzgoVar;
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public String getBaseUrl() {
        try {
            return this.zzFW.zzfG();
        } catch (RemoteException e) {
            zzqf.zzc("Could not delegate getBaseURL to CustomRenderedAd", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public String getContent() {
        try {
            return this.zzFW.getContent();
        } catch (RemoteException e) {
            zzqf.zzc("Could not delegate getContent to CustomRenderedAd", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public void onAdRendered(View view) {
        try {
            this.zzFW.zzi(view != null ? com.google.android.gms.dynamic.zzd.zzA(view) : null);
        } catch (RemoteException e) {
            zzqf.zzc("Could not delegate onAdRendered to CustomRenderedAd", e);
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public void recordClick() {
        try {
            this.zzFW.recordClick();
        } catch (RemoteException e) {
            zzqf.zzc("Could not delegate recordClick to CustomRenderedAd", e);
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public void recordImpression() {
        try {
            this.zzFW.recordImpression();
        } catch (RemoteException e) {
            zzqf.zzc("Could not delegate recordImpression to CustomRenderedAd", e);
        }
    }
}
