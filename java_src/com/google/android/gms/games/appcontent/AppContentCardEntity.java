package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class AppContentCardEntity extends GamesAbstractSafeParcelable implements AppContentCard {
    public static final Parcelable.Creator<AppContentCardEntity> CREATOR = new AppContentCardEntityCreator();
    private final ArrayList<AppContentActionEntity> mActions;
    private final Bundle mExtras;
    private final String zzGV;
    private final String zzUA;
    private final ArrayList<AppContentConditionEntity> zzaYR;
    private final ArrayList<AppContentAnnotationEntity> zzaZa;
    private final int zzaZb;
    private final String zzaZc;
    private final int zzaZd;
    private final String zzade;
    private final String zzamJ;
    private final String zzaty;

    public AppContentCardEntity(AppContentCard appContentCard) {
        this.zzaty = appContentCard.zzEj();
        this.zzaZb = appContentCard.zzEu();
        this.zzade = appContentCard.getDescription();
        this.mExtras = appContentCard.getExtras();
        this.zzGV = appContentCard.getId();
        this.zzamJ = appContentCard.getTitle();
        this.zzaZc = appContentCard.zzEv();
        this.zzaZd = appContentCard.zzEw();
        this.zzUA = appContentCard.getType();
        List<AppContentAction> actions = appContentCard.getActions();
        int size = actions.size();
        this.mActions = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.mActions.add((AppContentActionEntity) actions.get(i).mo520freeze());
        }
        List<AppContentAnnotation> zzEt = appContentCard.zzEt();
        int size2 = zzEt.size();
        this.zzaZa = new ArrayList<>(size2);
        for (int i2 = 0; i2 < size2; i2++) {
            this.zzaZa.add((AppContentAnnotationEntity) zzEt.get(i2).mo520freeze());
        }
        List<AppContentCondition> zzEi = appContentCard.zzEi();
        int size3 = zzEi.size();
        this.zzaYR = new ArrayList<>(size3);
        for (int i3 = 0; i3 < size3; i3++) {
            this.zzaYR.add((AppContentConditionEntity) zzEi.get(i3).mo520freeze());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppContentCardEntity(ArrayList<AppContentActionEntity> arrayList, ArrayList<AppContentAnnotationEntity> arrayList2, ArrayList<AppContentConditionEntity> arrayList3, String str, int i, String str2, Bundle bundle, String str3, String str4, int i2, String str5, String str6) {
        this.mActions = arrayList;
        this.zzaZa = arrayList2;
        this.zzaYR = arrayList3;
        this.zzaty = str;
        this.zzaZb = i;
        this.zzade = str2;
        this.mExtras = bundle;
        this.zzGV = str6;
        this.zzaZc = str3;
        this.zzamJ = str4;
        this.zzaZd = i2;
        this.zzUA = str5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(AppContentCard appContentCard) {
        return zzaa.hashCode(appContentCard.getActions(), appContentCard.zzEt(), appContentCard.zzEi(), appContentCard.zzEj(), Integer.valueOf(appContentCard.zzEu()), appContentCard.getDescription(), appContentCard.getExtras(), appContentCard.getId(), appContentCard.zzEv(), appContentCard.getTitle(), Integer.valueOf(appContentCard.zzEw()), appContentCard.getType());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(AppContentCard appContentCard, Object obj) {
        if (!(obj instanceof AppContentCard)) {
            return false;
        }
        if (appContentCard == obj) {
            return true;
        }
        AppContentCard appContentCard2 = (AppContentCard) obj;
        return zzaa.equal(appContentCard2.getActions(), appContentCard.getActions()) && zzaa.equal(appContentCard2.zzEt(), appContentCard.zzEt()) && zzaa.equal(appContentCard2.zzEi(), appContentCard.zzEi()) && zzaa.equal(appContentCard2.zzEj(), appContentCard.zzEj()) && zzaa.equal(Integer.valueOf(appContentCard2.zzEu()), Integer.valueOf(appContentCard.zzEu())) && zzaa.equal(appContentCard2.getDescription(), appContentCard.getDescription()) && zzaa.equal(appContentCard2.getExtras(), appContentCard.getExtras()) && zzaa.equal(appContentCard2.getId(), appContentCard.getId()) && zzaa.equal(appContentCard2.zzEv(), appContentCard.zzEv()) && zzaa.equal(appContentCard2.getTitle(), appContentCard.getTitle()) && zzaa.equal(Integer.valueOf(appContentCard2.zzEw()), Integer.valueOf(appContentCard.zzEw())) && zzaa.equal(appContentCard2.getType(), appContentCard.getType());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(AppContentCard appContentCard) {
        return zzaa.zzv(appContentCard).zzg("Actions", appContentCard.getActions()).zzg("Annotations", appContentCard.zzEt()).zzg("Conditions", appContentCard.zzEi()).zzg("ContentDescription", appContentCard.zzEj()).zzg("CurrentSteps", Integer.valueOf(appContentCard.zzEu())).zzg("Description", appContentCard.getDescription()).zzg("Extras", appContentCard.getExtras()).zzg("Id", appContentCard.getId()).zzg("Subtitle", appContentCard.zzEv()).zzg("Title", appContentCard.getTitle()).zzg("TotalSteps", Integer.valueOf(appContentCard.zzEw())).zzg("Type", appContentCard.getType()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public List<AppContentAction> getActions() {
        return new ArrayList(this.mActions);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String getDescription() {
        return this.zzade;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String getId() {
        return this.zzGV;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String getTitle() {
        return this.zzamJ;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
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
        AppContentCardEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public List<AppContentCondition> zzEi() {
        return new ArrayList(this.zzaYR);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String zzEj() {
        return this.zzaty;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public List<AppContentAnnotation> zzEt() {
        return new ArrayList(this.zzaZa);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public int zzEu() {
        return this.zzaZb;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public String zzEv() {
        return this.zzaZc;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentCard
    public int zzEw() {
        return this.zzaZd;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzEx */
    public AppContentCard mo520freeze() {
        return this;
    }
}
