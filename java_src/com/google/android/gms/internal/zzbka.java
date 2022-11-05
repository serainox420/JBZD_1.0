package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.vision.Frame;
/* loaded from: classes2.dex */
public class zzbka extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbka> CREATOR = new zzbkb();
    public int height;
    public int id;
    public int rotation;
    final int versionCode;
    public int width;
    public long zzbPl;

    public zzbka() {
        this.versionCode = 1;
    }

    public zzbka(int i, int i2, int i3, int i4, long j, int i5) {
        this.versionCode = i;
        this.width = i2;
        this.height = i3;
        this.id = i4;
        this.zzbPl = j;
        this.rotation = i5;
    }

    public static zzbka zzc(Frame frame) {
        zzbka zzbkaVar = new zzbka();
        zzbkaVar.width = frame.getMetadata().getWidth();
        zzbkaVar.height = frame.getMetadata().getHeight();
        zzbkaVar.rotation = frame.getMetadata().getRotation();
        zzbkaVar.id = frame.getMetadata().getId();
        zzbkaVar.zzbPl = frame.getMetadata().getTimestampMillis();
        return zzbkaVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbkb.zza(this, parcel, i);
    }
}
