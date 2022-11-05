package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
import java.util.List;
/* loaded from: classes2.dex */
public class AccountChangeEventsResponse extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new zzc();
    final int mVersion;
    final List<AccountChangeEvent> zzth;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountChangeEventsResponse(int i, List<AccountChangeEvent> list) {
        this.mVersion = i;
        this.zzth = (List) zzac.zzw(list);
    }

    public AccountChangeEventsResponse(List<AccountChangeEvent> list) {
        this.mVersion = 1;
        this.zzth = (List) zzac.zzw(list);
    }

    public List<AccountChangeEvent> getEvents() {
        return this.zzth;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
