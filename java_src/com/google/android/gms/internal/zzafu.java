package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzafu extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzafu> CREATOR = new zzafv();
    public final ArrayList<zza> zzaJz;

    /* loaded from: classes2.dex */
    public static class zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zza> CREATOR = new zzafw();
        public final int type;
        public final zzcg zzaKo;
        public final String zzaKp;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(int i, zzcg zzcgVar, String str) {
            this.type = i;
            this.zzaKo = zzcgVar;
            this.zzaKp = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzafw.zza(this, parcel, i);
        }
    }

    public zzafu() {
        this.zzaJz = new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzafu(ArrayList<zza> arrayList) {
        this.zzaJz = arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzafv.zza(this, parcel, i);
    }
}
