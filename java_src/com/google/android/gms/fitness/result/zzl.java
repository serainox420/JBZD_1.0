package com.google.android.gms.fitness.result;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public class zzl extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();
    private final Uri uri;
    private final int versionCode;
    private final Status zzahw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(int i, Uri uri, Status status) {
        this.versionCode = i;
        this.uri = uri;
        this.zzahw = status;
    }

    private boolean zzb(zzl zzlVar) {
        return this.zzahw.equals(zzlVar.zzahw) && zzaa.equal(this.uri, zzlVar.uri);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof zzl) && zzb((zzl) obj));
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzahw;
    }

    public Uri getUri() {
        return this.uri;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzahw, this.uri);
    }

    public String toString() {
        return zzaa.zzv(this).zzg("status", this.zzahw).zzg(ShareConstants.MEDIA_URI, this.uri).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }
}
