package com.google.android.gms.games.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class ConnectionInfo extends GamesAbstractSafeParcelable {
    public static final Parcelable.Creator<ConnectionInfo> CREATOR = new ConnectionInfoCreator();
    private final String zzaZr;
    private final int zzaZs;

    public ConnectionInfo(String str, int i) {
        this.zzaZr = str;
        this.zzaZs = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ConnectionInfoCreator.zza(this, parcel, i);
    }

    public String zzEM() {
        return this.zzaZr;
    }

    public int zzEN() {
        return this.zzaZs;
    }
}
