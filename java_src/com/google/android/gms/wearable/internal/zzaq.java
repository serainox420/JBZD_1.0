package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzaq extends com.google.android.gms.common.data.zzc implements DataItem {
    private final int zzaZk;

    public zzaq(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzaZk = i2;
    }

    @Override // com.google.android.gms.wearable.DataItem
    public Map<String, DataItemAsset> getAssets() {
        HashMap hashMap = new HashMap(this.zzaZk);
        for (int i = 0; i < this.zzaZk; i++) {
            zzam zzamVar = new zzam(this.zzaBi, this.zzaDL + i);
            if (zzamVar.getDataItemKey() != null) {
                hashMap.put(zzamVar.getDataItemKey(), zzamVar);
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.wearable.DataItem
    public byte[] getData() {
        return getByteArray("data");
    }

    @Override // com.google.android.gms.wearable.DataItem
    public Uri getUri() {
        return Uri.parse(getString("path"));
    }

    @Override // com.google.android.gms.wearable.DataItem
    public DataItem setData(byte[] bArr) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return toString(Log.isLoggable("DataItem", 3));
    }

    public String toString(boolean z) {
        byte[] data = getData();
        Map<String, DataItemAsset> assets = getAssets();
        StringBuilder sb = new StringBuilder("DataItemInternal{ ");
        String valueOf = String.valueOf(getUri());
        sb.append(new StringBuilder(String.valueOf(valueOf).length() + 4).append("uri=").append(valueOf).toString());
        String valueOf2 = String.valueOf(data == null ? "null" : Integer.valueOf(data.length));
        sb.append(new StringBuilder(String.valueOf(valueOf2).length() + 9).append(", dataSz=").append(valueOf2).toString());
        sb.append(new StringBuilder(23).append(", numAssets=").append(assets.size()).toString());
        if (z && !assets.isEmpty()) {
            sb.append(", assets=[");
            String str = "";
            Iterator<Map.Entry<String, DataItemAsset>> it = assets.entrySet().iterator();
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
        return new zzan(this);
    }
}
