package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzao extends com.google.android.gms.common.internal.safeparcel.zza implements DataItem {
    public static final Parcelable.Creator<zzao> CREATOR = new zzap();
    private final Uri mUri;
    private final Map<String, DataItemAsset> zzbUr;
    private byte[] zzbeL;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzao(Uri uri, Bundle bundle, byte[] bArr) {
        this.mUri = uri;
        HashMap hashMap = new HashMap();
        bundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        for (String str : bundle.keySet()) {
            hashMap.put(str, (DataItemAssetParcelable) bundle.getParcelable(str));
        }
        this.zzbUr = hashMap;
        this.zzbeL = bArr;
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

    public String toString() {
        return toString(Log.isLoggable("DataItem", 3));
    }

    public String toString(boolean z) {
        StringBuilder sb = new StringBuilder("DataItemParcelable[");
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        String valueOf = String.valueOf(this.zzbeL == null ? "null" : Integer.valueOf(this.zzbeL.length));
        sb.append(new StringBuilder(String.valueOf(valueOf).length() + 8).append(",dataSz=").append(valueOf).toString());
        sb.append(new StringBuilder(23).append(", numAssets=").append(this.zzbUr.size()).toString());
        String valueOf2 = String.valueOf(this.mUri);
        sb.append(new StringBuilder(String.valueOf(valueOf2).length() + 6).append(", uri=").append(valueOf2).toString());
        if (!z) {
            sb.append("]");
            return sb.toString();
        }
        sb.append("]\n  assets: ");
        for (String str : this.zzbUr.keySet()) {
            String valueOf3 = String.valueOf(this.zzbUr.get(str));
            sb.append(new StringBuilder(String.valueOf(str).length() + 7 + String.valueOf(valueOf3).length()).append("\n    ").append(str).append(": ").append(valueOf3).toString());
        }
        sb.append("\n  ]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzap.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.wearable.DataItem
    /* renamed from: zzR */
    public zzao setData(byte[] bArr) {
        this.zzbeL = bArr;
        return this;
    }

    public Bundle zzUg() {
        Bundle bundle = new Bundle();
        bundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        for (Map.Entry<String, DataItemAsset> entry : this.zzbUr.entrySet()) {
            bundle.putParcelable(entry.getKey(), new DataItemAssetParcelable(entry.getValue()));
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzUy */
    public zzao mo520freeze() {
        return this;
    }
}
