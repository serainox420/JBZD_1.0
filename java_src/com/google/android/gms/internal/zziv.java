package com.google.android.gms.internal;

import com.facebook.common.time.Clock;
import com.facebook.common.util.ByteConstants;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
@zzme
/* loaded from: classes.dex */
public class zziv extends zzis {
    private static final Set<String> zzIJ = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzIK = new DecimalFormat("#,###");
    private File zzIL;
    private boolean zzIM;

    public zziv(zzqw zzqwVar) {
        super(zzqwVar);
        File cacheDir = this.mContext.getCacheDir();
        if (cacheDir == null) {
            zzpk.zzbh("Context.getCacheDir() returned null");
            return;
        }
        this.zzIL = new File(cacheDir, "admobVideoStreams");
        if (!this.zzIL.isDirectory() && !this.zzIL.mkdirs()) {
            String valueOf = String.valueOf(this.zzIL.getAbsolutePath());
            zzpk.zzbh(valueOf.length() != 0 ? "Could not create preload cache directory at ".concat(valueOf) : new String("Could not create preload cache directory at "));
            this.zzIL = null;
        } else if (this.zzIL.setReadable(true, false) && this.zzIL.setExecutable(true, false)) {
        } else {
            String valueOf2 = String.valueOf(this.zzIL.getAbsolutePath());
            zzpk.zzbh(valueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(valueOf2) : new String("Could not set cache file permissions at "));
            this.zzIL = null;
        }
    }

    private File zzb(File file) {
        return new File(this.zzIL, String.valueOf(file.getName()).concat(".done"));
    }

    private static void zzc(File file) {
        if (file.isFile()) {
            file.setLastModified(System.currentTimeMillis());
            return;
        }
        try {
            file.createNewFile();
        } catch (IOException e) {
        }
    }

