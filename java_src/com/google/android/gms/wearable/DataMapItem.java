package com.google.android.gms.wearable;

import android.net.Uri;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.internal.zzblc;
import com.google.android.gms.internal.zzbld;
import com.google.android.gms.internal.zzbxs;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class DataMapItem {
    private final Uri mUri;
    private final DataMap zzbST;

    private DataMapItem(DataItem dataItem) {
        this.mUri = dataItem.getUri();
        this.zzbST = zza(dataItem.mo520freeze());
    }

    public static DataMapItem fromDataItem(DataItem dataItem) {
        if (dataItem == null) {
            throw new IllegalStateException("provided dataItem is null");
        }
        return new DataMapItem(dataItem);
    }

    private DataMap zza(DataItem dataItem) {
        if (dataItem.getData() != null || dataItem.getAssets().size() <= 0) {
            if (dataItem.getData() == null) {
                return new DataMap();
            }
            try {
                ArrayList arrayList = new ArrayList();
                int size = dataItem.getAssets().size();
                for (int i = 0; i < size; i++) {
                    DataItemAsset dataItemAsset = dataItem.getAssets().get(Integer.toString(i));
                    if (dataItemAsset == null) {
                        String valueOf = String.valueOf(dataItem);
                        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 64).append("Cannot find DataItemAsset referenced in data at ").append(i).append(" for ").append(valueOf).toString());
                    }
                    arrayList.add(Asset.createFromRef(dataItemAsset.getId()));
                }
                return zzblc.zza(new zzblc.zza(zzbld.zzS(dataItem.getData()), arrayList));
            } catch (zzbxs | NullPointerException e) {
                String valueOf2 = String.valueOf(dataItem.getUri());
                String valueOf3 = String.valueOf(Base64.encodeToString(dataItem.getData(), 0));
                Log.w("DataItem", new StringBuilder(String.valueOf(valueOf2).length() + 50 + String.valueOf(valueOf3).length()).append("Unable to parse datamap from dataItem. uri=").append(valueOf2).append(", data=").append(valueOf3).toString());
                String valueOf4 = String.valueOf(dataItem.getUri());
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf4).length() + 44).append("Unable to parse datamap from dataItem.  uri=").append(valueOf4).toString(), e);
            }
        }
        throw new IllegalArgumentException("Cannot create DataMapItem from a DataItem  that wasn't made with DataMapItem.");
    }

    public DataMap getDataMap() {
        return this.zzbST;
    }

    public Uri getUri() {
        return this.mUri;
    }
}
