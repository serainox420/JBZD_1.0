package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
class zzbsk {

    /* loaded from: classes2.dex */
    static class zza implements zzb {
        private int zzcjM = 0;
        private List<byte[]> zzcjL = new ArrayList();

        zza() {
        }

        @Override // com.google.android.gms.internal.zzbsk.zzb
        public boolean zzW(byte[] bArr) {
            this.zzcjL.add(bArr);
            this.zzcjM += bArr.length;
            return true;
        }

        @Override // com.google.android.gms.internal.zzbsk.zzb
        public zzbsq zzabn() {
            byte[] bArr = new byte[this.zzcjM];
            int i = 0;
            for (int i2 = 0; i2 < this.zzcjL.size(); i2++) {
                byte[] bArr2 = this.zzcjL.get(i2);
                System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
                i += bArr2.length;
            }
            return new zzbsq(bArr);
        }
    }

    /* loaded from: classes2.dex */
    interface zzb {
        boolean zzW(byte[] bArr);

        zzbsq zzabn();
    }

    /* loaded from: classes2.dex */
    static class zzc implements zzb {
        private static ThreadLocal<CharsetDecoder> zzcjN = new ThreadLocal<CharsetDecoder>() { // from class: com.google.android.gms.internal.zzbsk.zzc.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* renamed from: zzabo */
            public CharsetDecoder initialValue() {
                CharsetDecoder newDecoder = Charset.forName("UTF8").newDecoder();
                newDecoder.onMalformedInput(CodingErrorAction.REPORT);
                newDecoder.onUnmappableCharacter(CodingErrorAction.REPORT);
                return newDecoder;
            }
        };
        private static ThreadLocal<CharsetEncoder> zzcjO = new ThreadLocal<CharsetEncoder>() { // from class: com.google.android.gms.internal.zzbsk.zzc.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* renamed from: zzabp */
            public CharsetEncoder initialValue() {
                CharsetEncoder newEncoder = Charset.forName("UTF8").newEncoder();
                newEncoder.onMalformedInput(CodingErrorAction.REPORT);
                newEncoder.onUnmappableCharacter(CodingErrorAction.REPORT);
                return newEncoder;
            }
        };
        private StringBuilder zzcjP = new StringBuilder();

        zzc() {
        }

        private String zzX(byte[] bArr) {
            try {
                return zzcjN.get().decode(ByteBuffer.wrap(bArr)).toString();
            } catch (CharacterCodingException e) {
                return null;
            }
        }

        @Override // com.google.android.gms.internal.zzbsk.zzb
        public boolean zzW(byte[] bArr) {
            String zzX = zzX(bArr);
            if (zzX != null) {
                this.zzcjP.append(zzX);
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.zzbsk.zzb
        public zzbsq zzabn() {
            return new zzbsq(this.zzcjP.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzb zzb(byte b) {
        return b == 2 ? new zza() : new zzc();
    }
}
