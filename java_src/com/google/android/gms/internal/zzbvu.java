package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
/* loaded from: classes2.dex */
public final class zzbvu implements zzbvd {
    private final zzbvk zzcpc;

    /* loaded from: classes2.dex */
    private static final class zza<E> extends zzbvc<Collection<E>> {
        private final zzbvc<E> zzcqI;
        private final zzbvp<? extends Collection<E>> zzcqJ;

        public zza(zzbuk zzbukVar, Type type, zzbvc<E> zzbvcVar, zzbvp<? extends Collection<E>> zzbvpVar) {
            this.zzcqI = new zzbwe(zzbukVar, zzbvcVar, type);
            this.zzcqJ = zzbvpVar;
        }

        @Override // com.google.android.gms.internal.zzbvc
        public /* bridge */ /* synthetic */ void zza(zzbwj zzbwjVar, Object obj) throws IOException {
            zza(zzbwjVar, (Collection) ((Collection) obj));
        }

        public void zza(zzbwj zzbwjVar, Collection<E> collection) throws IOException {
            if (collection == null) {
                zzbwjVar.zzadP();
                return;
            }
            zzbwjVar.zzadL();
            for (E e : collection) {
                this.zzcqI.zza(zzbwjVar, e);
            }
            zzbwjVar.zzadM();
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzj */
        public Collection<E> zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            Collection<E> zzady = this.zzcqJ.zzady();
            zzbwhVar.beginArray();
            while (zzbwhVar.hasNext()) {
                zzady.add(this.zzcqI.zzb(zzbwhVar));
            }
            zzbwhVar.endArray();
            return zzady;
        }
    }

    public zzbvu(zzbvk zzbvkVar) {
        this.zzcpc = zzbvkVar;
    }

    @Override // com.google.android.gms.internal.zzbvd
    public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
        Type zzadR = zzbwgVar.zzadR();
        Class<? super T> zzadQ = zzbwgVar.zzadQ();
        if (!Collection.class.isAssignableFrom(zzadQ)) {
            return null;
        }
        Type zza2 = zzbvj.zza(zzadR, (Class<?>) zzadQ);
        return new zza(zzbukVar, zza2, zzbukVar.zza(zzbwg.zzl(zza2)), this.zzcpc.zzb(zzbwgVar));
    }
}
