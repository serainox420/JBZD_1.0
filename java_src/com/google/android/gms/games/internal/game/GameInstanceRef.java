package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.constants.PlatformType;
/* loaded from: classes2.dex */
public final class GameInstanceRef extends zzc implements GameInstance {
    /* JADX INFO: Access modifiers changed from: package-private */
    public GameInstanceRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    public String getApplicationId() {
        return getString("external_game_id");
    }

    public String getDisplayName() {
        return getString("instance_display_name");
    }

    public String getPackageName() {
        return getString("package_name");
    }

    public String toString() {
        return zzaa.zzv(this).zzg("ApplicationId", getApplicationId()).zzg("DisplayName", getDisplayName()).zzg("SupportsRealTime", Boolean.valueOf(zzFP())).zzg("SupportsTurnBased", Boolean.valueOf(zzFQ())).zzg("PlatformType", PlatformType.zziL(zzCn())).zzg("PackageName", getPackageName()).zzg("PiracyCheckEnabled", Boolean.valueOf(zzFR())).zzg("Installed", Boolean.valueOf(zzFS())).toString();
    }

    public int zzCn() {
        return getInteger("platform_type");
    }

    public boolean zzFP() {
        return getInteger("real_time_support") > 0;
    }

    public boolean zzFQ() {
        return getInteger("turn_based_support") > 0;
    }

    public boolean zzFR() {
        return getInteger("piracy_check") > 0;
    }

    public boolean zzFS() {
        return getInteger("installed") > 0;
    }
}