    @Override // com.google.android.gms.internal.zzis
    public void abort() {
        this.zzIM = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x03b8, code lost:
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x03c0, code lost:
        if (com.google.android.gms.internal.zzpk.zzak(3) == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x03c2, code lost:
        r2 = com.google.android.gms.internal.zziv.zzIK.format(r5);
        com.google.android.gms.internal.zzpk.zzbf(new java.lang.StringBuilder((java.lang.String.valueOf(r2).length() + 22) + java.lang.String.valueOf(r27).length()).append("Preloaded ").append(r2).append(" bytes from ").append(r27).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x03fe, code lost:
        r12.setReadable(true, false);
        zzc(r13);
        zza(r27, r12.getAbsolutePath(), r5);
        com.google.android.gms.internal.zziv.zzIJ.remove(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0416, code lost:
        return true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v35, types: [java.lang.String] */
    @Override // com.google.android.gms.internal.zzis
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean zzad(String str) {
        String str2;
        String str3;
        int responseCode;
        if (this.zzIL == null) {
            zza(str, null, "noCacheDir", null);
            return false;
        }
        while (zzgs() > zzgd.zzBw.get().intValue()) {
            if (!zzgt()) {
                zzpk.zzbh("Unable to expire stream cache");
                zza(str, null, "expireFailed", null);
                return false;
            }
        }
        File file = new File(this.zzIL, zzae(str));
        File zzb = zzb(file);
        if (file.isFile() && zzb.isFile()) {
            int length = (int) file.length();
            String valueOf = String.valueOf(str);
            zzpk.zzbf(valueOf.length() != 0 ? "Stream cache hit at ".concat(valueOf) : new String("Stream cache hit at "));
            zza(str, file.getAbsolutePath(), length);
            return true;
        }
        String valueOf2 = String.valueOf(this.zzIL.getAbsolutePath());
        String valueOf3 = String.valueOf(str);
        String concat = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
        synchronized (zzIJ) {
            if (zzIJ.contains(concat)) {
                String valueOf4 = String.valueOf(str);
                zzpk.zzbh(valueOf4.length() != 0 ? "Stream cache already in progress at ".concat(valueOf4) : new String("Stream cache already in progress at "));
                zza(str, file.getAbsolutePath(), "inProgress", null);
                return false;
            }
            zzIJ.add(concat);
            FileOutputStream fileOutputStream = null;
            try {
                str2 = com.google.android.gms.ads.internal.zzw.zzcZ().zzb(str, zzgd.zzBC.get().intValue());
                if (!(str2 instanceof HttpURLConnection) || (responseCode = str2.getResponseCode()) < 400) {
                    int contentLength = str2.getContentLength();
                    if (contentLength < 0) {
                        String valueOf5 = String.valueOf(str);
                        zzpk.zzbh(valueOf5.length() != 0 ? "Stream cache aborted, missing content-length header at ".concat(valueOf5) : new String("Stream cache aborted, missing content-length header at "));
                        zza(str, file.getAbsolutePath(), "contentLengthMissing", null);
                        zzIJ.remove(concat);
                        return false;
                    }
                    String format = zzIK.format(contentLength);
                    int intValue = zzgd.zzBx.get().intValue();
                    if (contentLength > intValue) {
                        zzpk.zzbh(new StringBuilder(String.valueOf(format).length() + 33 + String.valueOf(str).length()).append("Content length ").append(format).append(" exceeds limit at ").append(str).toString());
                        String valueOf6 = String.valueOf(format);
                        zza(str, file.getAbsolutePath(), "sizeExceeded", valueOf6.length() != 0 ? "File too big for full file cache. Size: ".concat(valueOf6) : new String("File too big for full file cache. Size: "));
                        zzIJ.remove(concat);
                        return false;
                    }
                    StringBuilder append = new StringBuilder(String.valueOf(format).length() + 20 + String.valueOf(str).length()).append("Caching ").append(format);
                    str3 = " bytes from ";
                    zzpk.zzbf(append.append(str3).append(str).toString());
                    ReadableByteChannel newChannel = Channels.newChannel(str2.getInputStream());
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        FileChannel channel = fileOutputStream2.getChannel();
                        ByteBuffer allocate = ByteBuffer.allocate(ByteConstants.MB);
                        com.google.android.gms.common.util.zze zzcS = com.google.android.gms.ads.internal.zzw.zzcS();
                        int i = 0;
                        long currentTimeMillis = zzcS.currentTimeMillis();
                        zzpz zzpzVar = new zzpz(zzgd.zzBB.get().longValue());
                        long longValue = zzgd.zzBA.get().longValue();
                        while (true) {
                            int read = newChannel.read(allocate);
                            if (read < 0) {
                                break;
                            }
                            i += read;
                            try {
                                try {
                                    if (i > intValue) {
                                        String valueOf7 = String.valueOf(Integer.toString(i));
                                        if (valueOf7.length() != 0) {
                                            "File too big for full file cache. Size: ".concat(valueOf7);
                                        } else {
                                            new String("File too big for full file cache. Size: ");
                                        }
                                        throw new IOException("stream cache file size limit exceeded");
                                    }
                                    allocate.flip();
                                    do {
                                    } while (channel.write(allocate) > 0);
                                    allocate.clear();
                                    if (zzcS.currentTimeMillis() - currentTimeMillis > 1000 * longValue) {
                                        String valueOf8 = String.valueOf(Long.toString(longValue));
                                        new StringBuilder(String.valueOf(valueOf8).length() + 29).append("Timeout exceeded. Limit: ").append(valueOf8).append(" sec").toString();
                                        throw new IOException("stream cache time limit exceeded");
                                    } else if (this.zzIM) {
                                        throw new IOException("abort requested");
                                    } else {
                                        if (zzpzVar.tryAcquire()) {
                                            str3 = file.getAbsolutePath();
                                            str2 = str;
                                            zza(str2, str3, i, contentLength, false);
                                        }
                                    }
                                } catch (IOException e) {
                                    e = e;
                                    str2 = null;
                                    fileOutputStream = fileOutputStream2;
                                } catch (RuntimeException e2) {
                                    e = e2;
                                    str2 = null;
                                    fileOutputStream = fileOutputStream2;
                                }
                            } catch (IOException e3) {
                                e = e3;
                                fileOutputStream = fileOutputStream2;
                            } catch (RuntimeException e4) {
                                e = e4;
                                fileOutputStream = fileOutputStream2;
                            }
                        }
                    } catch (IOException e5) {
                        e = e5;
                        str2 = null;
                        str3 = "error";
                        fileOutputStream = fileOutputStream2;
                    } catch (RuntimeException e6) {
                        e = e6;
                        str2 = null;
                        str3 = "error";
                        fileOutputStream = fileOutputStream2;
                    }
                } else {
                    str3 = "badUrl";
                    try {
                        String valueOf9 = String.valueOf(Integer.toString(responseCode));
                        str2 = valueOf9.length() != 0 ? "HTTP request failed. Code: ".concat(valueOf9) : new String("HTTP request failed. Code: ");
                        try {
                            throw new IOException(new StringBuilder(String.valueOf(str).length() + 32).append("HTTP status code ").append(responseCode).append(" at ").append(str).toString());
                        } catch (IOException e7) {
                            e = e7;
                        } catch (RuntimeException e8) {
                            e = e8;
                        }
                    } catch (IOException e9) {
                        e = e9;
                        str2 = null;
                    } catch (RuntimeException e10) {
                        e = e10;
                        str2 = null;
                    }
                }
            } catch (IOException e11) {
                e = e11;
                str2 = null;
                str3 = "error";
            } catch (RuntimeException e12) {
                e = e12;
                str2 = null;
                str3 = "error";
            }
            if (e instanceof RuntimeException) {
                com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "VideoStreamFullFileCache.preload");
            }
            try {
                fileOutputStream.close();
            } catch (IOException e13) {
            } catch (NullPointerException e14) {
            }
            if (this.zzIM) {
                zzpk.zzbg(new StringBuilder(String.valueOf(str).length() + 26).append("Preload aborted for URL \"").append(str).append("\"").toString());
            } else {
                zzpk.zzc(new StringBuilder(String.valueOf(str).length() + 25).append("Preload failed for URL \"").append(str).append("\"").toString(), e);
            }
            if (file.exists() && !file.delete()) {
                String valueOf10 = String.valueOf(file.getAbsolutePath());
                zzpk.zzbh(valueOf10.length() != 0 ? "Could not delete partial cache file at ".concat(valueOf10) : new String("Could not delete partial cache file at "));
            }
            zza(str, file.getAbsolutePath(), str3, str2);
            zzIJ.remove(concat);
            return false;
        }
    }

    public int zzgs() {
        int i = 0;
        if (this.zzIL != null) {
            for (File file : this.zzIL.listFiles()) {
                if (!file.getName().endsWith(".done")) {
                    i++;
                }
            }
        }
        return i;
    }

    public boolean zzgt() {
        boolean z;
        long j;
        File file;
        if (this.zzIL == null) {
            return false;
        }
        File file2 = null;
        long j2 = Clock.MAX_TIME;
        File[] listFiles = this.zzIL.listFiles();
        int length = listFiles.length;
        int i = 0;
        while (i < length) {
            File file3 = listFiles[i];
            if (!file3.getName().endsWith(".done")) {
                j = file3.lastModified();
                if (j < j2) {
                    file = file3;
                    i++;
                    file2 = file;
                    j2 = j;
                }
            }
            j = j2;
            file = file2;
            i++;
            file2 = file;
            j2 = j;
        }
        if (file2 != null) {
            z = file2.delete();
            File zzb = zzb(file2);
            if (zzb.isFile()) {
                z &= zzb.delete();
            }
        } else {
            z = false;
        }
        return z;
    }
}
