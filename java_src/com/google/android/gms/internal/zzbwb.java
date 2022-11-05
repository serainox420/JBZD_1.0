package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzbwb implements zzbvd {
    private final zzbvk zzcpc;
    private final zzbvl zzcpl;
    private final zzbuj zzcpn;

    /* loaded from: classes2.dex */
    public static final class zza<T> extends zzbvc<T> {
        private final zzbvp<T> zzcqJ;
        private final Map<String, zzb> zzcrc;

        private zza(zzbvp<T> zzbvpVar, Map<String, zzb> map) {
            this.zzcqJ = zzbvpVar;
            this.zzcrc = map;
        }

        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, T t) throws IOException {
            if (t == null) {
                zzbwjVar.zzadP();
                return;
            }
            zzbwjVar.zzadN();
            try {
                for (zzb zzbVar : this.zzcrc.values()) {
                    if (zzbVar.zzaT(t)) {
                        zzbwjVar.zzjV(zzbVar.name);
                        zzbVar.zza(zzbwjVar, t);
                    }
                }
                zzbwjVar.zzadO();
            } catch (IllegalAccessException e) {
                throw new AssertionError();
            }
        }

        @Override // com.google.android.gms.internal.zzbvc
        public T zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            T zzady = this.zzcqJ.zzady();
            try {
                zzbwhVar.beginObject();
                while (zzbwhVar.hasNext()) {
                    zzb zzbVar = this.zzcrc.get(zzbwhVar.nextName());
                    if (zzbVar == null || !zzbVar.zzcre) {
                        zzbwhVar.skipValue();
                    } else {
                        zzbVar.zza(zzbwhVar, zzady);
                    }
                }
                zzbwhVar.endObject();
                return zzady;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new zzbuz(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zzb {
        final String name;
        final boolean zzcrd;
        final boolean zzcre;

        protected zzb(String str, boolean z, boolean z2) {
            this.name = str;
            this.zzcrd = z;
            this.zzcre = z2;
        }

        abstract void zza(zzbwh zzbwhVar, Object obj) throws IOException, IllegalAccessException;

        abstract void zza(zzbwj zzbwjVar, Object obj) throws IOException, IllegalAccessException;

        abstract boolean zzaT(Object obj) throws IOException, IllegalAccessException;
    }

    public zzbwb(zzbvk zzbvkVar, zzbuj zzbujVar, zzbvl zzbvlVar) {
        this.zzcpc = zzbvkVar;
        this.zzcpn = zzbujVar;
        this.zzcpl = zzbvlVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzbvc<?> zza(zzbuk zzbukVar, Field field, zzbwg<?> zzbwgVar) {
        zzbvc<?> zza2;
        zzbve zzbveVar = (zzbve) field.getAnnotation(zzbve.class);
        return (zzbveVar == null || (zza2 = zzbvw.zza(this.zzcpc, zzbukVar, zzbwgVar, zzbveVar)) == null) ? zzbukVar.zza(zzbwgVar) : zza2;
    }

    private zzb zza(final zzbuk zzbukVar, final Field field, String str, final zzbwg<?> zzbwgVar, boolean z, boolean z2) {
        final boolean zzk = zzbvq.zzk(zzbwgVar.zzadQ());
        return new zzb(str, z, z2) { // from class: com.google.android.gms.internal.zzbwb.1
            final zzbvc<?> zzcqW;

            {
                this.zzcqW = zzbwb.this.zza(zzbukVar, field, zzbwgVar);
            }

            @Override // com.google.android.gms.internal.zzbwb.zzb
            void zza(zzbwh zzbwhVar, Object obj) throws IOException, IllegalAccessException {
                Object zzb2 = this.zzcqW.zzb(zzbwhVar);
                if (zzb2 != null || !zzk) {
                    field.set(obj, zzb2);
                }
            }

            @Override // com.google.android.gms.internal.zzbwb.zzb
            void zza(zzbwj zzbwjVar, Object obj) throws IOException, IllegalAccessException {
                new zzbwe(zzbukVar, this.zzcqW, zzbwgVar.zzadR()).zza(zzbwjVar, field.get(obj));
            }

            @Override // com.google.android.gms.internal.zzbwb.zzb
            public boolean zzaT(Object obj) throws IOException, IllegalAccessException {
                return this.zzcrd && field.get(obj) != obj;
            }
        };
    }

    static List<String> zza(zzbuj zzbujVar, Field field) {
        zzbvf zzbvfVar = (zzbvf) field.getAnnotation(zzbvf.class);
        LinkedList linkedList = new LinkedList();
        if (zzbvfVar == null) {
            linkedList.add(zzbujVar.zzc(field));
        } else {
            linkedList.add(zzbvfVar.value());
            String[] zzadw = zzbvfVar.zzadw();
            for (String str : zzadw) {
                linkedList.add(str);
            }
        }
        return linkedList;
    }

    private Map<String, zzb> zza(zzbuk zzbukVar, zzbwg<?> zzbwgVar, Class<?> cls) {
        Field[] declaredFields;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type zzadR = zzbwgVar.zzadR();
        while (cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                boolean zza2 = zza(field, true);
                boolean zza3 = zza(field, false);
                if (zza2 || zza3) {
                    field.setAccessible(true);
                    Type zza4 = zzbvj.zza(zzbwgVar.zzadR(), cls, field.getGenericType());
                    List<String> zzd = zzd(field);
                    zzb zzbVar = null;
                    int i = 0;
                    while (i < zzd.size()) {
                        String str = zzd.get(i);
                        if (i != 0) {
                            zza2 = false;
                        }
                        zzb zzbVar2 = (zzb) linkedHashMap.put(str, zza(zzbukVar, field, str, zzbwg.zzl(zza4), zza2, zza3));
                        if (zzbVar != null) {
                            zzbVar2 = zzbVar;
                        }
                        i++;
                        zzbVar = zzbVar2;
                    }
                    if (zzbVar != null) {
                        String valueOf = String.valueOf(zzadR);
                        String str2 = zzbVar.name;
                        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 37 + String.valueOf(str2).length()).append(valueOf).append(" declares multiple JSON fields named ").append(str2).toString());
                    }
                }
            }
            zzbwgVar = zzbwg.zzl(zzbvj.zza(zzbwgVar.zzadR(), cls, cls.getGenericSuperclass()));
            cls = zzbwgVar.zzadQ();
        }
        return linkedHashMap;
    }

    static boolean zza(Field field, boolean z, zzbvl zzbvlVar) {
        return !zzbvlVar.zza(field.getType(), z) && !zzbvlVar.zza(field, z);
    }

    private List<String> zzd(Field field) {
        return zza(this.zzcpn, field);
    }

    @Override // com.google.android.gms.internal.zzbvd
    public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
        Class<? super T> zzadQ = zzbwgVar.zzadQ();
        if (!Object.class.isAssignableFrom(zzadQ)) {
            return null;
        }
        return new zza(this.zzcpc.zzb(zzbwgVar), zza(zzbukVar, (zzbwg<?>) zzbwgVar, (Class<?>) zzadQ));
    }

    public boolean zza(Field field, boolean z) {
        return zza(field, z, this.zzcpl);
    }
}
