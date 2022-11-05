package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class AppContentSectionRef extends MultiDataBufferRef implements AppContentSection {
    private final int zzaZk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppContentSectionRef(ArrayList<DataHolder> arrayList, int i, int i2) {
        super(arrayList, 0, i);
        this.zzaZk = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return AppContentSectionEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public Bundle getExtras() {
        return AppContentUtils.zzd(this.zzaBi, this.zzaZo, "section_data", this.zzaDL);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String getId() {
        return getString("section_id");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String getTitle() {
        return getString("section_title");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String getType() {
        return getString("section_type");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return AppContentSectionEntity.zza(this);
    }

    public String toString() {
        return AppContentSectionEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((AppContentSectionEntity) ((AppContentSection) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String zzEE() {
        return getString("section_card_type");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzEF */
    public AppContentSection mo520freeze() {
        return new AppContentSectionEntity(this);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    /* renamed from: zzEG */
    public ArrayList<AppContentAction> getActions() {
        return AppContentUtils.zza(this.zzaBi, this.zzaZo, "section_actions", this.zzaDL);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    /* renamed from: zzEH */
    public ArrayList<AppContentAnnotation> zzEt() {
        return AppContentUtils.zzb(this.zzaBi, this.zzaZo, "section_annotations", this.zzaDL);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    /* renamed from: zzEI */
    public ArrayList<AppContentCard> zzED() {
        ArrayList<AppContentCard> arrayList = new ArrayList<>(this.zzaZk);
        for (int i = 0; i < this.zzaZk; i++) {
            arrayList.add(new AppContentCardRef(this.zzaZo, this.zzaDL + i));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String zzEj() {
        return getString("section_content_description");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String zzEv() {
        return getString("section_subtitle");
    }
}
