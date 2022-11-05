package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzars extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzars> CREATOR = new zzart();
    private String packageName;
    BitmapTeleporter zzbje;
    private String zzbjf;
    private String zzbjg;
    private String zzbjh;
    private ArrayList<String> zzbji;
    private zzaqw zzbjj;

    public zzars(BitmapTeleporter bitmapTeleporter, String str, String str2, String str3, String str4, Collection<String> collection, zzaqw zzaqwVar) {
        this.zzbje = bitmapTeleporter;
        this.zzbjf = str;
        this.zzbjg = str2;
        this.zzbjh = str3;
        this.packageName = str4;
        this.zzbji = new ArrayList<>(collection == null ? 0 : collection.size());
        if (collection != null) {
            this.zzbji.addAll(collection);
        }
        this.zzbjj = zzaqwVar;
    }

    public String getDeveloperName() {
        return this.zzbjg;
    }

    public String getPackageName() {
        return this.packageName;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzart.zza(this, parcel, i);
    }

    public BitmapTeleporter zzHT() {
        return this.zzbje;
    }

    public String zzHU() {
        return this.zzbjh;
    }

    public List<String> zzHV() {
        return Collections.unmodifiableList(this.zzbji);
    }

    public zzaqw zzHW() {
        return this.zzbjj;
    }

    public String zzmY() {
        return this.zzbjf;
    }
}
