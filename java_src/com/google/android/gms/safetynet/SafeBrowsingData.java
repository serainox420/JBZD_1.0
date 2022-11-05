package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public class SafeBrowsingData extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<SafeBrowsingData> CREATOR = new zzi();
    private String zzbDd;
    private DataHolder zzbDe;

    public SafeBrowsingData(String str) {
        this(str, null);
    }

    public SafeBrowsingData(String str, DataHolder dataHolder) {
        this.zzbDd = str;
        this.zzbDe = dataHolder;
    }

    public DataHolder getBlacklistsDataHolder() {
        return this.zzbDe;
    }

    public String getMetadata() {
        return this.zzbDd;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }
}
