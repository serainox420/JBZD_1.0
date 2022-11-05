package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.wearable.DataItemAsset;
@KeepName
/* loaded from: classes2.dex */
public class DataItemAssetParcelable extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable, DataItemAsset {
    public static final Parcelable.Creator<DataItemAssetParcelable> CREATOR = new zzal();
    private final String zzAX;
    private final String zzGV;

    public DataItemAssetParcelable(DataItemAsset dataItemAsset) {
        this.zzGV = (String) com.google.android.gms.common.internal.zzac.zzw(dataItemAsset.getId());
        this.zzAX = (String) com.google.android.gms.common.internal.zzac.zzw(dataItemAsset.getDataItemKey());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataItemAssetParcelable(String str, String str2) {
        this.zzGV = str;
        this.zzAX = str2;
    }

    @Override // com.google.android.gms.wearable.DataItemAsset
    public String getDataItemKey() {
        return this.zzAX;
    }

    @Override // com.google.android.gms.wearable.DataItemAsset
    public String getId() {
        return this.zzGV;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DataItemAssetParcelable[");
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        if (this.zzGV == null) {
            sb.append(",noid");
        } else {
            sb.append(",");
            sb.append(this.zzGV);
        }
        sb.append(", key=");
        sb.append(this.zzAX);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzal.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzUw */
    public DataItemAsset mo520freeze() {
        return this;
    }
}
