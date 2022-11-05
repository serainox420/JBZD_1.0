package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class AppContentConditionRef extends MultiDataBufferRef implements AppContentCondition {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AppContentConditionRef(ArrayList<DataHolder> arrayList, int i) {
        super(arrayList, 4, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return AppContentConditionEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return AppContentConditionEntity.zza(this);
    }

    public String toString() {
        return AppContentConditionEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((AppContentConditionEntity) ((AppContentCondition) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public String zzEA() {
        return getString("condition_predicate");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public Bundle zzEB() {
        return AppContentUtils.zzd(this.zzaBi, this.zzaZo, "condition_predicate_parameters", this.zzaDL);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzEC */
    public AppContentCondition mo520freeze() {
        return new AppContentConditionEntity(this);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public String zzEy() {
        return getString("condition_default_value");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCondition
    public String zzEz() {
        return getString("condition_expected_value");
    }
}
