package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public class ProfileSettingsEntity extends GamesAbstractSafeParcelable implements Players.LoadProfileSettingsResult {
    public static final Parcelable.Creator<ProfileSettingsEntity> CREATOR = new ProfileSettingsEntityCreator();
    private final boolean zzaYn;
    private final String zzaYp;
    private final Status zzair;
    private final boolean zzbdr;
    private final boolean zzbds;
    private final StockProfileImageEntity zzbdt;
    private final boolean zzbdu;
    private final boolean zzbdv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProfileSettingsEntity(Status status, String str, boolean z, boolean z2, boolean z3, StockProfileImageEntity stockProfileImageEntity, boolean z4, boolean z5) {
        this.zzair = status;
        this.zzaYp = str;
        this.zzbdr = z;
        this.zzaYn = z2;
        this.zzbds = z3;
        this.zzbdt = stockProfileImageEntity;
        this.zzbdu = z4;
        this.zzbdv = z5;
    }

    public ProfileSettingsEntity(DataHolder dataHolder) {
        this.zzair = new Status(dataHolder.getStatusCode());
        if (!this.zzair.isSuccess() || dataHolder.getCount() <= 0) {
            this.zzaYp = null;
            this.zzbdr = false;
            this.zzaYn = false;
            this.zzbds = false;
            this.zzbdt = null;
            this.zzbdu = false;
            this.zzbdv = false;
            return;
        }
        int zzcI = dataHolder.zzcI(0);
        this.zzaYp = dataHolder.zzd("gamer_tag", 0, zzcI);
        this.zzbdr = dataHolder.zze("gamer_tag_explicitly_set", 0, zzcI);
        this.zzaYn = dataHolder.zze("profile_visible", 0, zzcI);
        this.zzbds = dataHolder.zze("profile_visibility_explicitly_set", 0, zzcI);
        String zzd = dataHolder.zzd("stock_avatar_url", 0, zzcI);
        String zzd2 = dataHolder.zzd("stock_avatar_uri", 0, zzcI);
        if (TextUtils.isEmpty(zzd) || TextUtils.isEmpty(zzd2)) {
            this.zzbdt = null;
        } else {
            this.zzbdt = new StockProfileImageEntity(zzd, Uri.parse(zzd2));
        }
        this.zzbdu = dataHolder.zze("profile_discoverable", 0, zzcI);
        this.zzbdv = dataHolder.zze("auto_sign_in", 0, zzcI);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Players.LoadProfileSettingsResult)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Players.LoadProfileSettingsResult loadProfileSettingsResult = (Players.LoadProfileSettingsResult) obj;
        return zzaa.equal(this.zzaYp, loadProfileSettingsResult.zzDQ()) && zzaa.equal(Boolean.valueOf(this.zzbdr), Boolean.valueOf(loadProfileSettingsResult.zzEa())) && zzaa.equal(Boolean.valueOf(this.zzaYn), Boolean.valueOf(loadProfileSettingsResult.zzDT())) && zzaa.equal(Boolean.valueOf(this.zzbds), Boolean.valueOf(loadProfileSettingsResult.zzDY())) && zzaa.equal(this.zzair, loadProfileSettingsResult.getStatus()) && zzaa.equal(this.zzbdt, loadProfileSettingsResult.zzDZ()) && zzaa.equal(Boolean.valueOf(this.zzbdu), Boolean.valueOf(loadProfileSettingsResult.zzEb())) && zzaa.equal(Boolean.valueOf(this.zzbdv), Boolean.valueOf(loadProfileSettingsResult.zzEc()));
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaYp, Boolean.valueOf(this.zzbdr), Boolean.valueOf(this.zzaYn), Boolean.valueOf(this.zzbds), this.zzair, this.zzbdt, Boolean.valueOf(this.zzbdu), Boolean.valueOf(this.zzbdv));
    }

    public String toString() {
        return zzaa.zzv(this).zzg("GamerTag", this.zzaYp).zzg("IsGamerTagExplicitlySet", Boolean.valueOf(this.zzbdr)).zzg("IsProfileVisible", Boolean.valueOf(this.zzaYn)).zzg("IsVisibilityExplicitlySet", Boolean.valueOf(this.zzbds)).zzg("Status", this.zzair).zzg("StockProfileImage", this.zzbdt).zzg("IsProfileDiscoverable", Boolean.valueOf(this.zzbdu)).zzg("AutoSignIn", Boolean.valueOf(this.zzbdv)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ProfileSettingsEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public String zzDQ() {
        return this.zzaYp;
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public boolean zzDT() {
        return this.zzaYn;
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public boolean zzDY() {
        return this.zzbds;
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public StockProfileImage zzDZ() {
        return this.zzbdt;
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public boolean zzEa() {
        return this.zzbdr;
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public boolean zzEb() {
        return this.zzbdu;
    }

    @Override // com.google.android.gms.games.Players.LoadProfileSettingsResult
    public boolean zzEc() {
        return this.zzbdv;
    }
}
