package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class AppContentActionEntity extends GamesAbstractSafeParcelable implements AppContentAction {
    public static final Parcelable.Creator<AppContentActionEntity> CREATOR = new AppContentActionEntityCreator();
    private final Bundle mExtras;
    private final String zzGV;
    private final String zzUA;
    private final ArrayList<AppContentConditionEntity> zzaYR;
    private final AppContentAnnotationEntity zzaYS;
    private final String zzaYT;
    private final String zzaty;

    public AppContentActionEntity(AppContentAction appContentAction) {
        this.zzaYS = (AppContentAnnotationEntity) appContentAction.zzEh().mo520freeze();
        this.zzaty = appContentAction.zzEj();
        this.mExtras = appContentAction.getExtras();
        this.zzGV = appContentAction.getId();
        this.zzaYT = appContentAction.zzEk();
        this.zzUA = appContentAction.getType();
        List<AppContentCondition> zzEi = appContentAction.zzEi();
        int size = zzEi.size();
        this.zzaYR = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.zzaYR.add((AppContentConditionEntity) zzEi.get(i).mo520freeze());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppContentActionEntity(ArrayList<AppContentConditionEntity> arrayList, String str, Bundle bundle, String str2, String str3, AppContentAnnotationEntity appContentAnnotationEntity, String str4) {
        this.zzaYS = appContentAnnotationEntity;
        this.zzaYR = arrayList;
        this.zzaty = str;
        this.mExtras = bundle;
        this.zzGV = str3;
        this.zzaYT = str4;
        this.zzUA = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(AppContentAction appContentAction) {
        return zzaa.hashCode(appContentAction.zzEh(), appContentAction.zzEi(), appContentAction.zzEj(), appContentAction.getExtras(), appContentAction.getId(), appContentAction.zzEk(), appContentAction.getType());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(AppContentAction appContentAction, Object obj) {
        if (!(obj instanceof AppContentAction)) {
            return false;
        }
        if (appContentAction == obj) {
            return true;
        }
        AppContentAction appContentAction2 = (AppContentAction) obj;
        return zzaa.equal(appContentAction2.zzEh(), appContentAction.zzEh()) && zzaa.equal(appContentAction2.zzEi(), appContentAction.zzEi()) && zzaa.equal(appContentAction2.zzEj(), appContentAction.zzEj()) && zzaa.equal(appContentAction2.getExtras(), appContentAction.getExtras()) && zzaa.equal(appContentAction2.getId(), appContentAction.getId()) && zzaa.equal(appContentAction2.zzEk(), appContentAction.zzEk()) && zzaa.equal(appContentAction2.getType(), appContentAction.getType());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(AppContentAction appContentAction) {
        return zzaa.zzv(appContentAction).zzg("Annotation", appContentAction.zzEh()).zzg("Conditions", appContentAction.zzEi()).zzg("ContentDescription", appContentAction.zzEj()).zzg("Extras", appContentAction.getExtras()).zzg("Id", appContentAction.getId()).zzg("OverflowText", appContentAction.zzEk()).zzg("Type", appContentAction.getType()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String getId() {
        return this.zzGV;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
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
        AppContentActionEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public AppContentAnnotation zzEh() {
        return this.zzaYS;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public List<AppContentCondition> zzEi() {
        return new ArrayList(this.zzaYR);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String zzEj() {
        return this.zzaty;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String zzEk() {
        return this.zzaYT;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzEl */
    public AppContentAction mo520freeze() {
        return this;
    }
}
