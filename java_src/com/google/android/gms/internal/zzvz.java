package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.state.HeadphoneState;
/* loaded from: classes2.dex */
public final class zzvz extends com.google.android.gms.common.internal.safeparcel.zza implements HeadphoneState {
    public static final Parcelable.Creator<zzvz> CREATOR = new zzwa();
    private final int zzamf;

    public zzvz(int i) {
        this.zzamf = i;
    }

    @Override // com.google.android.gms.awareness.state.HeadphoneState
    public int getState() {
        return this.zzamf;
    }

    public String toString() {
        return Integer.toString(this.zzamf);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzwa.zza(this, parcel, i);
    }
}
