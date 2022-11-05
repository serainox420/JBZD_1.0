package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.fence.FenceQueryRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public class zzaer extends FenceQueryRequest {
    public static final Parcelable.Creator<zzaer> CREATOR = new zzaes();
    public final zza zzaJr;

    /* loaded from: classes2.dex */
    public static class zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zza> CREATOR = new zzafd();
        public final int type;
        public final List<String> zzaJs;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(int i, List<String> list) {
            this.type = i;
            this.zzaJs = list;
        }

        public static zza zza(int i, List<String> list) {
            return new zza(i, list);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzafd.zza(this, parcel, i);
        }
    }

    public zzaer() {
        this(zza.zza(1, null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaer(zza zzaVar) {
        this.zzaJr = zzaVar;
    }

    public zzaer(Collection<String> collection) {
        this(zza.zza(2, new ArrayList(collection)));
    }

    public zzaer(String... strArr) {
        this(zza.zza(2, Arrays.asList(strArr)));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaes.zza(this, parcel, i);
    }
}
