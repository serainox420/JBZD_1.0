package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzdx;
import com.google.android.gms.internal.zzhz;
import com.google.android.gms.internal.zzif;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzqw;
@zzme
/* loaded from: classes.dex */
public final class AdOverlayInfoParcel extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzg();
    public final int orientation;
    public final String url;
    public final zzc zzNE;
    public final zzdx zzNF;
    public final zzh zzNG;
    public final zzqw zzNH;
    public final zzhz zzNI;
    public final String zzNJ;
    public final boolean zzNK;
    public final String zzNL;
    public final zzq zzNM;
    public final int zzNN;
    public final zzif zzNO;
    public final String zzNP;
    public final com.google.android.gms.ads.internal.zzn zzNQ;
    public final zzqh zzvn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdOverlayInfoParcel(zzc zzcVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, zzqh zzqhVar, IBinder iBinder6, String str4, com.google.android.gms.ads.internal.zzn zznVar) {
        this.zzNE = zzcVar;
        this.zzNF = (zzdx) com.google.android.gms.dynamic.zzd.zzF(IObjectWrapper.zza.zzcd(iBinder));
        this.zzNG = (zzh) com.google.android.gms.dynamic.zzd.zzF(IObjectWrapper.zza.zzcd(iBinder2));
        this.zzNH = (zzqw) com.google.android.gms.dynamic.zzd.zzF(IObjectWrapper.zza.zzcd(iBinder3));
        this.zzNI = (zzhz) com.google.android.gms.dynamic.zzd.zzF(IObjectWrapper.zza.zzcd(iBinder4));
        this.zzNJ = str;
        this.zzNK = z;
        this.zzNL = str2;
        this.zzNM = (zzq) com.google.android.gms.dynamic.zzd.zzF(IObjectWrapper.zza.zzcd(iBinder5));
        this.orientation = i;
        this.zzNN = i2;
        this.url = str3;
        this.zzvn = zzqhVar;
        this.zzNO = (zzif) com.google.android.gms.dynamic.zzd.zzF(IObjectWrapper.zza.zzcd(iBinder6));
        this.zzNP = str4;
        this.zzNQ = zznVar;
    }

    public AdOverlayInfoParcel(zzc zzcVar, zzdx zzdxVar, zzh zzhVar, zzq zzqVar, zzqh zzqhVar) {
        this.zzNE = zzcVar;
        this.zzNF = zzdxVar;
        this.zzNG = zzhVar;
        this.zzNH = null;
        this.zzNI = null;
        this.zzNJ = null;
        this.zzNK = false;
        this.zzNL = null;
        this.zzNM = zzqVar;
        this.orientation = -1;
        this.zzNN = 4;
        this.url = null;
        this.zzvn = zzqhVar;
        this.zzNO = null;
        this.zzNP = null;
        this.zzNQ = null;
    }

    public AdOverlayInfoParcel(zzdx zzdxVar, zzh zzhVar, zzq zzqVar, zzqw zzqwVar, int i, zzqh zzqhVar, String str, com.google.android.gms.ads.internal.zzn zznVar) {
        this.zzNE = null;
        this.zzNF = zzdxVar;
        this.zzNG = zzhVar;
        this.zzNH = zzqwVar;
        this.zzNI = null;
        this.zzNJ = null;
        this.zzNK = false;
        this.zzNL = null;
        this.zzNM = zzqVar;
        this.orientation = i;
        this.zzNN = 1;
        this.url = null;
        this.zzvn = zzqhVar;
        this.zzNO = null;
        this.zzNP = str;
        this.zzNQ = zznVar;
    }

    public AdOverlayInfoParcel(zzdx zzdxVar, zzh zzhVar, zzq zzqVar, zzqw zzqwVar, boolean z, int i, zzqh zzqhVar) {
        this.zzNE = null;
        this.zzNF = zzdxVar;
        this.zzNG = zzhVar;
        this.zzNH = zzqwVar;
        this.zzNI = null;
        this.zzNJ = null;
        this.zzNK = z;
        this.zzNL = null;
        this.zzNM = zzqVar;
        this.orientation = i;
        this.zzNN = 2;
        this.url = null;
        this.zzvn = zzqhVar;
        this.zzNO = null;
        this.zzNP = null;
        this.zzNQ = null;
    }

    public AdOverlayInfoParcel(zzdx zzdxVar, zzh zzhVar, zzhz zzhzVar, zzq zzqVar, zzqw zzqwVar, boolean z, int i, String str, zzqh zzqhVar, zzif zzifVar) {
        this.zzNE = null;
        this.zzNF = zzdxVar;
        this.zzNG = zzhVar;
        this.zzNH = zzqwVar;
        this.zzNI = zzhzVar;
        this.zzNJ = null;
        this.zzNK = z;
        this.zzNL = null;
        this.zzNM = zzqVar;
        this.orientation = i;
        this.zzNN = 3;
        this.url = str;
        this.zzvn = zzqhVar;
        this.zzNO = zzifVar;
        this.zzNP = null;
        this.zzNQ = null;
    }

    public AdOverlayInfoParcel(zzdx zzdxVar, zzh zzhVar, zzhz zzhzVar, zzq zzqVar, zzqw zzqwVar, boolean z, int i, String str, String str2, zzqh zzqhVar, zzif zzifVar) {
        this.zzNE = null;
        this.zzNF = zzdxVar;
        this.zzNG = zzhVar;
        this.zzNH = zzqwVar;
        this.zzNI = zzhzVar;
        this.zzNJ = str2;
        this.zzNK = z;
        this.zzNL = str;
        this.zzNM = zzqVar;
        this.orientation = i;
        this.zzNN = 3;
        this.url = null;
        this.zzvn = zzqhVar;
        this.zzNO = zzifVar;
        this.zzNP = null;
        this.zzNQ = null;
    }

    public static void zza(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    public static AdOverlayInfoParcel zzb(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzhN() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzNF).asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzhO() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzNG).asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzhP() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzNH).asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzhQ() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzNI).asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzhR() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzNO).asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzhS() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzNM).asBinder();
    }
}
