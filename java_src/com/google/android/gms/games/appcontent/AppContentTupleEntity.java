package com.google.android.gms.games.appcontent;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class AppContentTupleEntity extends GamesAbstractSafeParcelable implements AppContentTuple {
    public static final Parcelable.Creator<AppContentTupleEntity> CREATOR = new AppContentTupleEntityCreator();
    private final String mName;
    private final String mValue;

    public AppContentTupleEntity(AppContentTuple appContentTuple) {
        this.mName = appContentTuple.getName();
        this.mValue = appContentTuple.getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppContentTupleEntity(String str, String str2) {
        this.mName = str;
        this.mValue = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(AppContentTuple appContentTuple) {
        return zzaa.hashCode(appContentTuple.getName(), appContentTuple.getValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(AppContentTuple appContentTuple, Object obj) {
        if (!(obj instanceof AppContentTuple)) {
            return false;
        }
        if (appContentTuple == obj) {
            return true;
        }
        AppContentTuple appContentTuple2 = (AppContentTuple) obj;
        return zzaa.equal(appContentTuple2.getName(), appContentTuple.getName()) && zzaa.equal(appContentTuple2.getValue(), appContentTuple.getValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(AppContentTuple appContentTuple) {
        return zzaa.zzv(appContentTuple).zzg("Name", appContentTuple.getName()).zzg("Value", appContentTuple.getValue()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.appcontent.AppContentTuple
    public String getName() {
        return this.mName;
    }

    @Override // com.google.android.gms.games.appcontent.AppContentTuple
    public String getValue() {
        return this.mValue;
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
        AppContentTupleEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzEJ */
    public AppContentTuple mo520freeze() {
        return this;
    }
}
