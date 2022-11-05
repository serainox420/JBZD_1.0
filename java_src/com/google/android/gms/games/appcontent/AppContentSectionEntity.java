package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class AppContentSectionEntity extends GamesAbstractSafeParcelable implements AppContentSection {
    public static final Parcelable.Creator<AppContentSectionEntity> CREATOR = new AppContentSectionEntityCreator();
    private final ArrayList<AppContentActionEntity> mActions;
    private final Bundle mExtras;
    private final String zzGV;
    private final String zzUA;
    private final ArrayList<AppContentAnnotationEntity> zzaZa;
    private final String zzaZc;
    private final ArrayList<AppContentCardEntity> zzaZi;
    private final String zzaZj;
    private final String zzamJ;
    private final String zzaty;

    public AppContentSectionEntity(AppContentSection appContentSection) {
        this.zzaZj = appContentSection.zzEE();
        this.zzaty = appContentSection.zzEj();
        this.mExtras = appContentSection.getExtras();
        this.zzGV = appContentSection.getId();
        this.zzaZc = appContentSection.zzEv();
        this.zzamJ = appContentSection.getTitle();
        this.zzUA = appContentSection.getType();
        List<AppContentAction> actions = appContentSection.getActions();
        int size = actions.size();
        this.mActions = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.mActions.add((AppContentActionEntity) actions.get(i).mo520freeze());
        }
        List<AppContentCard> zzED = appContentSection.zzED();
        int size2 = zzED.size();
        this.zzaZi = new ArrayList<>(size2);
        for (int i2 = 0; i2 < size2; i2++) {
            this.zzaZi.add((AppContentCardEntity) zzED.get(i2).mo520freeze());
        }
        List<AppContentAnnotation> zzEt = appContentSection.zzEt();
        int size3 = zzEt.size();
        this.zzaZa = new ArrayList<>(size3);
        for (int i3 = 0; i3 < size3; i3++) {
            this.zzaZa.add((AppContentAnnotationEntity) zzEt.get(i3).mo520freeze());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppContentSectionEntity(ArrayList<AppContentActionEntity> arrayList, ArrayList<AppContentCardEntity> arrayList2, String str, Bundle bundle, String str2, String str3, String str4, String str5, String str6, ArrayList<AppContentAnnotationEntity> arrayList3) {
        this.mActions = arrayList;
        this.zzaZa = arrayList3;
        this.zzaZi = arrayList2;
        this.zzaZj = str6;
        this.zzaty = str;
        this.mExtras = bundle;
        this.zzGV = str5;
        this.zzaZc = str2;
        this.zzamJ = str3;
        this.zzUA = str4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(AppContentSection appContentSection) {
        return zzaa.hashCode(appContentSection.getActions(), appContentSection.zzEt(), appContentSection.zzED(), appContentSection.zzEE(), appContentSection.zzEj(), appContentSection.getExtras(), appContentSection.getId(), appContentSection.zzEv(), appContentSection.getTitle(), appContentSection.getType());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(AppContentSection appContentSection, Object obj) {
        if (!(obj instanceof AppContentSection)) {
            return false;
        }
        if (appContentSection == obj) {
            return true;
        }
        AppContentSection appContentSection2 = (AppContentSection) obj;
        return zzaa.equal(appContentSection2.getActions(), appContentSection.getActions()) && zzaa.equal(appContentSection2.zzEt(), appContentSection.zzEt()) && zzaa.equal(appContentSection2.zzED(), appContentSection.zzED()) && zzaa.equal(appContentSection2.zzEE(), appContentSection.zzEE()) && zzaa.equal(appContentSection2.zzEj(), appContentSection.zzEj()) && zzaa.equal(appContentSection2.getExtras(), appContentSection.getExtras()) && zzaa.equal(appContentSection2.getId(), appContentSection.getId()) && zzaa.equal(appContentSection2.zzEv(), appContentSection.zzEv()) && zzaa.equal(appContentSection2.getTitle(), appContentSection.getTitle()) && zzaa.equal(appContentSection2.getType(), appContentSection.getType());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(AppContentSection appContentSection) {
        return zzaa.zzv(appContentSection).zzg("Actions", appContentSection.getActions()).zzg("Annotations", appContentSection.zzEt()).zzg("Cards", appContentSection.zzED()).zzg("CardType", appContentSection.zzEE()).zzg("ContentDescription", appContentSection.zzEj()).zzg("Extras", appContentSection.getExtras()).zzg("Id", appContentSection.getId()).zzg("Subtitle", appContentSection.zzEv()).zzg("Title", appContentSection.getTitle()).zzg("Type", appContentSection.getType()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public List<AppContentAction> getActions() {
        return new ArrayList(this.mActions);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String getId() {
        return this.zzGV;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String getTitle() {
        return this.zzamJ;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String getType() {
        return this.zzUA;
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
        AppContentSectionEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public List<AppContentCard> zzED() {
        return new ArrayList(this.zzaZi);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String zzEE() {
        return this.zzaZj;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzEF */
    public AppContentSection mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String zzEj() {
        return this.zzaty;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public List<AppContentAnnotation> zzEt() {
        return new ArrayList(this.zzaZa);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentSection
    public String zzEv() {
        return this.zzaZc;
    }
}
