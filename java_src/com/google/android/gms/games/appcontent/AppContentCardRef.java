package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class AppContentCardRef extends MultiDataBufferRef implements AppContentCard {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AppContentCardRef(ArrayList<DataHolder> arrayList, int i) {
        super(arrayList, 0, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return AppContentCardEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public List<AppContentAction> getActions() {
        return AppContentUtils.zza(this.zzaBi, this.zzaZo, "card_actions", this.zzaDL);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String getDescription() {
        return getString("card_description");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public Bundle getExtras() {
        return AppContentUtils.zzd(this.zzaBi, this.zzaZo, "card_data", this.zzaDL);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String getId() {
        return getString("card_id");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String getTitle() {
        return getString("card_title");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String getType() {
        return getString("card_type");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return AppContentCardEntity.zza(this);
    }

    public String toString() {
        return AppContentCardEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((AppContentCardEntity) ((AppContentCard) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public List<AppContentCondition> zzEi() {
        return AppContentUtils.zzc(this.zzaBi, this.zzaZo, "card_conditions", this.zzaDL);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String zzEj() {
        return getString("card_content_description");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public List<AppContentAnnotation> zzEt() {
        return AppContentUtils.zzb(this.zzaBi, this.zzaZo, "card_annotations", this.zzaDL);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public int zzEu() {
        return getInteger("card_current_steps");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String zzEv() {
        return getString("card_subtitle");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public int zzEw() {
        return getInteger("card_total_steps");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzEx */
    public AppContentCard mo520freeze() {
        return new AppContentCardEntity(this);
    }
}
