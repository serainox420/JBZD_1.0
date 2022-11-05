package com.google.android.gms.location.places.internal;

import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzblo;
import com.google.android.gms.internal.zzbxs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class zzab extends com.google.android.gms.common.data.zzc {
    public zzab(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String zzO(String str, String str2) {
        return (!zzdf(str) || zzdh(str)) ? str2 : getString(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <E extends SafeParcelable> E zza(String str, Parcelable.Creator<E> creator) {
        byte[] zzc = zzc(str, (byte[]) null);
        if (zzc == null) {
            return null;
        }
        return (E) com.google.android.gms.common.internal.safeparcel.zzd.zza(zzc, creator);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <E extends SafeParcelable> List<E> zza(String str, Parcelable.Creator<E> creator, List<E> list) {
        byte[] zzc = zzc(str, (byte[]) null);
        if (zzc == null) {
            return list;
        }
        try {
            zzblo zzT = zzblo.zzT(zzc);
            if (zzT.zzbWz == null) {
                return list;
            }
            ArrayList arrayList = new ArrayList(zzT.zzbWz.length);
            byte[][] bArr = zzT.zzbWz;
            for (byte[] bArr2 : bArr) {
                arrayList.add(com.google.android.gms.common.internal.safeparcel.zzd.zza(bArr2, creator));
            }
            return arrayList;
        } catch (zzbxs e) {
            if (!Log.isLoggable("SafeDataBufferRef", 6)) {
                return list;
            }
            Log.e("SafeDataBufferRef", "Cannot parse byte[]", e);
            return list;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float zzb(String str, float f) {
        return (!zzdf(str) || zzdh(str)) ? f : getFloat(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<Integer> zzb(String str, List<Integer> list) {
        byte[] zzc = zzc(str, (byte[]) null);
        if (zzc == null) {
            return list;
        }
        try {
            zzblo zzT = zzblo.zzT(zzc);
            if (zzT.zzbWy == null) {
                return list;
            }
            ArrayList arrayList = new ArrayList(zzT.zzbWy.length);
            for (int i = 0; i < zzT.zzbWy.length; i++) {
                arrayList.add(Integer.valueOf(zzT.zzbWy[i]));
            }
            return arrayList;
        } catch (zzbxs e) {
            if (!Log.isLoggable("SafeDataBufferRef", 6)) {
                return list;
            }
            Log.e("SafeDataBufferRef", "Cannot parse byte[]", e);
            return list;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<String> zzc(String str, List<String> list) {
        byte[] zzc = zzc(str, (byte[]) null);
        if (zzc == null) {
            return list;
        }
        try {
            zzblo zzT = zzblo.zzT(zzc);
            return zzT.zzbWx != null ? Arrays.asList(zzT.zzbWx) : list;
        } catch (zzbxs e) {
            if (!Log.isLoggable("SafeDataBufferRef", 6)) {
                return list;
            }
            Log.e("SafeDataBufferRef", "Cannot parse byte[]", e);
            return list;
        }
    }

    protected byte[] zzc(String str, byte[] bArr) {
        return (!zzdf(str) || zzdh(str)) ? bArr : getByteArray(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzk(String str, boolean z) {
        return (!zzdf(str) || zzdh(str)) ? z : getBoolean(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int zzy(String str, int i) {
        return (!zzdf(str) || zzdh(str)) ? i : getInteger(str);
    }
}
