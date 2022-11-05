package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class PatternItem extends com.google.android.gms.common.internal.safeparcel.zza {
    private final int type;
    private final Float zzbpJ;
    private static final String TAG = PatternItem.class.getSimpleName();
    public static final Parcelable.Creator<PatternItem> CREATOR = new zzi();

    public PatternItem(int i, Float f) {
        boolean z = true;
        if (i != 1 && (f == null || f.floatValue() < BitmapDescriptorFactory.HUE_RED)) {
            z = false;
        }
        String valueOf = String.valueOf(f);
        zzac.zzb(z, new StringBuilder(String.valueOf(valueOf).length() + 45).append("Invalid PatternItem: type=").append(i).append(" length=").append(valueOf).toString());
        this.type = i;
        this.zzbpJ = f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<PatternItem> zzI(List<PatternItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<PatternItem> it = list.iterator();
        while (it.hasNext()) {
            PatternItem next = it.next();
            arrayList.add(next == null ? null : next.zzJO());
        }
        return arrayList;
    }

    private PatternItem zzJO() {
        switch (this.type) {
            case 0:
                return new Dash(this.zzbpJ.floatValue());
            case 1:
                return new Dot();
            case 2:
                return new Gap(this.zzbpJ.floatValue());
            default:
                Log.w(TAG, new StringBuilder(37).append("Unknown PatternItem type: ").append(this.type).toString());
                return this;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PatternItem)) {
            return false;
        }
        PatternItem patternItem = (PatternItem) obj;
        return this.type == patternItem.type && zzaa.equal(this.zzbpJ, patternItem.zzbpJ);
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.type), this.zzbpJ);
    }

    public String toString() {
        int i = this.type;
        String valueOf = String.valueOf(this.zzbpJ);
        return new StringBuilder(String.valueOf(valueOf).length() + 39).append("[PatternItem: type=").append(i).append(" length=").append(valueOf).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public Float zzJN() {
        return this.zzbpJ;
    }
}
