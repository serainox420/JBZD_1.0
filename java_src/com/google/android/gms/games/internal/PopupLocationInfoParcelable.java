package com.google.android.gms.games.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.internal.PopupManager;
/* loaded from: classes2.dex */
public final class PopupLocationInfoParcelable extends GamesAbstractSafeParcelable {
    public static final Parcelable.Creator<PopupLocationInfoParcelable> CREATOR = new PopupLocationInfoParcelableCreator();
    private final Bundle zzbbj;
    private final IBinder zzbbk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PopupLocationInfoParcelable(Bundle bundle, IBinder iBinder) {
        this.zzbbj = bundle;
        this.zzbbk = iBinder;
    }

    public PopupLocationInfoParcelable(PopupManager.PopupLocationInfo popupLocationInfo) {
        this.zzbbj = popupLocationInfo.zzFA();
        this.zzbbk = popupLocationInfo.zzbbn;
    }

    public IBinder getWindowToken() {
        return this.zzbbk;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        PopupLocationInfoParcelableCreator.zza(this, parcel, i);
    }

    public Bundle zzFA() {
        return this.zzbbj;
    }
}
