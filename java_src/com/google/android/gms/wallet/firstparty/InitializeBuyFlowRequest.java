package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
/* loaded from: classes2.dex */
public class InitializeBuyFlowRequest extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<InitializeBuyFlowRequest> CREATOR = new zzl();
    private final int zzaiI;
    byte[][] zzbRJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InitializeBuyFlowRequest(int i, byte[][] bArr) {
        this.zzaiI = i;
        this.zzbRJ = bArr;
    }

    public int getVersionCode() {
        return this.zzaiI;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }
}
