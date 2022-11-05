package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzbvz implements zzbvd {
    private final zzbvk zzcpc;
    private final boolean zzcqR;

    /* loaded from: classes2.dex */
    private final class zza<K, V> extends zzbvc<Map<K, V>> {
        private final zzbvp<? extends Map<K, V>> zzcqJ;
        private final zzbvc<K> zzcqS;
        private final zzbvc<V> zzcqT;

        public zza(zzbuk zzbukVar, Type type, zzbvc<K> zzbvcVar, Type type2, zzbvc<V> zzbvcVar2, zzbvp<? extends Map<K, V>> zzbvpVar) {
            this.zzcqS = new zzbwe(zzbukVar, zzbvcVar, type);
            this.zzcqT = new zzbwe(zzbukVar, zzbvcVar2, type2);
            this.zzcqJ = zzbvpVar;
        }

        private String zze(zzbuq zzbuqVar) {
            if (!zzbuqVar.zzadm()) {
                if (!zzbuqVar.zzadn()) {
                    throw new AssertionError();
                }
                return "null";
            }
            zzbuw zzadq = zzbuqVar.zzadq();
            if (zzadq.zzadt()) {
                return String.valueOf(zzadq.zzadi());
            }
            if (zzadq.zzads()) {
                return Boolean.toString(zzadq.getAsBoolean());
            }
            if (!zzadq.zzadu()) {
                throw new AssertionError();
            }
            return zzadq.zzadj();
        }

        @Override // com.google.android.gms.internal.zzbvc
        public /* bridge */ /* synthetic */ void zza(zzbwj zzbwjVar, Object obj) throws IOException {
            zza(zzbwjVar, (Map) ((Map) obj));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void zza(zzbwj zzbwjVar, Map<K, V> map) throws IOException {
            int i = 0;
            if (map == null) {
                zzbwjVar.zzadP();
            } else if (!zzbvz.this.zzcqR) {
                zzbwjVar.zzadN();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    zzbwjVar.zzjV(String.valueOf(entry.getKey()));
                    this.zzcqT.zza(zzbwjVar, entry.getValue());
                }
                zzbwjVar.zzadO();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    zzbuq zzaO = this.zzcqS.zzaO(entry2.getKey());
                    arrayList.add(zzaO);
                    arrayList2.add(entry2.getValue());
                    z = (zzaO.zzadk() || zzaO.zzadl()) | z;
                }
                if (!z) {
                    zzbwjVar.zzadN();
                    while (i < arrayList.size()) {
                        zzbwjVar.zzjV(zze((zzbuq) arrayList.get(i)));
                        this.zzcqT.zza(zzbwjVar, arrayList2.get(i));
                        i++;
                    }
                    zzbwjVar.zzadO();
                    return;
                }
                zzbwjVar.zzadL();
                while (i < arrayList.size()) {
                    zzbwjVar.zzadL();
                    zzbvr.zzb((zzbuq) arrayList.get(i), zzbwjVar);
                    this.zzcqT.zza(zzbwjVar, arrayList2.get(i));
                    zzbwjVar.zzadM();
                    i++;
                }
                zzbwjVar.zzadM();
            }
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzl */
        public Map<K, V> zzb(zzbwh zzbwhVar) throws IOException {
            zzbwi zzadF = zzbwhVar.zzadF();
            if (zzadF == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            Map<K, V> zzady = this.zzcqJ.zzady();
            if (zzadF != zzbwi.BEGIN_ARRAY) {
                zzbwhVar.beginObject();
                while (zzbwhVar.hasNext()) {
                    zzbvm.zzcqg.zzi(zzbwhVar);
                    K zzb = this.zzcqS.zzb(zzbwhVar);
                    if (zzady.put(zzb, this.zzcqT.zzb(zzbwhVar)) != null) {
                        String valueOf = String.valueOf(zzb);
                        throw new zzbuz(new StringBuilder(String.valueOf(valueOf).length() + 15).append("duplicate key: ").append(valueOf).toString());
                    }
                }
                zzbwhVar.endObject();
                return zzady;
            }
            zzbwhVar.beginArray();
            while (zzbwhVar.hasNext()) {
                zzbwhVar.beginArray();
                K zzb2 = this.zzcqS.zzb(zzbwhVar);
                if (zzady.put(zzb2, this.zzcqT.zzb(zzbwhVar)) != null) {
                    String valueOf2 = String.valueOf(zzb2);
                    throw new zzbuz(new StringBuilder(String.valueOf(valueOf2).length() + 15).append("duplicate key: ").append(valueOf2).toString());
                }
                zzbwhVar.endArray();
            }
            zzbwhVar.endArray();
            return zzady;
        }
    }

    public zzbvz(zzbvk zzbvkVar, boolean z) {
        this.zzcpc = zzbvkVar;
        this.zzcqR = z;
    }

    private zzbvc<?> zza(zzbuk zzbukVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? zzbwf.zzcrn : zzbukVar.zza(zzbwg.zzl(type));
    }

    @Override // com.google.android.gms.internal.zzbvd
    public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
        Type zzadR = zzbwgVar.zzadR();
        if (!Map.class.isAssignableFrom(zzbwgVar.zzadQ())) {
            return null;
        }
        Type[] zzb = zzbvj.zzb(zzadR, zzbvj.zzf(zzadR));
        return new zza(zzbukVar, zzb[0], zza(zzbukVar, zzb[0]), zzb[1], zzbukVar.zza(zzbwg.zzl(zzb[1])), this.zzcpc.zzb(zzbwgVar));
    }
}
