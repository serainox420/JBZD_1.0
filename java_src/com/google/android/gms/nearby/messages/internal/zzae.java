package com.google.android.gms.nearby.messages.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.nearby.messages.MessageFilter;
import com.google.android.gms.nearby.messages.Strategy;
/* loaded from: classes2.dex */
public class zzae implements Parcelable.Creator<SubscribeRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SubscribeRequest subscribeRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, subscribeRequest.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, subscribeRequest.zzOS(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) subscribeRequest.zzbBb, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, subscribeRequest.zzOz(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) subscribeRequest.zzbBh, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) subscribeRequest.zzaJH, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, subscribeRequest.zzbBi);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, subscribeRequest.zzbzI, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, subscribeRequest.zzbAH, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, subscribeRequest.zzbBj, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, subscribeRequest.zzbBc);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, subscribeRequest.zzOT(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, subscribeRequest.zzbzJ);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, (Parcelable) subscribeRequest.zzbAM, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, subscribeRequest.zzbAd);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 16, subscribeRequest.zzbAe);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziW */
    public SubscribeRequest createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        IBinder iBinder = null;
        Strategy strategy = null;
        IBinder iBinder2 = null;
        MessageFilter messageFilter = null;
        PendingIntent pendingIntent = null;
        int i2 = 0;
        String str = null;
        String str2 = null;
        byte[] bArr = null;
        boolean z = false;
        IBinder iBinder3 = null;
        boolean z2 = false;
        ClientAppContext clientAppContext = null;
        boolean z3 = false;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 3:
                    strategy = (Strategy) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Strategy.CREATOR);
                    break;
                case 4:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 5:
                    messageFilter = (MessageFilter) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, MessageFilter.CREATOR);
                    break;
                case 6:
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PendingIntent.CREATOR);
                    break;
                case 7:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 11:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 12:
                    iBinder3 = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                case 13:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 14:
                    clientAppContext = (ClientAppContext) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ClientAppContext.CREATOR);
                    break;
                case 15:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 16:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new SubscribeRequest(i, iBinder, strategy, iBinder2, messageFilter, pendingIntent, i2, str, str2, bArr, z, iBinder3, z2, clientAppContext, z3, i3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmS */
    public SubscribeRequest[] newArray(int i) {
        return new SubscribeRequest[i];
    }
}
