package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzan implements DataItem {
    private Uri mUri;
    private Map<String, DataItemAsset> zzbUr;
    private byte[] zzbeL;

    public zzan(DataItem dataItem) {
        this.mUri = dataItem.getUri();
        this.zzbeL = dataItem.getData();
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, DataItemAsset> entry : dataItem.getAssets().entrySet()) {
            if (entry.getKey() != null) {
                hashMap.put(entry.getKey(), entry.getValue().mo520freeze());
            }
        }
        this.zzbUr = Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.wearable.DataItem
    public Map<String, DataItemAsset> getAssets() {
        return this.zzbUr;
    }

    @Override // com.google.android.gms.wearable.DataItem
    public byte[] getData() {
        return this.zzbeL;
    }

    @Override // com.google.android.gms.wearable.DataItem
    public Uri getUri() {
        return this.mUri;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.wearable.DataItem
    public DataItem setData(byte[] bArr) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return toString(Log.isLoggable("DataItem", 3));
    }

    public String toString(boolean z) {
        StringBuilder sb = new StringBuilder("DataItemEntity{ ");
        String valueOf = String.valueOf(this.mUri);
        sb.append(new StringBuilder(String.valueOf(valueOf).length() + 4).append("uri=").append(valueOf).toString());
        String valueOf2 = String.valueOf(this.zzbeL == null ? "null" : Integer.valueOf(this.zzbeL.length));
        sb.append(new StringBuilder(String.valueOf(valueOf2).length() + 9).append(", dataSz=").append(valueOf2).toString());
        sb.append(new StringBuilder(23).append(", numAssets=").append(this.zzbUr.size()).toString());
        if (z && !this.zzbUr.isEmpty()) {
            sb.append(", assets=[");
            String str = "";
            Iterator<Map.Entry<String, DataItemAsset>> it = this.zzbUr.entrySet().iterator();
            while (true) {
                String str2 = str;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, DataItemAsset> next = it.next();
                String key = next.getKey();
                String valueOf3 = String.valueOf(next.getValue().getId());
                sb.append(new StringBuilder(String.valueOf(str2).length() + 2 + String.valueOf(key).length() + String.valueOf(valueOf3).length()).append(str2).append(key).append(": ").append(valueOf3).toString());
                str = ", ";
            }
            sb.append("]");
        }
        sb.append(" }");
        return sb.toString();
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzUx */
    public DataItem mo520freeze() {
        return this;
    }
}
