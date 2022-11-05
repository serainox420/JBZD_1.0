package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzbvx extends zzbwh {
    private static final Reader zzcqK = new Reader() { // from class: com.google.android.gms.internal.zzbvx.1
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    };
    private static final Object zzcqL = new Object();
    private final List<Object> zzcqM;

    public zzbvx(zzbuq zzbuqVar) {
        super(zzcqK);
        this.zzcqM = new ArrayList();
        this.zzcqM.add(zzbuqVar);
    }

    private void zza(zzbwi zzbwiVar) throws IOException {
        if (zzadF() != zzbwiVar) {
            String valueOf = String.valueOf(zzbwiVar);
            String valueOf2 = String.valueOf(zzadF());
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
        }
    }

    private Object zzadG() {
        return this.zzcqM.get(this.zzcqM.size() - 1);
    }

    private Object zzadH() {
        return this.zzcqM.remove(this.zzcqM.size() - 1);
    }

    @Override // com.google.android.gms.internal.zzbwh
    public void beginArray() throws IOException {
        zza(zzbwi.BEGIN_ARRAY);
        this.zzcqM.add(((zzbun) zzadG()).iterator());
    }

    @Override // com.google.android.gms.internal.zzbwh
    public void beginObject() throws IOException {
        zza(zzbwi.BEGIN_OBJECT);
        this.zzcqM.add(((zzbut) zzadG()).entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.zzbwh, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.zzcqM.clear();
        this.zzcqM.add(zzcqL);
    }

    @Override // com.google.android.gms.internal.zzbwh
    public void endArray() throws IOException {
        zza(zzbwi.END_ARRAY);
        zzadH();
        zzadH();
    }

    @Override // com.google.android.gms.internal.zzbwh
    public void endObject() throws IOException {
        zza(zzbwi.END_OBJECT);
        zzadH();
        zzadH();
    }

    @Override // com.google.android.gms.internal.zzbwh
    public boolean hasNext() throws IOException {
        zzbwi zzadF = zzadF();
        return (zzadF == zzbwi.END_OBJECT || zzadF == zzbwi.END_ARRAY) ? false : true;
    }

    @Override // com.google.android.gms.internal.zzbwh
    public boolean nextBoolean() throws IOException {
        zza(zzbwi.BOOLEAN);
        return ((zzbuw) zzadH()).getAsBoolean();
    }

    @Override // com.google.android.gms.internal.zzbwh
    public double nextDouble() throws IOException {
        zzbwi zzadF = zzadF();
        if (zzadF != zzbwi.NUMBER && zzadF != zzbwi.STRING) {
            String valueOf = String.valueOf(zzbwi.NUMBER);
            String valueOf2 = String.valueOf(zzadF);
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
        }
        double asDouble = ((zzbuw) zzadG()).getAsDouble();
        if (!isLenient() && (Double.isNaN(asDouble) || Double.isInfinite(asDouble))) {
            throw new NumberFormatException(new StringBuilder(57).append("JSON forbids NaN and infinities: ").append(asDouble).toString());
        }
        zzadH();
        return asDouble;
    }

    @Override // com.google.android.gms.internal.zzbwh
    public int nextInt() throws IOException {
        zzbwi zzadF = zzadF();
        if (zzadF == zzbwi.NUMBER || zzadF == zzbwi.STRING) {
            int asInt = ((zzbuw) zzadG()).getAsInt();
            zzadH();
            return asInt;
        }
        String valueOf = String.valueOf(zzbwi.NUMBER);
        String valueOf2 = String.valueOf(zzadF);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    @Override // com.google.android.gms.internal.zzbwh
    public long nextLong() throws IOException {
        zzbwi zzadF = zzadF();
        if (zzadF == zzbwi.NUMBER || zzadF == zzbwi.STRING) {
            long asLong = ((zzbuw) zzadG()).getAsLong();
            zzadH();
            return asLong;
        }
        String valueOf = String.valueOf(zzbwi.NUMBER);
        String valueOf2 = String.valueOf(zzadF);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    @Override // com.google.android.gms.internal.zzbwh
    public String nextName() throws IOException {
        zza(zzbwi.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) zzadG()).next();
        this.zzcqM.add(entry.getValue());
        return (String) entry.getKey();
    }

    @Override // com.google.android.gms.internal.zzbwh
    public void nextNull() throws IOException {
        zza(zzbwi.NULL);
        zzadH();
    }

    @Override // com.google.android.gms.internal.zzbwh
    public String nextString() throws IOException {
        zzbwi zzadF = zzadF();
        if (zzadF == zzbwi.STRING || zzadF == zzbwi.NUMBER) {
            return ((zzbuw) zzadH()).zzadj();
        }
        String valueOf = String.valueOf(zzbwi.STRING);
        String valueOf2 = String.valueOf(zzadF);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    @Override // com.google.android.gms.internal.zzbwh
    public void skipValue() throws IOException {
        if (zzadF() == zzbwi.NAME) {
            nextName();
        } else {
            zzadH();
        }
    }

    @Override // com.google.android.gms.internal.zzbwh
    public String toString() {
        return getClass().getSimpleName();
    }

    @Override // com.google.android.gms.internal.zzbwh
    public zzbwi zzadF() throws IOException {
        if (this.zzcqM.isEmpty()) {
            return zzbwi.END_DOCUMENT;
        }
        Object zzadG = zzadG();
        if (zzadG instanceof Iterator) {
            boolean z = this.zzcqM.get(this.zzcqM.size() - 2) instanceof zzbut;
            Iterator it = (Iterator) zzadG;
            if (!it.hasNext()) {
                return z ? zzbwi.END_OBJECT : zzbwi.END_ARRAY;
            } else if (z) {
                return zzbwi.NAME;
            } else {
                this.zzcqM.add(it.next());
                return zzadF();
            }
        } else if (zzadG instanceof zzbut) {
            return zzbwi.BEGIN_OBJECT;
        } else {
            if (zzadG instanceof zzbun) {
                return zzbwi.BEGIN_ARRAY;
            }
            if (!(zzadG instanceof zzbuw)) {
                if (zzadG instanceof zzbus) {
                    return zzbwi.NULL;
                }
                if (zzadG != zzcqL) {
                    throw new AssertionError();
                }
                throw new IllegalStateException("JsonReader is closed");
            }
            zzbuw zzbuwVar = (zzbuw) zzadG;
            if (zzbuwVar.zzadu()) {
                return zzbwi.STRING;
            }
            if (zzbuwVar.zzads()) {
                return zzbwi.BOOLEAN;
            }
            if (!zzbuwVar.zzadt()) {
                throw new AssertionError();
            }
            return zzbwi.NUMBER;
        }
    }

    public void zzadI() throws IOException {
        zza(zzbwi.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) zzadG()).next();
        this.zzcqM.add(entry.getValue());
        this.zzcqM.add(new zzbuw((String) entry.getKey()));
    }
}
