package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.Arrays;
/* loaded from: classes.dex */
public class Asset extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<Asset> CREATOR = new zze();
    public Uri uri;
    private String zzbSL;
    public ParcelFileDescriptor zzbSM;
    private byte[] zzbeL;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Asset(byte[] bArr, String str, ParcelFileDescriptor parcelFileDescriptor, Uri uri) {
        this.zzbeL = bArr;
        this.zzbSL = str;
        this.zzbSM = parcelFileDescriptor;
        this.uri = uri;
    }

    public static Asset createFromBytes(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Asset data cannot be null");
        }
        return new Asset(bArr, null, null, null);
    }

    public static Asset createFromFd(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            throw new IllegalArgumentException("Asset fd cannot be null");
        }
        return new Asset(null, null, parcelFileDescriptor, null);
    }

    public static Asset createFromRef(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Asset digest cannot be null");
        }
        return new Asset(null, str, null, null);
    }

    public static Asset createFromUri(Uri uri) {
        if (uri == null) {
            throw new IllegalArgumentException("Asset uri cannot be null");
        }
        return new Asset(null, null, null, uri);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Asset)) {
            return false;
        }
        Asset asset = (Asset) obj;
        return Arrays.equals(this.zzbeL, asset.zzbeL) && zzaa.equal(this.zzbSL, asset.zzbSL) && zzaa.equal(this.zzbSM, asset.zzbSM) && zzaa.equal(this.uri, asset.uri);
    }

    public byte[] getData() {
        return this.zzbeL;
    }

    public String getDigest() {
        return this.zzbSL;
    }

    public ParcelFileDescriptor getFd() {
        return this.zzbSM;
    }

    public Uri getUri() {
        return this.uri;
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{this.zzbeL, this.zzbSL, this.zzbSM, this.uri});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Asset[@");
        sb.append(Integer.toHexString(hashCode()));
        if (this.zzbSL == null) {
            sb.append(", nodigest");
        } else {
            sb.append(", ");
            sb.append(this.zzbSL);
        }
        if (this.zzbeL != null) {
            sb.append(", size=");
            sb.append(this.zzbeL.length);
        }
        if (this.zzbSM != null) {
            sb.append(", fd=");
            sb.append(this.zzbSM);
        }
        if (this.uri != null) {
            sb.append(", uri=");
            sb.append(this.uri);
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i | 1);
    }
}
