package com.google.android.gms.internal;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzbuk {
    private final ThreadLocal<Map<zzbwg<?>, zza<?>>> zzcoZ;
    private final Map<zzbwg<?>, zzbvc<?>> zzcpa;
    private final List<zzbvd> zzcpb;
    private final zzbvk zzcpc;
    private final boolean zzcpd;
    private final boolean zzcpe;
    private final boolean zzcpf;
    private final boolean zzcpg;
    final zzbuo zzcph;
    final zzbux zzcpi;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza<T> extends zzbvc<T> {
        private zzbvc<T> zzcpk;

        zza() {
        }

        public void zza(zzbvc<T> zzbvcVar) {
            if (this.zzcpk != null) {
                throw new AssertionError();
            }
            this.zzcpk = zzbvcVar;
        }

        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, T t) throws IOException {
            if (this.zzcpk == null) {
                throw new IllegalStateException();
            }
            this.zzcpk.zza(zzbwjVar, t);
        }

        @Override // com.google.android.gms.internal.zzbvc
        public T zzb(zzbwh zzbwhVar) throws IOException {
            if (this.zzcpk == null) {
                throw new IllegalStateException();
            }
            return this.zzcpk.zzb(zzbwhVar);
        }
    }

    public zzbuk() {
        this(zzbvl.zzcpV, zzbui.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, zzbva.DEFAULT, Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbuk(zzbvl zzbvlVar, zzbuj zzbujVar, Map<Type, zzbum<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, zzbva zzbvaVar, List<zzbvd> list) {
        this.zzcoZ = new ThreadLocal<>();
        this.zzcpa = Collections.synchronizedMap(new HashMap());
        this.zzcph = new zzbuo() { // from class: com.google.android.gms.internal.zzbuk.1
        };
        this.zzcpi = new zzbux() { // from class: com.google.android.gms.internal.zzbuk.2
        };
        this.zzcpc = new zzbvk(map);
        this.zzcpd = z;
        this.zzcpf = z3;
        this.zzcpe = z4;
        this.zzcpg = z5;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzbwf.zzcrY);
        arrayList.add(zzbwa.zzcqF);
        arrayList.add(zzbvlVar);
        arrayList.addAll(list);
        arrayList.add(zzbwf.zzcrF);
        arrayList.add(zzbwf.zzcru);
        arrayList.add(zzbwf.zzcro);
        arrayList.add(zzbwf.zzcrq);
        arrayList.add(zzbwf.zzcrs);
        arrayList.add(zzbwf.zza(Long.TYPE, Long.class, zza(zzbvaVar)));
        arrayList.add(zzbwf.zza(Double.TYPE, Double.class, zzbj(z6)));
        arrayList.add(zzbwf.zza(Float.TYPE, Float.class, zzbk(z6)));
        arrayList.add(zzbwf.zzcrz);
        arrayList.add(zzbwf.zzcrB);
        arrayList.add(zzbwf.zzcrH);
        arrayList.add(zzbwf.zzcrJ);
        arrayList.add(zzbwf.zza(BigDecimal.class, zzbwf.zzcrD));
        arrayList.add(zzbwf.zza(BigInteger.class, zzbwf.zzcrE));
        arrayList.add(zzbwf.zzcrL);
        arrayList.add(zzbwf.zzcrN);
        arrayList.add(zzbwf.zzcrR);
        arrayList.add(zzbwf.zzcrW);
        arrayList.add(zzbwf.zzcrP);
        arrayList.add(zzbwf.zzcrl);
        arrayList.add(zzbvv.zzcqF);
        arrayList.add(zzbwf.zzcrU);
        arrayList.add(zzbwd.zzcqF);
        arrayList.add(zzbwc.zzcqF);
        arrayList.add(zzbwf.zzcrS);
        arrayList.add(zzbvt.zzcqF);
        arrayList.add(zzbwf.zzcrj);
        arrayList.add(new zzbvu(this.zzcpc));
        arrayList.add(new zzbvz(this.zzcpc, z2));
        arrayList.add(new zzbvw(this.zzcpc));
        arrayList.add(zzbwf.zzcrZ);
        arrayList.add(new zzbwb(this.zzcpc, zzbujVar, zzbvlVar));
        this.zzcpb = Collections.unmodifiableList(arrayList);
    }

    private zzbvc<Number> zza(zzbva zzbvaVar) {
        return zzbvaVar == zzbva.DEFAULT ? zzbwf.zzcrv : new zzbvc<Number>() { // from class: com.google.android.gms.internal.zzbuk.5
            @Override // com.google.android.gms.internal.zzbvc
            public void zza(zzbwj zzbwjVar, Number number) throws IOException {
                if (number == null) {
                    zzbwjVar.zzadP();
                } else {
                    zzbwjVar.zzjW(number.toString());
                }
            }

            @Override // com.google.android.gms.internal.zzbvc
            /* renamed from: zzg */
            public Number zzb(zzbwh zzbwhVar) throws IOException {
                if (zzbwhVar.zzadF() == zzbwi.NULL) {
                    zzbwhVar.nextNull();
                    return null;
                }
                return Long.valueOf(zzbwhVar.nextLong());
            }
        };
    }

    private static void zza(Object obj, zzbwh zzbwhVar) {
        if (obj != null) {
            try {
                if (zzbwhVar.zzadF() == zzbwi.END_DOCUMENT) {
                    return;
                }
                throw new zzbur("JSON document was not fully consumed.");
            } catch (zzbwk e) {
                throw new zzbuz(e);
            } catch (IOException e2) {
                throw new zzbur(e2);
            }
        }
    }

    private zzbvc<Number> zzbj(boolean z) {
        return z ? zzbwf.zzcrx : new zzbvc<Number>() { // from class: com.google.android.gms.internal.zzbuk.3
            @Override // com.google.android.gms.internal.zzbvc
            public void zza(zzbwj zzbwjVar, Number number) throws IOException {
                if (number == null) {
                    zzbwjVar.zzadP();
                    return;
                }
                zzbuk.this.zzm(number.doubleValue());
                zzbwjVar.zza(number);
            }

            @Override // com.google.android.gms.internal.zzbvc
            /* renamed from: zze */
            public Double zzb(zzbwh zzbwhVar) throws IOException {
                if (zzbwhVar.zzadF() == zzbwi.NULL) {
                    zzbwhVar.nextNull();
                    return null;
                }
                return Double.valueOf(zzbwhVar.nextDouble());
            }
        };
    }

    private zzbvc<Number> zzbk(boolean z) {
        return z ? zzbwf.zzcrw : new zzbvc<Number>() { // from class: com.google.android.gms.internal.zzbuk.4
            @Override // com.google.android.gms.internal.zzbvc
            public void zza(zzbwj zzbwjVar, Number number) throws IOException {
                if (number == null) {
                    zzbwjVar.zzadP();
                    return;
                }
                zzbuk.this.zzm(number.floatValue());
                zzbwjVar.zza(number);
            }

            @Override // com.google.android.gms.internal.zzbvc
            /* renamed from: zzf */
            public Float zzb(zzbwh zzbwhVar) throws IOException {
                if (zzbwhVar.zzadF() == zzbwi.NULL) {
                    zzbwhVar.nextNull();
                    return null;
                }
                return Float.valueOf((float) zzbwhVar.nextDouble());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzm(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(new StringBuilder(168).append(d).append(" is not a valid double value as per JSON specification. To override this").append(" behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.").toString());
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.zzcpd + "factories:" + this.zzcpb + ",instanceCreators:" + this.zzcpc + "}";
    }

    public <T> zzbvc<T> zza(zzbvd zzbvdVar, zzbwg<T> zzbwgVar) {
        boolean z = false;
        if (!this.zzcpb.contains(zzbvdVar)) {
            z = true;
        }
        boolean z2 = z;
        for (zzbvd zzbvdVar2 : this.zzcpb) {
            if (z2) {
                zzbvc<T> zza2 = zzbvdVar2.zza(this, zzbwgVar);
                if (zza2 != null) {
                    return zza2;
                }
            } else if (zzbvdVar2 == zzbvdVar) {
                z2 = true;
            }
        }
        String valueOf = String.valueOf(zzbwgVar);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 22).append("GSON cannot serialize ").append(valueOf).toString());
    }

    public <T> zzbvc<T> zza(zzbwg<T> zzbwgVar) {
        HashMap hashMap;
        zzbvc<T> zzbvcVar = (zzbvc<T>) this.zzcpa.get(zzbwgVar);
        if (zzbvcVar == null) {
            Map<zzbwg<?>, zza<?>> map = this.zzcoZ.get();
            boolean z = false;
            if (map == null) {
                HashMap hashMap2 = new HashMap();
                this.zzcoZ.set(hashMap2);
                hashMap = hashMap2;
                z = true;
            } else {
                hashMap = map;
            }
            zzbvcVar = hashMap.get(zzbwgVar);
            if (zzbvcVar == null) {
                try {
                    zza<?> zzaVar = new zza<>();
                    hashMap.put(zzbwgVar, zzaVar);
                    for (zzbvd zzbvdVar : this.zzcpb) {
                        zzbvcVar = zzbvdVar.zza(this, zzbwgVar);
                        if (zzbvcVar != null) {
                            zzaVar.zza(zzbvcVar);
                            this.zzcpa.put(zzbwgVar, zzbvcVar);
                            hashMap.remove(zzbwgVar);
                            if (z) {
                                this.zzcoZ.remove();
                            }
                        }
                    }
                    String valueOf = String.valueOf(zzbwgVar);
                    throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 19).append("GSON cannot handle ").append(valueOf).toString());
                } catch (Throwable th) {
                    hashMap.remove(zzbwgVar);
                    if (z) {
                        this.zzcoZ.remove();
                    }
                    throw th;
                }
            }
        }
        return zzbvcVar;
    }

    public zzbwj zza(Writer writer) throws IOException {
        if (this.zzcpf) {
            writer.write(")]}'\n");
        }
        zzbwj zzbwjVar = new zzbwj(writer);
        if (this.zzcpg) {
            zzbwjVar.setIndent("  ");
        }
        zzbwjVar.zzbo(this.zzcpd);
        return zzbwjVar;
    }

    public <T> T zza(zzbuq zzbuqVar, Class<T> cls) throws zzbuz {
        return (T) zzbvq.zzo(cls).cast(zza(zzbuqVar, (Type) cls));
    }

    public <T> T zza(zzbuq zzbuqVar, Type type) throws zzbuz {
        if (zzbuqVar == null) {
            return null;
        }
        return (T) zza(new zzbvx(zzbuqVar), type);
    }

    public <T> T zza(zzbwh zzbwhVar, Type type) throws zzbur, zzbuz {
        boolean z = true;
        boolean isLenient = zzbwhVar.isLenient();
        zzbwhVar.setLenient(true);
        try {
            try {
                zzbwhVar.zzadF();
                z = false;
                return zza(zzbwg.zzl(type)).zzb(zzbwhVar);
            } catch (EOFException e) {
                if (!z) {
                    throw new zzbuz(e);
                }
                zzbwhVar.setLenient(isLenient);
                return null;
            } catch (IOException e2) {
                throw new zzbuz(e2);
            } catch (IllegalStateException e3) {
                throw new zzbuz(e3);
            }
        } finally {
            zzbwhVar.setLenient(isLenient);
        }
    }

    public <T> T zza(Reader reader, Type type) throws zzbur, zzbuz {
        zzbwh zzbwhVar = new zzbwh(reader);
        T t = (T) zza(zzbwhVar, type);
        zza(t, zzbwhVar);
        return t;
    }

    public <T> T zza(String str, Type type) throws zzbuz {
        if (str == null) {
            return null;
        }
        return (T) zza(new StringReader(str), type);
    }

    public void zza(zzbuq zzbuqVar, zzbwj zzbwjVar) throws zzbur {
        boolean isLenient = zzbwjVar.isLenient();
        zzbwjVar.setLenient(true);
        boolean zzaeb = zzbwjVar.zzaeb();
        zzbwjVar.zzbn(this.zzcpe);
        boolean zzaec = zzbwjVar.zzaec();
        zzbwjVar.zzbo(this.zzcpd);
        try {
            try {
                zzbvr.zzb(zzbuqVar, zzbwjVar);
            } catch (IOException e) {
                throw new zzbur(e);
            }
        } finally {
            zzbwjVar.setLenient(isLenient);
            zzbwjVar.zzbn(zzaeb);
            zzbwjVar.zzbo(zzaec);
        }
    }

    public void zza(zzbuq zzbuqVar, Appendable appendable) throws zzbur {
        try {
            zza(zzbuqVar, zza(zzbvr.zza(appendable)));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void zza(Object obj, Type type, zzbwj zzbwjVar) throws zzbur {
        zzbvc zza2 = zza(zzbwg.zzl(type));
        boolean isLenient = zzbwjVar.isLenient();
        zzbwjVar.setLenient(true);
        boolean zzaeb = zzbwjVar.zzaeb();
        zzbwjVar.zzbn(this.zzcpe);
        boolean zzaec = zzbwjVar.zzaec();
        zzbwjVar.zzbo(this.zzcpd);
        try {
            try {
                zza2.zza(zzbwjVar, obj);
            } catch (IOException e) {
                throw new zzbur(e);
            }
        } finally {
            zzbwjVar.setLenient(isLenient);
            zzbwjVar.zzbn(zzaeb);
            zzbwjVar.zzbo(zzaec);
        }
    }

    public void zza(Object obj, Type type, Appendable appendable) throws zzbur {
        try {
            zza(obj, type, zza(zzbvr.zza(appendable)));
        } catch (IOException e) {
            throw new zzbur(e);
        }
    }

    public String zzaL(Object obj) {
        return obj == null ? zzb(zzbus.zzcpt) : zzc(obj, obj.getClass());
    }

    public String zzb(zzbuq zzbuqVar) {
        StringWriter stringWriter = new StringWriter();
        zza(zzbuqVar, stringWriter);
        return stringWriter.toString();
    }

    public String zzc(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        zza(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public <T> T zzf(String str, Class<T> cls) throws zzbuz {
        return (T) zzbvq.zzo(cls).cast(zza(str, cls));
    }

    public <T> zzbvc<T> zzj(Class<T> cls) {
        return zza(zzbwg.zzq(cls));
    }
}
