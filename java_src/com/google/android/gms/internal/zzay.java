package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public class zzay {
    private static Cipher zzqf = null;
    private static final Object zzqg = new Object();
    private static final Object zzqh = new Object();
    private final SecureRandom zzqe;

    /* loaded from: classes2.dex */
    public class zza extends Exception {
        public zza(zzay zzayVar) {
        }

        public zza(zzay zzayVar, Throwable th) {
            super(th);
        }
    }

    public zzay(SecureRandom secureRandom) {
        this.zzqe = secureRandom;
    }

    private Cipher getCipher() throws NoSuchAlgorithmException, NoSuchPaddingException {
        Cipher cipher;
        synchronized (zzqh) {
            if (zzqf == null) {
                zzqf = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = zzqf;
        }
        return cipher;
    }

    static void zzi(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (bArr[i] ^ 68);
        }
    }

    public byte[] zzc(byte[] bArr, String str) throws zza {
        byte[] doFinal;
        if (bArr.length != 16) {
            throw new zza(this);
        }
        try {
            byte[] zza2 = zzam.zza(str, false);
            if (zza2.length <= 16) {
                throw new zza(this);
            }
            ByteBuffer allocate = ByteBuffer.allocate(zza2.length);
            allocate.put(zza2);
            allocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[zza2.length - 16];
            allocate.get(bArr2);
            allocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (zzqg) {
                getCipher().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                doFinal = getCipher().doFinal(bArr3);
            }
            return doFinal;
        } catch (IllegalArgumentException e) {
            throw new zza(this, e);
        } catch (InvalidAlgorithmParameterException e2) {
            throw new zza(this, e2);
        } catch (InvalidKeyException e3) {
            throw new zza(this, e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new zza(this, e4);
        } catch (BadPaddingException e5) {
            throw new zza(this, e5);
        } catch (IllegalBlockSizeException e6) {
            throw new zza(this, e6);
        } catch (NoSuchPaddingException e7) {
            throw new zza(this, e7);
        }
    }

    public String zzd(byte[] bArr, byte[] bArr2) throws zza {
        byte[] doFinal;
        byte[] iv;
        if (bArr.length != 16) {
            throw new zza(this);
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (zzqg) {
                getCipher().init(1, secretKeySpec, this.zzqe);
                doFinal = getCipher().doFinal(bArr2);
                iv = getCipher().getIV();
            }
            int length = doFinal.length + iv.length;
            ByteBuffer allocate = ByteBuffer.allocate(length);
            allocate.put(iv).put(doFinal);
            allocate.flip();
            byte[] bArr3 = new byte[length];
            allocate.get(bArr3);
            return zzam.zza(bArr3, false);
        } catch (InvalidKeyException e) {
            throw new zza(this, e);
        } catch (NoSuchAlgorithmException e2) {
            throw new zza(this, e2);
        } catch (BadPaddingException e3) {
            throw new zza(this, e3);
        } catch (IllegalBlockSizeException e4) {
            throw new zza(this, e4);
        } catch (NoSuchPaddingException e5) {
            throw new zza(this, e5);
        }
    }

    public byte[] zzn(String str) throws zza {
        try {
            byte[] zza2 = zzam.zza(str, false);
            if (zza2.length != 32) {
                throw new zza(this);
            }
            byte[] bArr = new byte[16];
            ByteBuffer.wrap(zza2, 4, 16).get(bArr);
            zzi(bArr);
            return bArr;
        } catch (IllegalArgumentException e) {
            throw new zza(this, e);
        }
    }
}
