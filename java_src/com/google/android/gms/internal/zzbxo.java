package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbxn;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbxo<M extends zzbxn<M>, T> {
    public final int tag;
    protected final int type;
    protected final Class<T> zzckM;
    protected final boolean zzcuJ;

    private zzbxo(int i, Class<T> cls, int i2, boolean z) {
        this.type = i;
        this.zzckM = cls;
        this.tag = i2;
        this.zzcuJ = z;
    }

    public static <M extends zzbxn<M>, T extends zzbxt> zzbxo<M, T> zza(int i, Class<T> cls, long j) {
        return new zzbxo<>(i, cls, (int) j, false);
    }

    private T zzad(List<zzbxv> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            zzbxv zzbxvVar = list.get(i);
            if (zzbxvVar.zzbxZ.length != 0) {
                zza(zzbxvVar, arrayList);
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        T cast = this.zzckM.cast(Array.newInstance(this.zzckM.getComponentType(), size));
        for (int i2 = 0; i2 < size; i2++) {
            Array.set(cast, i2, arrayList.get(i2));
        }
        return cast;
    }

    private T zzae(List<zzbxv> list) {
        if (list.isEmpty()) {
            return null;
        }
        return this.zzckM.cast(zzaN(zzbxl.zzaf(list.get(list.size() - 1).zzbxZ)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbxo)) {
            return false;
        }
        zzbxo zzbxoVar = (zzbxo) obj;
        return this.type == zzbxoVar.type && this.zzckM == zzbxoVar.zzckM && this.tag == zzbxoVar.tag && this.zzcuJ == zzbxoVar.zzcuJ;
    }

    public int hashCode() {
        return (this.zzcuJ ? 1 : 0) + ((((((this.type + 1147) * 31) + this.zzckM.hashCode()) * 31) + this.tag) * 31);
    }

    protected void zza(zzbxv zzbxvVar, List<Object> list) {
        list.add(zzaN(zzbxl.zzaf(zzbxvVar.zzbxZ)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(Object obj, zzbxm zzbxmVar) throws IOException {
        if (this.zzcuJ) {
            zzc(obj, zzbxmVar);
        } else {
            zzb(obj, zzbxmVar);
        }
    }

    protected Object zzaN(zzbxl zzbxlVar) {
        Class<?> componentType = this.zzcuJ ? this.zzckM.getComponentType() : this.zzckM;
        try {
            switch (this.type) {
                case 10:
                    zzbxt zzbxtVar = (zzbxt) componentType.newInstance();
                    zzbxlVar.zza(zzbxtVar, zzbxw.zzrs(this.tag));
                    return zzbxtVar;
                case 11:
                    zzbxt zzbxtVar2 = (zzbxt) componentType.newInstance();
                    zzbxlVar.zza(zzbxtVar2);
                    return zzbxtVar2;
                default:
                    throw new IllegalArgumentException(new StringBuilder(24).append("Unknown type ").append(this.type).toString());
            }
        } catch (IOException e) {
            throw new IllegalArgumentException("Error reading extension field", e);
        } catch (IllegalAccessException e2) {
            String valueOf = String.valueOf(componentType);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 33).append("Error creating instance of class ").append(valueOf).toString(), e2);
        } catch (InstantiationException e3) {
            String valueOf2 = String.valueOf(componentType);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf2).length() + 33).append("Error creating instance of class ").append(valueOf2).toString(), e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzaU(Object obj) {
        return this.zzcuJ ? zzaV(obj) : zzaW(obj);
    }

    protected int zzaV(Object obj) {
        int i = 0;
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            if (Array.get(obj, i2) != null) {
                i += zzaW(Array.get(obj, i2));
            }
        }
        return i;
    }

    protected int zzaW(Object obj) {
        int zzrs = zzbxw.zzrs(this.tag);
        switch (this.type) {
            case 10:
                return zzbxm.zzb(zzrs, (zzbxt) obj);
            case 11:
                return zzbxm.zzc(zzrs, (zzbxt) obj);
            default:
                throw new IllegalArgumentException(new StringBuilder(24).append("Unknown type ").append(this.type).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final T zzac(List<zzbxv> list) {
        if (list == null) {
            return null;
        }
        return this.zzcuJ ? zzad(list) : zzae(list);
    }

    protected void zzb(Object obj, zzbxm zzbxmVar) {
        try {
            zzbxmVar.zzrk(this.tag);
            switch (this.type) {
                case 10:
                    int zzrs = zzbxw.zzrs(this.tag);
                    zzbxmVar.zzb((zzbxt) obj);
                    zzbxmVar.zzN(zzrs, 4);
                    return;
                case 11:
                    zzbxmVar.zzc((zzbxt) obj);
                    return;
                default:
                    throw new IllegalArgumentException(new StringBuilder(24).append("Unknown type ").append(this.type).toString());
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    protected void zzc(Object obj, zzbxm zzbxmVar) {
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2 != null) {
                zzb(obj2, zzbxmVar);
            }
        }
    }
}
