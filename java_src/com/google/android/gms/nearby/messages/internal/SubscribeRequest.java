package com.google.android.gms.nearby.messages.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.nearby.messages.MessageFilter;
import com.google.android.gms.nearby.messages.Strategy;
import com.google.android.gms.nearby.messages.internal.zzm;
import com.google.android.gms.nearby.messages.internal.zzn;
import com.google.android.gms.nearby.messages.internal.zzr;
/* loaded from: classes.dex */
public final class SubscribeRequest extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<SubscribeRequest> CREATOR = new zzae();
    public final PendingIntent zzaJH;
    final int zzaiI;
    @Deprecated
    public final String zzbAH;
    public final zzn zzbAL;
    @Deprecated
    public final ClientAppContext zzbAM;
    public final boolean zzbAd;
    public final int zzbAe;
    public final Strategy zzbBb;
    @Deprecated
    public final boolean zzbBc;
    public final zzm zzbBg;
    public final MessageFilter zzbBh;
    public final int zzbBi;
    public final byte[] zzbBj;
    public final zzr zzbBk;
    @Deprecated
    public final String zzbzI;
    @Deprecated
    public final boolean zzbzJ;

    public SubscribeRequest(int i, IBinder iBinder, Strategy strategy, IBinder iBinder2, MessageFilter messageFilter, PendingIntent pendingIntent, int i2, String str, String str2, byte[] bArr, boolean z, IBinder iBinder3, boolean z2, ClientAppContext clientAppContext, boolean z3, int i3) {
        this.zzaiI = i;
        this.zzbBg = zzm.zza.zzeJ(iBinder);
        this.zzbBb = strategy;
        this.zzbAL = zzn.zza.zzeK(iBinder2);
        this.zzbBh = messageFilter;
        this.zzaJH = pendingIntent;
        this.zzbBi = i2;
        this.zzbzI = str;
        this.zzbAH = str2;
        this.zzbBj = bArr;
        this.zzbBc = z;
        this.zzbBk = iBinder3 == null ? null : zzr.zza.zzeO(iBinder3);
        this.zzbzJ = z2;
        this.zzbAM = ClientAppContext.zza(clientAppContext, str2, str, z2);
        this.zzbAd = z3;
        this.zzbAe = i3;
    }

    public SubscribeRequest(IBinder iBinder, Strategy strategy, IBinder iBinder2, MessageFilter messageFilter, PendingIntent pendingIntent, int i, byte[] bArr, IBinder iBinder3, boolean z) {
        this(iBinder, strategy, iBinder2, messageFilter, pendingIntent, i, bArr, iBinder3, z, 0);
    }

    public SubscribeRequest(IBinder iBinder, Strategy strategy, IBinder iBinder2, MessageFilter messageFilter, PendingIntent pendingIntent, int i, byte[] bArr, IBinder iBinder3, boolean z, int i2) {
        this(3, iBinder, strategy, iBinder2, messageFilter, pendingIntent, i, null, null, bArr, false, iBinder3, false, null, z, i2);
    }

    public String toString() {
        String sb;
        String valueOf = String.valueOf(this.zzbBg);
        String valueOf2 = String.valueOf(this.zzbBb);
        String valueOf3 = String.valueOf(this.zzbAL);
        String valueOf4 = String.valueOf(this.zzbBh);
        String valueOf5 = String.valueOf(this.zzaJH);
        int i = this.zzbBi;
        if (this.zzbBj == null) {
            sb = null;
        } else {
            sb = new StringBuilder(19).append("<").append(this.zzbBj.length).append(" bytes>").toString();
        }
        String valueOf6 = String.valueOf(this.zzbBk);
        boolean z = this.zzbzJ;
        String valueOf7 = String.valueOf(this.zzbAM);
        boolean z2 = this.zzbAd;
        String str = this.zzbzI;
        String str2 = this.zzbAH;
        return new StringBuilder(String.valueOf(valueOf).length() + 295 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length() + String.valueOf(sb).length() + String.valueOf(valueOf6).length() + String.valueOf(valueOf7).length() + String.valueOf(str).length() + String.valueOf(str2).length()).append("SubscribeRequest{messageListener=").append(valueOf).append(", strategy=").append(valueOf2).append(", callback=").append(valueOf3).append(", filter=").append(valueOf4).append(", pendingIntent=").append(valueOf5).append(", messageListenerKey=").append(i).append(", hint=").append(sb).append(", subscribeCallback=").append(valueOf6).append(", useRealClientApiKey=").append(z).append(", clientAppContext=").append(valueOf7).append(", isDiscardPendingIntent=").append(z2).append(", zeroPartyPackageName=").append(str).append(", realClientPackageName=").append(str2).append(", isIgnoreNearbyPermission=").append(this.zzbBc).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzae.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzOS() {
        if (this.zzbBg == null) {
            return null;
        }
        return this.zzbBg.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzOT() {
        if (this.zzbBk == null) {
            return null;
        }
        return this.zzbBk.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzOz() {
        if (this.zzbAL == null) {
            return null;
        }
        return this.zzbAL.asBinder();
    }
}
