package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.fence.FenceStateMap;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzaev extends com.google.android.gms.common.internal.safeparcel.zza implements FenceStateMap {
    public static final Parcelable.Creator<zzaev> CREATOR = new zzaew();
    public final Map<String, zzaet> zzaJx = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaev(Bundle bundle) {
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                this.zzaJx.put(str, (zzaet) com.google.android.gms.common.internal.safeparcel.zzd.zza(bundle.getByteArray(str), zzaet.CREATOR));
            }
        }
    }

    @Override // com.google.android.gms.awareness.fence.FenceStateMap
    public Set<String> getFenceKeys() {
        return this.zzaJx.keySet();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaew.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle zzAc() {
        if (this.zzaJx == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (Map.Entry<String, zzaet> entry : this.zzaJx.entrySet()) {
            bundle.putByteArray(entry.getKey(), com.google.android.gms.common.internal.safeparcel.zzd.zza(entry.getValue()));
        }
        return bundle;
    }

    @Override // com.google.android.gms.awareness.fence.FenceStateMap
    /* renamed from: zzdB */
    public zzaet getFenceState(String str) {
        if (this.zzaJx.containsKey(str)) {
            return this.zzaJx.get(str);
        }
        return null;
    }
}
