package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzacs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzacw extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzacw> CREATOR = new zzacx();
    private final HashMap<String, Map<String, zzacs.zza<?, ?>>> zzaHh;
    private final ArrayList<zza> zzaHi = null;
    private final String zzaHj;
    final int zzaiI;

    /* loaded from: classes2.dex */
    public static class zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zza> CREATOR = new zzacy();
        final String className;
        final int versionCode;
        final ArrayList<zzb> zzaHk;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(int i, String str, ArrayList<zzb> arrayList) {
            this.versionCode = i;
            this.className = str;
            this.zzaHk = arrayList;
        }

        zza(String str, Map<String, zzacs.zza<?, ?>> map) {
            this.versionCode = 1;
            this.className = str;
            this.zzaHk = zzX(map);
        }

        private static ArrayList<zzb> zzX(Map<String, zzacs.zza<?, ?>> map) {
            if (map == null) {
                return null;
            }
            ArrayList<zzb> arrayList = new ArrayList<>();
            for (String str : map.keySet()) {
                arrayList.add(new zzb(str, map.get(str)));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzacy.zza(this, parcel, i);
        }

        HashMap<String, zzacs.zza<?, ?>> zzyG() {
            HashMap<String, zzacs.zza<?, ?>> hashMap = new HashMap<>();
            int size = this.zzaHk.size();
            for (int i = 0; i < size; i++) {
                zzb zzbVar = this.zzaHk.get(i);
                hashMap.put(zzbVar.zzaB, zzbVar.zzaHl);
            }
            return hashMap;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zzb> CREATOR = new zzacv();
        final int versionCode;
        final String zzaB;
        final zzacs.zza<?, ?> zzaHl;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzb(int i, String str, zzacs.zza<?, ?> zzaVar) {
            this.versionCode = i;
            this.zzaB = str;
            this.zzaHl = zzaVar;
        }

        zzb(String str, zzacs.zza<?, ?> zzaVar) {
            this.versionCode = 1;
            this.zzaB = str;
            this.zzaHl = zzaVar;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzacv.zza(this, parcel, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacw(int i, ArrayList<zza> arrayList, String str) {
        this.zzaiI = i;
        this.zzaHh = zzi(arrayList);
        this.zzaHj = (String) com.google.android.gms.common.internal.zzac.zzw(str);
        zzyD();
    }

    private static HashMap<String, Map<String, zzacs.zza<?, ?>>> zzi(ArrayList<zza> arrayList) {
        HashMap<String, Map<String, zzacs.zza<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zza zzaVar = arrayList.get(i);
            hashMap.put(zzaVar.className, zzaVar.zzyG());
        }
        return hashMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.zzaHh.keySet()) {
            sb.append(str).append(":\n");
            Map<String, zzacs.zza<?, ?>> map = this.zzaHh.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ").append(str2).append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzacx.zza(this, parcel, i);
    }

    public Map<String, zzacs.zza<?, ?>> zzdw(String str) {
        return this.zzaHh.get(str);
    }

    public void zzyD() {
        for (String str : this.zzaHh.keySet()) {
            Map<String, zzacs.zza<?, ?>> map = this.zzaHh.get(str);
            for (String str2 : map.keySet()) {
                map.get(str2).zza(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<zza> zzyE() {
        ArrayList<zza> arrayList = new ArrayList<>();
        for (String str : this.zzaHh.keySet()) {
            arrayList.add(new zza(str, this.zzaHh.get(str)));
        }
        return arrayList;
    }

    public String zzyF() {
        return this.zzaHj;
    }
}
