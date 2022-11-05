package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class zzbwa extends zzbvc<Object> {
    public static final zzbvd zzcqF = new zzbvd() { // from class: com.google.android.gms.internal.zzbwa.1
        @Override // com.google.android.gms.internal.zzbvd
        public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
            if (zzbwgVar.zzadQ() == Object.class) {
                return new zzbwa(zzbukVar);
            }
            return null;
        }
    };
    private final zzbuk zzcpB;

    private zzbwa(zzbuk zzbukVar) {
        this.zzcpB = zzbukVar;
    }

    @Override // com.google.android.gms.internal.zzbvc
    public void zza(zzbwj zzbwjVar, Object obj) throws IOException {
        if (obj == null) {
            zzbwjVar.zzadP();
            return;
        }
        zzbvc zzj = this.zzcpB.zzj(obj.getClass());
        if (!(zzj instanceof zzbwa)) {
            zzj.zza(zzbwjVar, obj);
            return;
        }
        zzbwjVar.zzadN();
        zzbwjVar.zzadO();
    }

    @Override // com.google.android.gms.internal.zzbvc
    public Object zzb(zzbwh zzbwhVar) throws IOException {
        switch (zzbwhVar.zzadF()) {
            case BEGIN_ARRAY:
                ArrayList arrayList = new ArrayList();
                zzbwhVar.beginArray();
                while (zzbwhVar.hasNext()) {
                    arrayList.add(zzb(zzbwhVar));
                }
                zzbwhVar.endArray();
                return arrayList;
            case BEGIN_OBJECT:
                zzbvo zzbvoVar = new zzbvo();
                zzbwhVar.beginObject();
                while (zzbwhVar.hasNext()) {
                    zzbvoVar.put(zzbwhVar.nextName(), zzb(zzbwhVar));
                }
                zzbwhVar.endObject();
                return zzbvoVar;
            case STRING:
                return zzbwhVar.nextString();
            case NUMBER:
                return Double.valueOf(zzbwhVar.nextDouble());
            case BOOLEAN:
                return Boolean.valueOf(zzbwhVar.nextBoolean());
            case NULL:
                zzbwhVar.nextNull();
                return null;
            default:
                throw new IllegalStateException();
        }
    }
}
