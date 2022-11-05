package com.google.android.gms.internal;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
/* loaded from: classes2.dex */
public final class zzbxm {
    private final ByteBuffer zzcuH;

    /* loaded from: classes2.dex */
    public static class zza extends IOException {
        zza(int i, int i2) {
            super(new StringBuilder(108).append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ").append(i).append(" limit ").append(i2).append(").").toString());
        }
    }

    private zzbxm(ByteBuffer byteBuffer) {
        this.zzcuH = byteBuffer;
        this.zzcuH.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzbxm(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    public static int zzL(int i, int i2) {
        return zzrj(i) + zzrg(i2);
    }

    public static int zzM(int i, int i2) {
        return zzrj(i) + zzrh(i2);
    }

    private static int zza(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = i;
        while (i3 < length) {
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i2 += (127 - charAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(charSequence, i3) < 65536) {
                        throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i3).toString());
                    }
                    i3++;
                }
            }
            i3++;
        }
        return i2;
    }

    private static int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int length = charSequence.length();
        int i4 = 0;
        int i5 = i + i2;
        while (i4 < length && i4 + i < i5) {
            char charAt = charSequence.charAt(i4);
            if (charAt >= 128) {
                break;
            }
            bArr[i + i4] = (byte) charAt;
            i4++;
        }
        if (i4 == length) {
            return i + length;
        }
        int i6 = i + i4;
        while (i4 < length) {
            char charAt2 = charSequence.charAt(i4);
            if (charAt2 < 128 && i6 < i5) {
                i3 = i6 + 1;
                bArr[i6] = (byte) charAt2;
            } else if (charAt2 < 2048 && i6 <= i5 - 2) {
                int i7 = i6 + 1;
                bArr[i6] = (byte) ((charAt2 >>> 6) | 960);
                i3 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 & '?') | 128);
            } else if ((charAt2 >= 55296 && 57343 >= charAt2) || i6 > i5 - 3) {
                if (i6 > i5 - 4) {
                    throw new ArrayIndexOutOfBoundsException(new StringBuilder(37).append("Failed writing ").append(charAt2).append(" at index ").append(i6).toString());
                }
                if (i4 + 1 != charSequence.length()) {
                    i4++;
                    char charAt3 = charSequence.charAt(i4);
                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                        int i8 = i6 + 1;
                        bArr[i6] = (byte) ((codePoint >>> 18) | 240);
                        int i9 = i8 + 1;
                        bArr[i8] = (byte) (((codePoint >>> 12) & 63) | 128);
                        int i10 = i9 + 1;
                        bArr[i9] = (byte) (((codePoint >>> 6) & 63) | 128);
                        i3 = i10 + 1;
                        bArr[i10] = (byte) ((codePoint & 63) | 128);
                    }
                }
                throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i4 - 1).toString());
            } else {
                int i11 = i6 + 1;
                bArr[i6] = (byte) ((charAt2 >>> '\f') | 480);
                int i12 = i11 + 1;
                bArr[i11] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i3 = i12 + 1;
                bArr[i12] = (byte) ((charAt2 & '?') | 128);
            }
            i4++;
            i6 = i3;
        }
        return i6;
    }

    private static void zza(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (!byteBuffer.hasArray()) {
            zzb(charSequence, byteBuffer);
            return;
        }
        try {
            byteBuffer.position(zza(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e);
            throw bufferOverflowException;
        }
    }

    public static zzbxm zzag(byte[] bArr) {
        return zzc(bArr, 0, bArr.length);
    }

    public static int zzai(byte[] bArr) {
        return zzrl(bArr.length) + bArr.length;
    }

    public static int zzb(int i, double d) {
        return zzrj(i) + 8;
    }

    public static int zzb(int i, zzbxt zzbxtVar) {
        return (zzrj(i) * 2) + zzd(zzbxtVar);
    }

    private static int zzb(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int i2 = i;
        int i3 = length;
        while (true) {
            if (i2 < length) {
                char charAt = charSequence.charAt(i2);
                if (charAt >= 2048) {
                    i3 += zza(charSequence, i2);
                    break;
                }
                i2++;
                i3 = ((127 - charAt) >>> 31) + i3;
            } else {
                break;
            }
        }
        if (i3 < length) {
            throw new IllegalArgumentException(new StringBuilder(54).append("UTF-8 length does not fit in int: ").append(i3 + 4294967296L).toString());
        }
        return i3;
    }

    private static void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 128) {
                byteBuffer.put((byte) charAt);
            } else if (charAt < 2048) {
                byteBuffer.put((byte) ((charAt >>> 6) | 960));
                byteBuffer.put((byte) ((charAt & '?') | 128));
            } else if (charAt >= 55296 && 57343 >= charAt) {
                if (i + 1 != charSequence.length()) {
                    i++;
                    char charAt2 = charSequence.charAt(i);
                    if (Character.isSurrogatePair(charAt, charAt2)) {
                        int codePoint = Character.toCodePoint(charAt, charAt2);
                        byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                        byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                        byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                        byteBuffer.put((byte) ((codePoint & 63) | 128));
                    }
                }
                throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i - 1).toString());
            } else {
                byteBuffer.put((byte) ((charAt >>> '\f') | 480));
                byteBuffer.put((byte) (((charAt >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((charAt & '?') | 128));
            }
            i++;
        }
    }

    public static int zzbe(long j) {
        return zzbi(j);
    }

    public static int zzbf(long j) {
        return zzbi(j);
    }

    public static int zzbg(long j) {
        return zzbi(zzbk(j));
    }

    public static int zzbi(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (Long.MIN_VALUE & j) == 0 ? 9 : 10;
    }

    public static long zzbk(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public static int zzc(int i, zzbxt zzbxtVar) {
        return zzrj(i) + zze(zzbxtVar);
    }

    public static int zzc(int i, byte[] bArr) {
        return zzrj(i) + zzai(bArr);
    }

    public static zzbxm zzc(byte[] bArr, int i, int i2) {
        return new zzbxm(bArr, i, i2);
    }

    public static int zzd(int i, float f) {
        return zzrj(i) + 4;
    }

    public static int zzd(zzbxt zzbxtVar) {
        return zzbxtVar.zzaeT();
    }

    public static int zze(int i, long j) {
        return zzrj(i) + zzbe(j);
    }

    public static int zze(zzbxt zzbxtVar) {
        int zzaeT = zzbxtVar.zzaeT();
        return zzaeT + zzrl(zzaeT);
    }

    public static int zzf(int i, long j) {
        return zzrj(i) + zzbf(j);
    }

    public static int zzg(int i, long j) {
        return zzrj(i) + 8;
    }

    public static int zzh(int i, long j) {
        return zzrj(i) + zzbg(j);
    }

    public static int zzh(int i, boolean z) {
        return zzrj(i) + 1;
    }

    public static int zzkb(String str) {
        int zzb = zzb(str);
        return zzb + zzrl(zzb);
    }

    public static int zzr(int i, String str) {
        return zzrj(i) + zzkb(str);
    }

    public static int zzrg(int i) {
        if (i >= 0) {
            return zzrl(i);
        }
        return 10;
    }

    public static int zzrh(int i) {
        return zzrl(zzrn(i));
    }

    public static int zzrj(int i) {
        return zzrl(zzbxw.zzO(i, 0));
    }

    public static int zzrl(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return ((-268435456) & i) == 0 ? 4 : 5;
    }

    public static int zzrn(int i) {
        return (i << 1) ^ (i >> 31);
    }

    public void zzJ(int i, int i2) throws IOException {
        zzN(i, 0);
        zzre(i2);
    }

    public void zzK(int i, int i2) throws IOException {
        zzN(i, 0);
        zzrf(i2);
    }

    public void zzN(int i, int i2) throws IOException {
        zzrk(zzbxw.zzO(i, i2));
    }

    public void zza(int i, double d) throws IOException {
        zzN(i, 1);
        zzn(d);
    }

    public void zza(int i, long j) throws IOException {
        zzN(i, 0);
        zzba(j);
    }

    public void zza(int i, zzbxt zzbxtVar) throws IOException {
        zzN(i, 2);
        zzc(zzbxtVar);
    }

    public int zzaeF() {
        return this.zzcuH.remaining();
    }

    public void zzaeG() {
        if (zzaeF() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public void zzah(byte[] bArr) throws IOException {
        zzrk(bArr.length);
        zzaj(bArr);
    }

    public void zzaj(byte[] bArr) throws IOException {
        zzd(bArr, 0, bArr.length);
    }

    public void zzb(int i, long j) throws IOException {
        zzN(i, 0);
        zzbb(j);
    }

    public void zzb(int i, byte[] bArr) throws IOException {
        zzN(i, 2);
        zzah(bArr);
    }

    public void zzb(zzbxt zzbxtVar) throws IOException {
        zzbxtVar.zza(this);
    }

    public void zzba(long j) throws IOException {
        zzbh(j);
    }

    public void zzbb(long j) throws IOException {
        zzbh(j);
    }

    public void zzbc(long j) throws IOException {
        zzbj(j);
    }

    public void zzbd(long j) throws IOException {
        zzbh(zzbk(j));
    }

    public void zzbh(long j) throws IOException {
        while (((-128) & j) != 0) {
            zzri((((int) j) & 127) | 128);
            j >>>= 7;
        }
        zzri((int) j);
    }

    public void zzbj(long j) throws IOException {
        if (this.zzcuH.remaining() < 8) {
            throw new zza(this.zzcuH.position(), this.zzcuH.limit());
        }
        this.zzcuH.putLong(j);
    }

    public void zzbq(boolean z) throws IOException {
        zzri(z ? 1 : 0);
    }

    public void zzc(byte b) throws IOException {
        if (!this.zzcuH.hasRemaining()) {
            throw new zza(this.zzcuH.position(), this.zzcuH.limit());
        }
        this.zzcuH.put(b);
    }

    public void zzc(int i, float f) throws IOException {
        zzN(i, 5);
        zzk(f);
    }

    public void zzc(int i, long j) throws IOException {
        zzN(i, 1);
        zzbc(j);
    }

    public void zzc(zzbxt zzbxtVar) throws IOException {
        zzrk(zzbxtVar.zzaeS());
        zzbxtVar.zza(this);
    }

    public void zzd(int i, long j) throws IOException {
        zzN(i, 0);
        zzbd(j);
    }

    public void zzd(byte[] bArr, int i, int i2) throws IOException {
        if (this.zzcuH.remaining() >= i2) {
            this.zzcuH.put(bArr, i, i2);
            return;
        }
        throw new zza(this.zzcuH.position(), this.zzcuH.limit());
    }

    public void zzg(int i, boolean z) throws IOException {
        zzN(i, 0);
        zzbq(z);
    }

    public void zzk(float f) throws IOException {
        zzrm(Float.floatToIntBits(f));
    }

    public void zzka(String str) throws IOException {
        try {
            int zzrl = zzrl(str.length());
            if (zzrl != zzrl(str.length() * 3)) {
                zzrk(zzb(str));
                zza(str, this.zzcuH);
                return;
            }
            int position = this.zzcuH.position();
            if (this.zzcuH.remaining() < zzrl) {
                throw new zza(zzrl + position, this.zzcuH.limit());
            }
            this.zzcuH.position(position + zzrl);
            zza(str, this.zzcuH);
            int position2 = this.zzcuH.position();
            this.zzcuH.position(position);
            zzrk((position2 - position) - zzrl);
            this.zzcuH.position(position2);
        } catch (BufferOverflowException e) {
            zza zzaVar = new zza(this.zzcuH.position(), this.zzcuH.limit());
            zzaVar.initCause(e);
            throw zzaVar;
        }
    }

    public void zzn(double d) throws IOException {
        zzbj(Double.doubleToLongBits(d));
    }

    public void zzq(int i, String str) throws IOException {
        zzN(i, 2);
        zzka(str);
    }

    public void zzre(int i) throws IOException {
        if (i >= 0) {
            zzrk(i);
        } else {
            zzbh(i);
        }
    }

    public void zzrf(int i) throws IOException {
        zzrk(zzrn(i));
    }

    public void zzri(int i) throws IOException {
        zzc((byte) i);
    }

    public void zzrk(int i) throws IOException {
        while ((i & (-128)) != 0) {
            zzri((i & 127) | 128);
            i >>>= 7;
        }
        zzri(i);
    }

    public void zzrm(int i) throws IOException {
        if (this.zzcuH.remaining() < 4) {
            throw new zza(this.zzcuH.position(), this.zzcuH.limit());
        }
        this.zzcuH.putInt(i);
    }
}
