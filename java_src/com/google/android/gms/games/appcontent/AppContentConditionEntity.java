package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class AppContentConditionEntity extends GamesAbstractSafeParcelable implements AppContentCondition {
    public static final Parcelable.Creator<AppContentConditionEntity> CREATOR = new AppContentConditionEntityCreator();
    private final String zzaZe;
    private final String zzaZf;
    private final String zzaZg;
    private final Bundle zzaZh;

    public AppContentConditionEntity(AppContentCondition appContentCondition) {
        this.zzaZe = appContentCondition.zzEy();
        this.zzaZf = appContentCondition.zzEz();
        this.zzaZg = appContentCondition.zzEA();
        this.zzaZh = appContentCondition.zzEB();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppContentConditionEntity(String str, String str2, String str3, Bundle bundle) {
        this.zzaZe = str;
        this.zzaZf = str2;
        this.zzaZg = str3;
        this.zzaZh = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(AppContentCondition appContentCondition) {
        return zzaa.hashCode(appContentCondition.zzEy(), appContentCondition.zzEz(), appContentCondition.zzEA(), appContentCondition.zzEB());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(AppContentCondition appContentCondition, Object obj) {
        if (!(obj instanceof AppContentCondition)) {
            return false;
        }
        if (appContentCondition == obj) {
            return true;
        }
        AppContentCondition appContentCondition2 = (AppContentCondition) obj;
        return zzaa.equal(appContentCondition2.zzEy(), appContentCondition.zzEy()) && zzaa.equal(appContentCondition2.zzEz(), appContentCondition.zzEz()) && zzaa.equal(appContentCondition2.zzEA(), appContentCondition.zzEA()) && zzaa.equal(appContentCondition2.zzEB(), appContentCondition.zzEB());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(AppContentCondition appContentCondition) {
        return zzaa.zzv(appContentCondition).zzg("DefaultValue", appContentCondition.zzEy()).zzg("ExpectedValue", appContentCondition.zzEz()).zzg("Predicate", appContentCondition.zzEA()).zzg("PredicateParameters", appContentCondition.zzEB()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        AppContentConditionEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public String zzEA() {
        return this.zzaZg;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public Bundle zzEB() {
        return this.zzaZh;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzEC */
    public AppContentCondition mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public String zzEy() {
        return this.zzaZe;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public String zzEz() {
        return this.zzaZf;
    }
}
