package com.google.android.gms.internal;

import android.os.SystemClock;
import com.google.android.gms.internal.zzb;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzw implements com.google.android.gms.internal.zzb {
    private final Map<String, zza> zzaw;
    private long zzax;
    private final File zzay;
    private final int zzaz;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza {
        public String zza;
        public long zzaA;
        public String zzaB;
        public long zzb;
        public long zzc;
        public long zzd;
        public long zze;
        public Map<String, String> zzf;

        private zza() {
        }

        public zza(String str, zzb.zza zzaVar) {
            this.zzaB = str;
            this.zzaA = zzaVar.data.length;
            this.zza = zzaVar.zza;
            this.zzb = zzaVar.zzb;
            this.zzc = zzaVar.zzc;
            this.zzd = zzaVar.zzd;
            this.zze = zzaVar.zze;
            this.zzf = zzaVar.zzf;
        }

        public static zza zzf(InputStream inputStream) throws IOException {
            zza zzaVar = new zza();
            if (zzw.zzb(inputStream) != 538247942) {
                throw new IOException();
            }
            zzaVar.zzaB = zzw.zzd(inputStream);
            zzaVar.zza = zzw.zzd(inputStream);
            if (zzaVar.zza.equals("")) {
                zzaVar.zza = null;
            }
            zzaVar.zzb = zzw.zzc(inputStream);
            zzaVar.zzc = zzw.zzc(inputStream);
            zzaVar.zzd = zzw.zzc(inputStream);
            zzaVar.zze = zzw.zzc(inputStream);
            zzaVar.zzf = zzw.zze(inputStream);
            return zzaVar;
        }

        public boolean zza(OutputStream outputStream) {
            try {
                zzw.zza(outputStream, 538247942);
                zzw.zza(outputStream, this.zzaB);
                zzw.zza(outputStream, this.zza == null ? "" : this.zza);
                zzw.zza(outputStream, this.zzb);
                zzw.zza(outputStream, this.zzc);
                zzw.zza(outputStream, this.zzd);
                zzw.zza(outputStream, this.zze);
                zzw.zza(this.zzf, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                zzt.zzb("%s", e.toString());
                return false;
            }
        }

        public zzb.zza zzb(byte[] bArr) {
            zzb.zza zzaVar = new zzb.zza();
            zzaVar.data = bArr;
            zzaVar.zza = this.zza;
            zzaVar.zzb = this.zzb;
            zzaVar.zzc = this.zzc;
            zzaVar.zzd = this.zzd;
            zzaVar.zze = this.zze;
            zzaVar.zzf = this.zzf;
            return zzaVar;
        }
    }

    /* loaded from: classes2.dex */
    private static class zzb extends FilterInputStream {
        private int zzaC;

        private zzb(InputStream inputStream) {
            super(inputStream);
            this.zzaC = 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.zzaC++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.zzaC += read;
            }
            return read;
        }
    }

    public zzw(File file) {
        this(file, 5242880);
    }

    public zzw(File file, int i) {
        this.zzaw = new LinkedHashMap(16, 0.75f, true);
        this.zzax = 0L;
        this.zzay = file;
        this.zzaz = i;
    }

    private void removeEntry(String str) {
        zza zzaVar = this.zzaw.get(str);
        if (zzaVar != null) {
            this.zzax -= zzaVar.zzaA;
            this.zzaw.remove(str);
        }
    }

    private static int zza(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read == -1) {
            throw new EOFException();
        }
        return read;
    }

    static void zza(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    static void zza(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    static void zza(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        zza(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private void zza(String str, zza zzaVar) {
        if (!this.zzaw.containsKey(str)) {
            this.zzax += zzaVar.zzaA;
        } else {
            this.zzax = (zzaVar.zzaA - this.zzaw.get(str).zzaA) + this.zzax;
        }
        this.zzaw.put(str, zzaVar);
    }

    static void zza(Map<String, String> map, OutputStream outputStream) throws IOException {
        if (map == null) {
            zza(outputStream, 0);
            return;
        }
        zza(outputStream, map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            zza(outputStream, entry.getKey());
            zza(outputStream, entry.getValue());
        }
    }

    private static byte[] zza(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                break;
            }
            i2 += read;
        }
        if (i2 != i) {
            throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
        }
        return bArr;
    }

    static int zzb(InputStream inputStream) throws IOException {
        return (zza(inputStream) << 0) | 0 | (zza(inputStream) << 8) | (zza(inputStream) << 16) | (zza(inputStream) << 24);
    }

    static long zzc(InputStream inputStream) throws IOException {
        return 0 | ((zza(inputStream) & 255) << 0) | ((zza(inputStream) & 255) << 8) | ((zza(inputStream) & 255) << 16) | ((zza(inputStream) & 255) << 24) | ((zza(inputStream) & 255) << 32) | ((zza(inputStream) & 255) << 40) | ((zza(inputStream) & 255) << 48) | ((zza(inputStream) & 255) << 56);
    }

    private void zzc(int i) {
        int i2;
        if (this.zzax + i < this.zzaz) {
            return;
        }
        if (zzt.DEBUG) {
            zzt.zza("Pruning old cache entries.", new Object[0]);
        }
        long j = this.zzax;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Iterator<Map.Entry<String, zza>> it = this.zzaw.entrySet().iterator();
        int i3 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = i3;
                break;
            }
            zza value = it.next().getValue();
            if (zzf(value.zzaB).delete()) {
                this.zzax -= value.zzaA;
            } else {
                zzt.zzb("Could not delete cache entry for key=%s, filename=%s", value.zzaB, zze(value.zzaB));
            }
            it.remove();
            i2 = i3 + 1;
            if (((float) (this.zzax + i)) < this.zzaz * 0.9f) {
                break;
            }
            i3 = i2;
        }
        if (!zzt.DEBUG) {
            return;
        }
        zzt.zza("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.zzax - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
    }

    static String zzd(InputStream inputStream) throws IOException {
        return new String(zza(inputStream, (int) zzc(inputStream)), "UTF-8");
    }

    private String zze(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    static Map<String, String> zze(InputStream inputStream) throws IOException {
        int zzb2 = zzb(inputStream);
        Map<String, String> emptyMap = zzb2 == 0 ? Collections.emptyMap() : new HashMap<>(zzb2);
        for (int i = 0; i < zzb2; i++) {
            emptyMap.put(zzd(inputStream).intern(), zzd(inputStream).intern());
        }
        return emptyMap;
    }

    @Override // com.google.android.gms.internal.zzb
    public synchronized void initialize() {
        BufferedInputStream bufferedInputStream;
        if (this.zzay.exists()) {
            File[] listFiles = this.zzay.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    BufferedInputStream bufferedInputStream2 = null;
                    try {
                        bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                        try {
                            try {
                                zza zzf = zza.zzf(bufferedInputStream);
                                zzf.zzaA = file.length();
                                zza(zzf.zzaB, zzf);
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e) {
                                }
                            } catch (Throwable th) {
                                bufferedInputStream2 = bufferedInputStream;
                                th = th;
                                if (bufferedInputStream2 != null) {
                                    try {
                                        bufferedInputStream2.close();
                                    } catch (IOException e2) {
                                    }
                                }
                                throw th;
                            }
                        } catch (IOException e3) {
                            if (file != null) {
                                file.delete();
                            }
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e4) {
                                }
                            }
                        }
                    } catch (IOException e5) {
                        bufferedInputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
        } else if (!this.zzay.mkdirs()) {
            zzt.zzc("Unable to create cache dir %s", this.zzay.getAbsolutePath());
        }
    }

    public synchronized void remove(String str) {
        boolean delete = zzf(str).delete();
        removeEntry(str);
        if (!delete) {
            zzt.zzb("Could not delete cache entry for key=%s, filename=%s", str, zze(str));
        }
    }

    @Override // com.google.android.gms.internal.zzb
    public synchronized zzb.zza zza(String str) {
        zzb zzbVar;
        zzb.zza zzaVar;
        File zzf;
        zza zzaVar2 = this.zzaw.get(str);
        if (zzaVar2 == null) {
            zzaVar = null;
        } else {
            try {
                zzf = zzf(str);
            } catch (Throwable th) {
                th = th;
            }
            try {
                zzbVar = new zzb(new BufferedInputStream(new FileInputStream(zzf)));
                try {
                    zza.zzf(zzbVar);
                    zzaVar = zzaVar2.zzb(zza(zzbVar, (int) (zzf.length() - zzbVar.zzaC)));
                    try {
                        zzbVar.close();
                    } catch (IOException e) {
                        zzaVar = null;
                    }
                } catch (IOException e2) {
                    e = e2;
                    zzt.zzb("%s: %s", zzf.getAbsolutePath(), e.toString());
                    remove(str);
                    if (zzbVar != null) {
                        try {
                            zzbVar.close();
                        } catch (IOException e3) {
                            zzaVar = null;
                        }
                    }
                    zzaVar = null;
                    return zzaVar;
                }
            } catch (IOException e4) {
                e = e4;
                zzbVar = null;
            } catch (Throwable th2) {
                th = th2;
                zzbVar = null;
                if (zzbVar != null) {
                    try {
                        zzbVar.close();
                    } catch (IOException e5) {
                        zzaVar = null;
                    }
                }
                throw th;
            }
        }
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.zzb
    public synchronized void zza(String str, zzb.zza zzaVar) {
        BufferedOutputStream bufferedOutputStream;
        zza zzaVar2;
        zzc(zzaVar.data.length);
        File zzf = zzf(str);
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(zzf));
            zzaVar2 = new zza(str, zzaVar);
        } catch (IOException e) {
            if (!zzf.delete()) {
                zzt.zzb("Could not clean up file %s", zzf.getAbsolutePath());
            }
        }
        if (!zzaVar2.zza(bufferedOutputStream)) {
            bufferedOutputStream.close();
            zzt.zzb("Failed to write header for %s", zzf.getAbsolutePath());
            throw new IOException();
        }
        bufferedOutputStream.write(zzaVar.data);
        bufferedOutputStream.close();
        zza(str, zzaVar2);
    }

    public File zzf(String str) {
        return new File(this.zzay, zze(str));
    }
}
