package com.google.android.gms.internal;

import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes2.dex */
public final class zzbvr {

    /* loaded from: classes2.dex */
    private static final class zza extends Writer {
        private final Appendable zzcqy;
        private final C0315zza zzcqz;

        /* renamed from: com.google.android.gms.internal.zzbvr$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        static class C0315zza implements CharSequence {
            char[] zzcqA;

            C0315zza() {
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.zzcqA[i];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.zzcqA.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.zzcqA, i, i2 - i);
            }
        }

        private zza(Appendable appendable) {
            this.zzcqz = new C0315zza();
            this.zzcqy = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.zzcqy.append((char) i);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            this.zzcqz.zzcqA = cArr;
            this.zzcqy.append(this.zzcqz, i, i + i2);
        }
    }

    public static Writer zza(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new zza(appendable);
    }

    public static void zzb(zzbuq zzbuqVar, zzbwj zzbwjVar) throws IOException {
        zzbwf.zzcrX.zza(zzbwjVar, zzbuqVar);
    }

    public static zzbuq zzh(zzbwh zzbwhVar) throws zzbuu {
        boolean z = true;
        try {
            zzbwhVar.zzadF();
            z = false;
            return zzbwf.zzcrX.zzb(zzbwhVar);
        } catch (zzbwk e) {
            throw new zzbuz(e);
        } catch (EOFException e2) {
            if (!z) {
                throw new zzbuz(e2);
            }
            return zzbus.zzcpt;
        } catch (IOException e3) {
            throw new zzbur(e3);
        } catch (NumberFormatException e4) {
            throw new zzbuz(e4);
        }
    }
}
