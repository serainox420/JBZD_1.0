package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzld;
import com.google.android.gms.internal.zzme;
@zzme
/* loaded from: classes.dex */
public final class GInAppPurchaseManagerInfoParcel extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<GInAppPurchaseManagerInfoParcel> CREATOR = new zza();
    public final zzld zzPn;
    public final Context zzPo;
    public final zzj zzPp;
    public final zzk zzvL;

    public GInAppPurchaseManagerInfoParcel(Context context, zzk zzkVar, zzld zzldVar, zzj zzjVar) {
        this.zzPo = context;
        this.zzvL = zzkVar;
        this.zzPn = zzldVar;
        this.zzPp = zzjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GInAppPurchaseManagerInfoParcel(IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4) {
        this.zzvL = (zzk) com.google.android.gms.dynamic.zzd.zzF(IObjectWrapper.zza.zzcd(iBinder));
        this.zzPn = (zzld) com.google.android.gms.dynamic.zzd.zzF(IObjectWrapper.zza.zzcd(iBinder2));
        this.zzPo = (Context) com.google.android.gms.dynamic.zzd.zzF(IObjectWrapper.zza.zzcd(iBinder3));
        this.zzPp = (zzj) com.google.android.gms.dynamic.zzd.zzF(IObjectWrapper.zza.zzcd(iBinder4));
    }

    public static void zza(Intent intent, GInAppPurchaseManagerInfoParcel gInAppPurchaseManagerInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", gInAppPurchaseManagerInfoParcel);
        intent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", bundle);
    }

    public static GInAppPurchaseManagerInfoParcel zzc(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
            bundleExtra.setClassLoader(GInAppPurchaseManagerInfoParcel.class.getClassLoader());
            return (GInAppPurchaseManagerInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zziE() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzPp).asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zziF() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzvL).asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zziG() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzPn).asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zziH() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzPo).asBinder();
    }
}
