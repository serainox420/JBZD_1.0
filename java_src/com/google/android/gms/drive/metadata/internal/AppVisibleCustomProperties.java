package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class AppVisibleCustomProperties extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable, Iterable<zzc> {
    public static final Parcelable.Creator<AppVisibleCustomProperties> CREATOR = new com.google.android.gms.drive.metadata.internal.zza();
    public static final AppVisibleCustomProperties zzaON = new zza().zzBt();
    final List<zzc> zzaOO;
    final int zzaiI;

    /* loaded from: classes2.dex */
    public static class zza {
        private final Map<CustomPropertyKey, zzc> zzaOP = new HashMap();

        public AppVisibleCustomProperties zzBt() {
            return new AppVisibleCustomProperties(this.zzaOP.values());
        }

        public zza zza(CustomPropertyKey customPropertyKey, String str) {
            zzac.zzb(customPropertyKey, "key");
            this.zzaOP.put(customPropertyKey, new zzc(customPropertyKey, str));
            return this;
        }

        public zza zza(zzc zzcVar) {
            zzac.zzb(zzcVar, "property");
            this.zzaOP.put(zzcVar.zzBu(), zzcVar);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppVisibleCustomProperties(int i, Collection<zzc> collection) {
        this.zzaiI = i;
        zzac.zzw(collection);
        this.zzaOO = new ArrayList(collection);
    }

    private AppVisibleCustomProperties(Collection<zzc> collection) {
        this(1, collection);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            return zzBs().equals(((AppVisibleCustomProperties) obj).zzBs());
        }
        return false;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaOO);
    }

    @Override // java.lang.Iterable
    public Iterator<zzc> iterator() {
        return this.zzaOO.iterator();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        com.google.android.gms.drive.metadata.internal.zza.zza(this, parcel, i);
    }

    public Map<CustomPropertyKey, String> zzBs() {
        HashMap hashMap = new HashMap(this.zzaOO.size());
        for (zzc zzcVar : this.zzaOO) {
            hashMap.put(zzcVar.zzBu(), zzcVar.getValue());
        }
        return Collections.unmodifiableMap(hashMap);
    }
}
