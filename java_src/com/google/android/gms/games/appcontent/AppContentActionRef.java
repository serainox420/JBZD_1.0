package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class AppContentActionRef extends MultiDataBufferRef implements AppContentAction {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AppContentActionRef(ArrayList<DataHolder> arrayList, int i) {
        super(arrayList, 1, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return AppContentActionEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public Bundle getExtras() {
        return AppContentUtils.zzd(this.zzaBi, this.zzaZo, "action_data", this.zzaDL);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String getId() {
        return getString("action_id");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String getType() {
        return getString(ShareConstants.WEB_DIALOG_PARAM_ACTION_TYPE);
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return AppContentActionEntity.zza(this);
    }

    public String toString() {
        return AppContentActionEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((AppContentActionEntity) ((AppContentAction) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public AppContentAnnotation zzEh() {
        ArrayList<AppContentAnnotation> zzb = AppContentUtils.zzb(this.zzaBi, this.zzaZo, "action_annotation", this.zzaDL);
        if (zzb.size() == 1) {
            return zzb.get(0);
        }
        return null;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public List<AppContentCondition> zzEi() {
        return AppContentUtils.zzc(this.zzaBi, this.zzaZo, "action_conditions", this.zzaDL);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String zzEj() {
        return getString("action_content_description");
    }

    @Override // com.google.android.gms.games.appcontent.AppContentAction
    public String zzEk() {
        return getString("overflow_text");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzEl */
    public AppContentAction mo520freeze() {
        return new AppContentActionEntity(this);
    }
}
