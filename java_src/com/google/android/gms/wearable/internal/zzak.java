package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataItemAsset;
/* loaded from: classes2.dex */
public class zzak implements DataItemAsset {
    private final String zzAX;
    private final String zzGV;

    public zzak(DataItemAsset dataItemAsset) {
        this.zzGV = dataItemAsset.getId();
        this.zzAX = dataItemAsset.getDataItemKey();
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
        sb.append("DataItemAssetEntity[");
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

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzUw */
    public DataItemAsset mo520freeze() {
        return this;
    }
}
