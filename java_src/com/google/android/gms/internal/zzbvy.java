package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzbvy extends zzbwj {
    private static final Writer zzcqN = new Writer() { // from class: com.google.android.gms.internal.zzbvy.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    private static final zzbuw zzcqO = new zzbuw("closed");
    private final List<zzbuq> zzcqM;
    private String zzcqP;
    private zzbuq zzcqQ;

    public zzbvy() {
        super(zzcqN);
        this.zzcqM = new ArrayList();
        this.zzcqQ = zzbus.zzcpt;
    }

    private zzbuq zzadK() {
        return this.zzcqM.get(this.zzcqM.size() - 1);
    }

    private void zzd(zzbuq zzbuqVar) {
        if (this.zzcqP != null) {
            if (!zzbuqVar.zzadn() || zzaec()) {
                ((zzbut) zzadK()).zza(this.zzcqP, zzbuqVar);
            }
            this.zzcqP = null;
        } else if (this.zzcqM.isEmpty()) {
            this.zzcqQ = zzbuqVar;
        } else {
            zzbuq zzadK = zzadK();
            if (!(zzadK instanceof zzbun)) {
                throw new IllegalStateException();
            }
            ((zzbun) zzadK).zzc(zzbuqVar);
        }
    }

    @Override // com.google.android.gms.internal.zzbwj, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.zzcqM.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.zzcqM.add(zzcqO);
    }

    @Override // com.google.android.gms.internal.zzbwj, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // com.google.android.gms.internal.zzbwj
    public zzbwj zza(Number number) throws IOException {
        if (number == null) {
            return zzadP();
        }
        if (!isLenient()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                String valueOf = String.valueOf(number);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 33).append("JSON forbids NaN and infinities: ").append(valueOf).toString());
            }
        }
        zzd(new zzbuw(number));
        return this;
    }

    @Override // com.google.android.gms.internal.zzbwj
    public zzbwj zzaY(long j) throws IOException {
        zzd(new zzbuw((Number) Long.valueOf(j)));
        return this;
    }

    public zzbuq zzadJ() {
        if (!this.zzcqM.isEmpty()) {
            String valueOf = String.valueOf(this.zzcqM);
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 34).append("Expected one JSON element but was ").append(valueOf).toString());
        }
        return this.zzcqQ;
    }

    @Override // com.google.android.gms.internal.zzbwj
    public zzbwj zzadL() throws IOException {
        zzbun zzbunVar = new zzbun();
        zzd(zzbunVar);
        this.zzcqM.add(zzbunVar);
        return this;
    }

    @Override // com.google.android.gms.internal.zzbwj
    public zzbwj zzadM() throws IOException {
        if (this.zzcqM.isEmpty() || this.zzcqP != null) {
            throw new IllegalStateException();
        }
        if (!(zzadK() instanceof zzbun)) {
            throw new IllegalStateException();
        }
        this.zzcqM.remove(this.zzcqM.size() - 1);
        return this;
    }

    @Override // com.google.android.gms.internal.zzbwj
    public zzbwj zzadN() throws IOException {
        zzbut zzbutVar = new zzbut();
        zzd(zzbutVar);
        this.zzcqM.add(zzbutVar);
        return this;
    }

    @Override // com.google.android.gms.internal.zzbwj
    public zzbwj zzadO() throws IOException {
        if (this.zzcqM.isEmpty() || this.zzcqP != null) {
            throw new IllegalStateException();
        }
        if (!(zzadK() instanceof zzbut)) {
            throw new IllegalStateException();
        }
        this.zzcqM.remove(this.zzcqM.size() - 1);
        return this;
    }

    @Override // com.google.android.gms.internal.zzbwj
    public zzbwj zzadP() throws IOException {
        zzd(zzbus.zzcpt);
        return this;
    }

    @Override // com.google.android.gms.internal.zzbwj
    public zzbwj zzbl(boolean z) throws IOException {
        zzd(new zzbuw(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.android.gms.internal.zzbwj
    public zzbwj zzjV(String str) throws IOException {
        if (this.zzcqM.isEmpty() || this.zzcqP != null) {
            throw new IllegalStateException();
        }
        if (!(zzadK() instanceof zzbut)) {
            throw new IllegalStateException();
        }
        this.zzcqP = str;
        return this;
    }

    @Override // com.google.android.gms.internal.zzbwj
    public zzbwj zzjW(String str) throws IOException {
        if (str == null) {
            return zzadP();
        }
        zzd(new zzbuw(str));
        return this;
    }
}
