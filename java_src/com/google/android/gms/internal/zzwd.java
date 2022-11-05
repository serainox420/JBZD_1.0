package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.places.PlaceLikelihood;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzwd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzwd> CREATOR = new zzwf();
    private final ArrayList<com.google.android.gms.location.places.internal.zzp> zzami;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwd(ArrayList<com.google.android.gms.location.places.internal.zzp> arrayList) {
        this.zzami = arrayList;
    }

    public List<PlaceLikelihood> getPlaceLikelihoods() {
        return this.zzami;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzwf.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<com.google.android.gms.location.places.internal.zzp> zzrN() {
        return this.zzami;
    }
}
