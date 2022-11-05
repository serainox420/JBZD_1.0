package com.google.android.gms.instantapps;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
/* loaded from: classes2.dex */
public class LaunchData extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<LaunchData> CREATOR = new zza();
    private final Intent intent;
    private final String packageName;
    private final String zzbig;
    final BitmapTeleporter zzbih;
    private final Bitmap zzbii;

    public LaunchData(Intent intent, String str, String str2, BitmapTeleporter bitmapTeleporter) {
        this.intent = intent;
        this.packageName = str;
        this.zzbig = str2;
        this.zzbih = bitmapTeleporter;
        this.zzbii = bitmapTeleporter != null ? bitmapTeleporter.zzxg() : null;
    }

    public Bitmap getApplicationIcon() {
        return this.zzbii;
    }

    public String getApplicationLabel() {
        return this.zzbig;
    }

    public Intent getIntent() {
        return this.intent;
    }

    public String getPackageName() {
        return this.packageName;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
