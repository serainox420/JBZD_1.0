package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2.dex */
public class zzg extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<zzg> CREATOR = new zzh();
    private final int versionCode;
    private final List<zzd> zzaWY;
    private final Status zzahw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(int i, Status status, List<zzd> list) {
        this.versionCode = i;
        this.zzahw = status;
        this.zzaWY = list;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzahw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public String toString() {
        return String.format(Locale.getDefault(), "DataStatsResult{%s %d sources}", this.zzahw, Integer.valueOf(this.zzaWY.size()));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<zzd> zzDu() {
        return this.zzaWY;
    }
}
