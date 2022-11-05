package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<CastOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(CastOptions castOptions, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, castOptions.getReceiverApplicationId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 3, castOptions.getSupportedNamespaces(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, castOptions.getStopReceiverApplicationWhenEndingSession());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) castOptions.getLaunchOptions(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, castOptions.getResumeSavedSession());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) castOptions.getCastMediaOptions(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, castOptions.getEnableReconnectionService());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, castOptions.getVolumeDeltaBeforeIceCreamSandwich());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaB */
    public CastOptions createFromParcel(Parcel parcel) {
        boolean z = false;
        CastMediaOptions castMediaOptions = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        double d = 0.0d;
        boolean z2 = false;
        LaunchOptions launchOptions = null;
        boolean z3 = false;
        ArrayList<String> arrayList = null;
        String str = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 4:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    launchOptions = (LaunchOptions) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LaunchOptions.CREATOR);
                    break;
                case 6:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    castMediaOptions = (CastMediaOptions) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, CastMediaOptions.CREATOR);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 9:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new CastOptions(str, arrayList, z3, launchOptions, z2, castMediaOptions, z, d);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbX */
    public CastOptions[] newArray(int i) {
        return new CastOptions[i];
    }
}
