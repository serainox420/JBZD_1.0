package com.google.android.gms.games.video;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public final class CaptureState {
    private final boolean zzaqO;
    private final boolean zzbfP;
    private final int zzbfQ;
    private final int zzbfR;
    private final boolean zzuo;

    private CaptureState(boolean z, int i, int i2, boolean z2, boolean z3) {
        zzac.zzax(VideoConfiguration.isValidCaptureMode(i, true));
        zzac.zzax(VideoConfiguration.isValidQualityLevel(i2, true));
        this.zzbfP = z;
        this.zzbfQ = i;
        this.zzbfR = i2;
        this.zzaqO = z2;
        this.zzuo = z3;
    }

    public static CaptureState zzC(Bundle bundle) {
        if (bundle == null || bundle.get("IsCapturing") == null) {
            return null;
        }
        return new CaptureState(bundle.getBoolean("IsCapturing", false), bundle.getInt("CaptureMode", -1), bundle.getInt("CaptureQuality", -1), bundle.getBoolean("IsOverlayVisible", false), bundle.getBoolean("IsPaused", false));
    }

    public int getCaptureMode() {
        return this.zzbfQ;
    }

    public int getCaptureQuality() {
        return this.zzbfR;
    }

    public boolean isCapturing() {
        return this.zzbfP;
    }

    public boolean isOverlayVisible() {
        return this.zzaqO;
    }

    public boolean isPaused() {
        return this.zzuo;
    }

    public String toString() {
        return zzaa.zzv(this).zzg("IsCapturing", Boolean.valueOf(this.zzbfP)).zzg("CaptureMode", Integer.valueOf(this.zzbfQ)).zzg("CaptureQuality", Integer.valueOf(this.zzbfR)).zzg("IsOverlayVisible", Boolean.valueOf(this.zzaqO)).zzg("IsPaused", Boolean.valueOf(this.zzuo)).toString();
    }
}
