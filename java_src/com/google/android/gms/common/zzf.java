package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzt;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.util.zzn;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzf {
    private static zzw zzayp;
    private static final Object zzayq = new Object();
    private static Context zzayr;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zza extends zzt.zza {
        private int zzays;

        protected zza(byte[] bArr) {
            boolean z = false;
            if (bArr.length != 25) {
                int length = bArr.length;
                String valueOf = String.valueOf(zzn.zza(bArr, 0, bArr.length, false));
                Log.wtf("GoogleCertificates", new StringBuilder(String.valueOf(valueOf).length() + 51).append("Cert hash data has incorrect length (").append(length).append("):\n").append(valueOf).toString(), new Exception());
                bArr = Arrays.copyOfRange(bArr, 0, 25);
                zzac.zzb(bArr.length == 25 ? true : z, new StringBuilder(55).append("cert hash data has incorrect length. length=").append(bArr.length).toString());
            }
            this.zzays = Arrays.hashCode(bArr);
        }

        protected static byte[] zzdc(String str) {
            try {
                return str.getBytes("ISO-8859-1");
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }

        public boolean equals(Object obj) {
            IObjectWrapper zzva;
            if (obj == null || !(obj instanceof zzt)) {
                return false;
            }
            try {
                zzt zztVar = (zzt) obj;
                if (zztVar.zzvb() == hashCode() && (zzva = zztVar.zzva()) != null) {
                    return Arrays.equals(getBytes(), (byte[]) com.google.android.gms.dynamic.zzd.zzF(zzva));
                }
                return false;
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return false;
            }
        }

        abstract byte[] getBytes();

        public int hashCode() {
            return this.zzays;
        }

        @Override // com.google.android.gms.common.internal.zzt
        public IObjectWrapper zzva() {
            return com.google.android.gms.dynamic.zzd.zzA(getBytes());
        }

        @Override // com.google.android.gms.common.internal.zzt
        public int zzvb() {
            return hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzb extends zza {
        private final byte[] zzayt;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzb(byte[] bArr) {
            super(Arrays.copyOfRange(bArr, 0, 25));
            this.zzayt = bArr;
        }

        @Override // com.google.android.gms.common.zzf.zza
        byte[] getBytes() {
            return this.zzayt;
        }
    }

    /* loaded from: classes2.dex */
    static abstract class zzc extends zza {
        private static final WeakReference<byte[]> zzayv = new WeakReference<>(null);
        private WeakReference<byte[]> zzayu;

        zzc(byte[] bArr) {
            super(bArr);
            this.zzayu = zzayv;
        }

        @Override // com.google.android.gms.common.zzf.zza
        byte[] getBytes() {
            byte[] bArr;
            synchronized (this) {
                bArr = this.zzayu.get();
                if (bArr == null) {
                    bArr = zzvc();
                    this.zzayu = new WeakReference<>(bArr);
                }
            }
            return bArr;
        }

        protected abstract byte[] zzvc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzd {
        static final zza[] zzayw = {new zzc(zza.zzdc("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0")) { // from class: com.google.android.gms.common.zzf.zzd.1
            @Override // com.google.android.gms.common.zzf.zzc
            protected byte[] zzvc() {
                return zza.zzdc("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0\r\u0006\t*\u0086H\u0086÷\r\u0001\u0001\u0004\u0005\u00000t1\u000b0\t\u0006\u0003U\u0004\u0006\u0013\u0002US1\u00130\u0011\u0006\u0003U\u0004\b\u0013\nCalifornia1\u00160\u0014\u0006\u0003U\u0004\u0007\u0013\rMountain View1\u00140\u0012\u0006\u0003U\u0004\n\u0013\u000bGoogle Inc.1\u00100\u000e\u0006\u0003U\u0004\u000b\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u0003\u0013\u0007Android0\u001e\u0017\r080821231334Z\u0017\r360107231334Z0t1\u000b0\t\u0006\u0003U\u0004\u0006\u0013\u0002US1\u00130\u0011\u0006\u0003U\u0004\b\u0013\nCalifornia1\u00160\u0014\u0006\u0003U\u0004\u0007\u0013\rMountain View1\u00140\u0012\u0006\u0003U\u0004\n\u0013\u000bGoogle Inc.1\u00100\u000e\u0006\u0003U\u0004\u000b\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u0003\u0013\u0007Android0\u0082\u0001 0\r\u0006\t*\u0086H\u0086÷\r\u0001\u0001\u0001\u0005\u0000\u0003\u0082\u0001\r\u00000\u0082\u0001\b\u0002\u0082\u0001\u0001\u0000«V.\u0000Ø;¢\b®\n\u0096o\u0012N)Ú\u0011ò«VÐ\u008fXâÌ©\u0013\u0003é·TÓrö@§\u001b\u001dË\u0013\tgbNFV§wj\u0092\u0019=²å¿·$©\u001ew\u0018\u008b\u000ejG¤;3Ù`\u009bw\u00181EÌß{.XftÉáV[\u001fLjYU¿òQ¦=«ùÅ\\'\"\"Rèuäø\u0015Jd_\u0089qhÀ±¿Æ\u0012ê¿xWi»4ªy\u0084Ü~.¢vL®\u0083\u0007ØÁqT×î_d¥\u001aD¦\u0002ÂI\u0005AWÜ\u0002Í_\\\u000eUûï\u0085\u0019ûã'ð±Q\u0016\u0092Å o\u0019Ñ\u0083\u0085õÄÛÂÖ¹?hÌ)yÇ\u000e\u0018«\u0093\u0086k;ÕÛ\u0089\u0099U*\u000e;L\u0099ßXû\u0091\u008bíÁ\u0082º5à\u0003Á´±\rÒD¨î$ÿý38r«R!\u0098^Ú°ü\r\u000b\u0014[j¡\u0092\u0085\u008ey\u0002\u0001\u0003£\u0081Ù0\u0081Ö0\u001d\u0006\u0003U\u001d\u000e\u0004\u0016\u0004\u0014Ç}\u008cÂ!\u0017V%\u009a\u007fÓ\u0082ßkã\u0098ä×\u0086¥0\u0081¦\u0006\u0003U\u001d#\u0004\u0081\u009e0\u0081\u009b\u0080\u0014Ç}\u008cÂ!\u0017V%\u009a\u007fÓ\u0082ßkã\u0098ä×\u0086¥¡x¤v0t1\u000b0\t\u0006\u0003U\u0004\u0006\u0013\u0002US1\u00130\u0011\u0006\u0003U\u0004\b\u0013\nCalifornia1\u00160\u0014\u0006\u0003U\u0004\u0007\u0013\rMountain View1\u00140\u0012\u0006\u0003U\u0004\n\u0013\u000bGoogle Inc.1\u00100\u000e\u0006\u0003U\u0004\u000b\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u0003\u0013\u0007Android\u0082\t\u0000Âà\u0087FdJ0\u008d0\f\u0006\u0003U\u001d\u0013\u0004\u00050\u0003\u0001\u0001ÿ0\r\u0006\t*\u0086H\u0086÷\r\u0001\u0001\u0004\u0005\u0000\u0003\u0082\u0001\u0001\u0000mÒRÎï\u00850,6\nªÎ\u0093\u009bÏòÌ©\u0004»]z\u0016aø®F²\u0099B\u0004ÐÿJhÇí\u001aS\u001eÄYZb<æ\u0007c±g)zzãW\u0012Ä\u0007ò\bðË\u0010\u0094)\u0012M{\u0010b\u0019À\u0084Ê>³ù\u00ad_¸qï\u0092&\u009a\u008bâ\u008bñmDÈÙ \u008el²ð\u0005»?âË\u0096D~\u0086\u008es\u0010v\u00adE³?`\tê\u0019Áaæ&Aª\u0099'\u001dýR(ÅÅ\u0087\u0087]Û\u007fE'XÖaöÌ\fÌ·5.BLÄ6\\R52÷2Q7Y<JãAôÛAíÚ\r\u000b\u0010q§Ä@ðþ\u009e \u001c¶'ÊgCiÐ\u0084½/Ù\u0011ÿ\u0006Í¿,ú\u0010Ü\u000f\u0089:ãWb\u0091\u0090HÇïÆLqD\u0017\u0083B÷\u0005\u0081ÉÞW:õ[9\r×ý¹A\u00861\u0089]_u\u009f0\u0011&\u0087ÿb\u0014\u0010Ài0\u008a");
            }
        }, new zzc(zza.zzdc("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0")) { // from class: com.google.android.gms.common.zzf.zzd.2
            @Override // com.google.android.gms.common.zzf.zzc
            protected byte[] zzvc() {
                return zza.zzdc("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0\r\u0006\t*\u0086H\u0086÷\r\u0001\u0001\u0004\u0005\u00000\u0081\u00941\u000b0\t\u0006\u0003U\u0004\u0006\u0013\u0002US1\u00130\u0011\u0006\u0003U\u0004\b\u0013\nCalifornia1\u00160\u0014\u0006\u0003U\u0004\u0007\u0013\rMountain View1\u00100\u000e\u0006\u0003U\u0004\n\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u000b\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u0003\u0013\u0007Android1\"0 \u0006\t*\u0086H\u0086÷\r\u0001\t\u0001\u0016\u0013android@android.com0\u001e\u0017\r080415233656Z\u0017\r350901233656Z0\u0081\u00941\u000b0\t\u0006\u0003U\u0004\u0006\u0013\u0002US1\u00130\u0011\u0006\u0003U\u0004\b\u0013\nCalifornia1\u00160\u0014\u0006\u0003U\u0004\u0007\u0013\rMountain View1\u00100\u000e\u0006\u0003U\u0004\n\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u000b\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u0003\u0013\u0007Android1\"0 \u0006\t*\u0086H\u0086÷\r\u0001\t\u0001\u0016\u0013android@android.com0\u0082\u0001 0\r\u0006\t*\u0086H\u0086÷\r\u0001\u0001\u0001\u0005\u0000\u0003\u0082\u0001\r\u00000\u0082\u0001\b\u0002\u0082\u0001\u0001\u0000ÖÎ.\b\n¿â1MÑ\u008d³ÏÓ\u0018\\´=3ú\ftá½¶ÑÛ\u0089\u0013ö,\\9ßVøF\u0081=e¾ÀóÊBk\u0007Å¨íZ9\u0090ÁgçkÉ\u0099¹'\u0089K\u008f\u000b\"\u0000\u0019\u0094©)\u0015årÅm*0\u001b£oÅü\u0011:ÖË\u009et5¡m#«}úîáeäß\u001f\n\u008d½§\n\u0086\u009dQlN\u009d\u0005\u0011\u0096Ê|\fU\u007f\u0017[ÃuùHÅj®\u0086\b\u009b¤O\u008a¦¤Ý\u009a}¿,\n5\"\u0082\u00ad\u0006¸Ì\u0018^±Uyîøm\b\u000b\u001da\u0089Àù¯\u0098±ÂëÑ\u0007êE«Ûh£Ç\u0083\u008a^T\u0088ÇlSÔ\u000b\u0012\u001dç»Ó\u000eb\f\u0018\u008aáªaÛ¼\u0087Ý<d_/UóÔÃuì@p©?qQØ6pÁj\u0097\u001a¾^òÑ\u0018\u0090á¸®ó)\u008cðf¿\u009eláD¬\u009aèm\u001c\u001b\u000f\u0002\u0001\u0003£\u0081ü0\u0081ù0\u001d\u0006\u0003U\u001d\u000e\u0004\u0016\u0004\u0014\u008d\u001cÅ¾\u0095LC<a\u0086:\u0015°L¼\u0003òOà²0\u0081É\u0006\u0003U\u001d#\u0004\u0081Á0\u0081¾\u0080\u0014\u008d\u001cÅ¾\u0095LC<a\u0086:\u0015°L¼\u0003òOà²¡\u0081\u009a¤\u0081\u00970\u0081\u00941\u000b0\t\u0006\u0003U\u0004\u0006\u0013\u0002US1\u00130\u0011\u0006\u0003U\u0004\b\u0013\nCalifornia1\u00160\u0014\u0006\u0003U\u0004\u0007\u0013\rMountain View1\u00100\u000e\u0006\u0003U\u0004\n\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u000b\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u0003\u0013\u0007Android1\"0 \u0006\t*\u0086H\u0086÷\r\u0001\t\u0001\u0016\u0013android@android.com\u0082\t\u0000Õ\u0085¸l}ÓNõ0\f\u0006\u0003U\u001d\u0013\u0004\u00050\u0003\u0001\u0001ÿ0\r\u0006\t*\u0086H\u0086÷\r\u0001\u0001\u0004\u0005\u0000\u0003\u0082\u0001\u0001\u0000\u0019Ó\fñ\u0005ûx\u0092?L\r}Ò##=@\u0096zÏÎ\u0000\b\u001d[×ÆéÖí k\u000e\u0011 \u0095\u0006Al¢D\u0093\u0099\u0013ÒkJ àõ$ÊÒ»\\nL¡\u0001j\u0015\u0091n¡ì]ÉZ^:\u0001\u00006ô\u0092HÕ\u0010\u009b¿.\u001ea\u0081\u0086g:;åm¯\u000bw±Â)ãÂUãèL\u0090]#\u0087ïº\tËñ; +NZ\"É2cHJ#Òü)ú\u009f\u00199u\u00973¯Øª\u0016\u000fB\u0096ÂÐ\u0016>\u0081\u0082\u0085\u009cfCéÁ\u0096/ Á\u008333[À\u0090ÿ\u009ak\"ÞÑ\u00adDB)¥9©Nï\u00ad«ÐeÎÒK>QåÝ{fx{ï\u0012þ\u0097û¤\u0084Ä#ûOøÌIL\u0002ðõ\u0005\u0016\u0012ÿe)9>\u008eFêÅ»!òwÁQª_*¦'Ñè\u009d§\n¶\u00035iÞ;\u0098\u0097¿ÿ|©Ú>\u0012Cö\u000b");
            }
        }};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(String str, zza zzaVar) {
        if (!zzuZ()) {
            return false;
        }
        try {
            return zzayp.zze(str, zzaVar.zzva());
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void zzaG(Context context) {
        synchronized (zzf.class) {
            if (zzayr != null) {
                Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
            } else if (context != null) {
                zzayr = context.getApplicationContext();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzb(String str, zza zzaVar) {
        if (!zzuZ()) {
            return false;
        }
        try {
            return zzayp.zzf(str, zzaVar.zzva());
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    private static boolean zzuZ() {
        boolean z = true;
        if (zzayp == null) {
            zzac.zzw(zzayr);
            synchronized (zzayq) {
                if (zzayp == null) {
                    try {
                        DynamiteModule zza2 = DynamiteModule.zza(zzayr, DynamiteModule.zzaRY, "com.google.android.gms.googlecertificates");
                        Log.d("GoogleCertificates", "com.google.android.gms.googlecertificates module is loaded");
                        zzayp = zzw.zza.zzbv(zza2.zzdT("com.google.android.gms.common.GoogleCertificatesImpl"));
                    } catch (DynamiteModule.zza e) {
                        Log.e("GoogleCertificates", "Failed to load com.google.android.gms.googlecertificates", e);
                        z = false;
                    }
                }
            }
        }
        return z;
    }
}
