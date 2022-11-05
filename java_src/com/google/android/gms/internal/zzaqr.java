package com.google.android.gms.internal;

import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import java.util.List;
/* loaded from: classes2.dex */
public class zzaqr extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaqr> CREATOR = new zzaqs();
    private final String packageName;
    private final String title;
    private final PackageInfo zzRz;
    final BitmapTeleporter zzbij;
    private final List<zzarn> zzbik;
    private final List<zzaqt> zzbil;
    private final int zzbim;
    private final byte[] zzbin;
    private final List<zzarq> zzbio;
    private final Bitmap zzbip;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqr(String str, String str2, BitmapTeleporter bitmapTeleporter, List<zzarn> list, List<zzaqt> list2, int i, byte[] bArr, PackageInfo packageInfo, List<zzarq> list3) {
        this.packageName = str;
        this.title = str2;
        this.zzbij = bitmapTeleporter;
        this.zzbik = list;
        this.zzbil = list2;
        this.zzbim = i;
        this.zzbin = bArr;
        this.zzRz = packageInfo;
        this.zzbio = list3;
        if (bitmapTeleporter == null) {
            this.zzbip = null;
        } else {
            this.zzbip = bitmapTeleporter.zzxg();
        }
    }

    public String getPackageName() {
        return this.packageName;
    }

    public List<zzarn> getRoutes() {
        return this.zzbik;
    }

    public String getTitle() {
        return this.title;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaqs.zza(this, parcel, i);
    }

    public List<zzaqt> zzHp() {
        return this.zzbil;
    }

    public List<zzarq> zzHq() {
        return this.zzbio;
    }

    public int zzHr() {
        return this.zzbim;
    }

    public byte[] zzHs() {
        return this.zzbin;
    }

    public PackageInfo zzHt() {
        return this.zzRz;
    }
}
