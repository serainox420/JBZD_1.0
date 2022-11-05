package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzao {
    static boolean zzlF = false;
    private static MessageDigest zzlG = null;
    private static final Object zzlH = new Object();
    private static final Object zzlI = new Object();
    static CountDownLatch zzlJ = new CountDownLatch(1);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class zza implements Runnable {
        private zza() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MessageDigest unused = zzao.zzlG = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e) {
            } finally {
                zzao.zzlJ.countDown();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzO() {
        synchronized (zzlI) {
            if (!zzlF) {
                zzlF = true;
                new Thread(new zza()).start();
            }
        }
    }

    static MessageDigest zzP() {
        zzO();
        boolean z = false;
        try {
            z = zzlJ.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
        }
        if (z && zzlG != null) {
            return zzlG;
        }
        return null;
    }

    private static int zza(boolean z) {
        return z ? 239 : 255;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(zzag.zza zzaVar, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return zza(zzbxt.zzf(zzaVar), str, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(String str, String str2, boolean z) {
        return zza(str, str2, z, zzgd.zzDP.get().booleanValue());
    }

    static String zza(String str, String str2, boolean z, boolean z2) {
        byte[] zzb = zzb(str, str2, z, z2);
        return zzb != null ? zzam.zza(zzb, true) : Integer.toString(7);
    }

    static String zza(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return zzam.zza(z ? zzb(bArr, str) : zza(bArr, str), true);
    }

    static Vector<byte[]> zza(byte[] bArr, int i) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + i) - 1) / i;
        Vector<byte[]> vector = new Vector<>();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * i;
            try {
                vector.add(Arrays.copyOfRange(bArr, i3, bArr.length - i3 > i ? i3 + i : bArr.length));
            } catch (IndexOutOfBoundsException e) {
                return null;
            }
        }
        return vector;
    }

    static void zza(String str, byte[] bArr) throws UnsupportedEncodingException {
        if (str.length() > 32) {
            str = str.substring(0, 32);
        }
        new zzbwl(str.getBytes("UTF-8")).zzaa(bArr);
    }

    static byte[] zza(byte[] bArr, String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        Vector<byte[]> zza2 = zza(bArr, 255);
        if (zza2 == null || zza2.size() == 0) {
            return zzb(zzbxt.zzf(zzb(4096L)), str);
        }
        zzag.zzf zzfVar = new zzag.zzf();
        zzfVar.zzcA = new byte[zza2.size()];
        Iterator<byte[]> it = zza2.iterator();
        int i = 0;
        while (it.hasNext()) {
            zzfVar.zzcA[i] = zzb(it.next(), str, false);
            i++;
        }
        zzfVar.zzcv = zzh(bArr);
        return zzbxt.zzf(zzfVar);
    }

    static zzag.zza zzb(long j) {
        zzag.zza zzaVar = new zzag.zza();
        zzaVar.zzbt = Long.valueOf(j);
        return zzaVar;
    }

    static byte[] zzb(String str, String str2, boolean z, boolean z2) {
        zzag.zzc zzcVar = new zzag.zzc();
        try {
            zzcVar.zzct = str.length() < 3 ? str.getBytes("ISO-8859-1") : zzam.zza(str, true);
            zzcVar.zzcu = z ? str2.length() < 3 ? str2.getBytes("ISO-8859-1") : zzam.zza(str2, true) : (str2 == null || str2.length() == 0) ? Integer.toString(5).getBytes("ISO-8859-1") : zzam.zza(zza(str2.getBytes("ISO-8859-1"), (String) null, z2), true);
            return zzbxt.zzf(zzcVar);
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
            return null;
        }
    }

    static byte[] zzb(byte[] bArr, String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return zzb(bArr, str, true);
    }

    private static byte[] zzb(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] array;
        int zza2 = zza(z);
        if (bArr.length > zza2) {
            bArr = zzbxt.zzf(zzb(4096L));
        }
        if (bArr.length < zza2) {
            byte[] bArr2 = new byte[zza2 - bArr.length];
            new SecureRandom().nextBytes(bArr2);
            array = ByteBuffer.allocate(zza2 + 1).put((byte) bArr.length).put(bArr).put(bArr2).array();
        } else {
            array = ByteBuffer.allocate(zza2 + 1).put((byte) bArr.length).put(bArr).array();
        }
        if (z) {
            array = ByteBuffer.allocate(256).put(zzh(array)).put(array).array();
        }
        byte[] bArr3 = new byte[256];
        new zzap().zzb(array, bArr3);
        if (str != null && str.length() > 0) {
            zza(str, bArr3);
        }
        return bArr3;
    }

    public static byte[] zzh(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] digest;
        synchronized (zzlH) {
            MessageDigest zzP = zzP();
            if (zzP == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            zzP.reset();
            zzP.update(bArr);
            digest = zzlG.digest();
        }
        return digest;
    }
}
