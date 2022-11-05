package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.wearable.internal.DataItemAssetParcelable;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class PutDataRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final String WEAR_URI_SCHEME = "wear";
    private final Uri mUri;
    private final Bundle zzbSX;
    private long zzbSY;
    private byte[] zzbeL;
    public static final Parcelable.Creator<PutDataRequest> CREATOR = new zzh();
    private static final long zzbSV = TimeUnit.MINUTES.toMillis(30);
    private static final Random zzbSW = new SecureRandom();

    private PutDataRequest(Uri uri) {
        this(uri, new Bundle(), null, zzbSV);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PutDataRequest(Uri uri, Bundle bundle, byte[] bArr, long j) {
        this.mUri = uri;
        this.zzbSX = bundle;
        this.zzbSX.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        this.zzbeL = bArr;
        this.zzbSY = j;
    }

    public static PutDataRequest create(String str) {
        return zzy(zzin(str));
    }

    public static PutDataRequest createFromDataItem(DataItem dataItem) {
        PutDataRequest zzy = zzy(dataItem.getUri());
        for (Map.Entry<String, DataItemAsset> entry : dataItem.getAssets().entrySet()) {
            if (entry.getValue().getId() == null) {
                String valueOf = String.valueOf(entry.getKey());
                throw new IllegalStateException(valueOf.length() != 0 ? "Cannot create an asset for a put request without a digest: ".concat(valueOf) : new String("Cannot create an asset for a put request without a digest: "));
            }
            zzy.putAsset(entry.getKey(), Asset.createFromRef(entry.getValue().getId()));
        }
        zzy.setData(dataItem.getData());
        return zzy;
    }

    public static PutDataRequest createWithAutoAppendedId(String str) {
        StringBuilder sb = new StringBuilder(str);
        if (!str.endsWith("/")) {
            sb.append("/");
        }
        sb.append("PN").append(zzbSW.nextLong());
        return new PutDataRequest(zzin(sb.toString()));
    }

    private static Uri zzin(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("An empty path was supplied.");
        }
        if (!str.startsWith("/")) {
            throw new IllegalArgumentException("A path must start with a single / .");
        }
        if (!str.startsWith("//")) {
            return new Uri.Builder().scheme(WEAR_URI_SCHEME).path(str).build();
        }
        throw new IllegalArgumentException("A path must start with a single / .");
    }

    public static PutDataRequest zzy(Uri uri) {
        return new PutDataRequest(uri);
    }

    public Asset getAsset(String str) {
        return (Asset) this.zzbSX.getParcelable(str);
    }

    public Map<String, Asset> getAssets() {
        HashMap hashMap = new HashMap();
        for (String str : this.zzbSX.keySet()) {
            hashMap.put(str, (Asset) this.zzbSX.getParcelable(str));
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public byte[] getData() {
        return this.zzbeL;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public boolean hasAsset(String str) {
        return this.zzbSX.containsKey(str);
    }

    public boolean isUrgent() {
        return this.zzbSY == 0;
    }

    public PutDataRequest putAsset(String str, Asset asset) {
        zzac.zzw(str);
        zzac.zzw(asset);
        this.zzbSX.putParcelable(str, asset);
        return this;
    }

    public PutDataRequest removeAsset(String str) {
        this.zzbSX.remove(str);
        return this;
    }

    public PutDataRequest setData(byte[] bArr) {
        this.zzbeL = bArr;
        return this;
    }

    public PutDataRequest setUrgent() {
        this.zzbSY = 0L;
        return this;
    }

    public String toString() {
        return toString(Log.isLoggable(DataMap.TAG, 3));
    }

    public String toString(boolean z) {
        StringBuilder sb = new StringBuilder("PutDataRequest[");
        String valueOf = String.valueOf(this.zzbeL == null ? "null" : Integer.valueOf(this.zzbeL.length));
        sb.append(new StringBuilder(String.valueOf(valueOf).length() + 7).append("dataSz=").append(valueOf).toString());
        sb.append(new StringBuilder(23).append(", numAssets=").append(this.zzbSX.size()).toString());
        String valueOf2 = String.valueOf(this.mUri);
        sb.append(new StringBuilder(String.valueOf(valueOf2).length() + 6).append(", uri=").append(valueOf2).toString());
        sb.append(new StringBuilder(35).append(", syncDeadline=").append(this.zzbSY).toString());
        if (!z) {
            sb.append("]");
            return sb.toString();
        }
        sb.append("]\n  assets: ");
        for (String str : this.zzbSX.keySet()) {
            String valueOf3 = String.valueOf(this.zzbSX.getParcelable(str));
            sb.append(new StringBuilder(String.valueOf(str).length() + 7 + String.valueOf(valueOf3).length()).append("\n    ").append(str).append(": ").append(valueOf3).toString());
        }
        sb.append("\n  ]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public Bundle zzUg() {
        return this.zzbSX;
    }

    public long zzUh() {
        return this.zzbSY;
    }
}
