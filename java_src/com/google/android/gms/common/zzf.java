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
        static final zza[] zzayw = {new zzc(zza.zzdc("0\u0082\u0004C0\u0082\u0003+??\u0003\u0002\u0001\u0002\u0002\t\u0000????\u0087FdJ0\u008d0")) { // from class: com.google.android.gms.common.zzf.zzd.1
            @Override // com.google.android.gms.common.zzf.zzc
            protected byte[] zzvc() {
                return zza.zzdc("0\u0082\u0004C0\u0082\u0003+??\u0003\u0002\u0001\u0002\u0002\t\u0000????\u0087FdJ0\u008d0\r\u0006\t*\u0086H\u0086??\r\u0001\u0001\u0004\u0005\u00000t1\u000b0\t\u0006\u0003U\u0004\u0006\u0013\u0002US1\u00130\u0011\u0006\u0003U\u0004\b\u0013\nCalifornia1\u00160\u0014\u0006\u0003U\u0004\u0007\u0013\rMountain View1\u00140\u0012\u0006\u0003U\u0004\n\u0013\u000bGoogle Inc.1\u00100\u000e\u0006\u0003U\u0004\u000b\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u0003\u0013\u0007Android0\u001e\u0017\r080821231334Z\u0017\r360107231334Z0t1\u000b0\t\u0006\u0003U\u0004\u0006\u0013\u0002US1\u00130\u0011\u0006\u0003U\u0004\b\u0013\nCalifornia1\u00160\u0014\u0006\u0003U\u0004\u0007\u0013\rMountain View1\u00140\u0012\u0006\u0003U\u0004\n\u0013\u000bGoogle Inc.1\u00100\u000e\u0006\u0003U\u0004\u000b\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u0003\u0013\u0007Android0\u0082\u0001 0\r\u0006\t*\u0086H\u0086??\r\u0001\u0001\u0001\u0005\u0000\u0003\u0082\u0001\r\u00000\u0082\u0001\b\u0002\u0082\u0001\u0001\u0000??V.\u0000??;??\b??\n\u0096o\u0012N)??\u0011????V??\u008fX??????\u0013\u0003????T??r??@??\u001b\u001d??\u0013\tgbNFV??wj\u0092\u0019=????????$??\u001ew\u0018\u008b\u000ejG??;3??`\u009bw\u00181E????{.Xft????V[\u001fLjYU????Q??=??????\\'\"\"R??u????\u0015Jd_\u0089qh????????\u0012????xWi??4??y\u0084??~.??vL??\u0083\u0007????qT????_d??\u001aD??\u0002??I\u0005AW??\u0002??_\\\u000eU????\u0085\u0019????'????Q\u0016\u0092????o\u0019??\u0083\u0085?????????????h??)y??\u000e\u0018??\u0093\u0086k;????\u0089\u0099U*\u000e;L\u0099??X??\u0091\u008b????\u0082??5??\u0003??????\r??D????$????38r??R!\u0098^??????\r\u000b\u0014[j??\u0092\u0085\u008ey\u0002\u0001\u0003??\u0081??0\u0081??0\u001d\u0006\u0003U\u001d\u000e\u0004\u0016\u0004\u0014??}\u008c??!\u0017V%\u009a\u007f??\u0082??k??\u0098????\u0086??0\u0081??\u0006\u0003U\u001d#\u0004\u0081\u009e0\u0081\u009b\u0080\u0014??}\u008c??!\u0017V%\u009a\u007f??\u0082??k??\u0098????\u0086????x??v0t1\u000b0\t\u0006\u0003U\u0004\u0006\u0013\u0002US1\u00130\u0011\u0006\u0003U\u0004\b\u0013\nCalifornia1\u00160\u0014\u0006\u0003U\u0004\u0007\u0013\rMountain View1\u00140\u0012\u0006\u0003U\u0004\n\u0013\u000bGoogle Inc.1\u00100\u000e\u0006\u0003U\u0004\u000b\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u0003\u0013\u0007Android\u0082\t\u0000????\u0087FdJ0\u008d0\f\u0006\u0003U\u001d\u0013\u0004\u00050\u0003\u0001\u0001??0\r\u0006\t*\u0086H\u0086??\r\u0001\u0001\u0004\u0005\u0000\u0003\u0082\u0001\u0001\u0000m??R????\u00850,6\n????\u0093\u009b????????\u0004??]z\u0016a????F??\u0099B\u0004????Jh????\u001aS\u001e??YZb<??\u0007c??g)zz??W\u0012??\u0007??\b????\u0010\u0094)\u0012M{\u0010b\u0019??\u0084??>????\u00ad_??q??\u0092&\u009a\u008b??\u008b??mD??????\u008el????\u0005???????\u0096D~\u0086\u008es\u0010v\u00adE???`\t??\u0019??a??&A??\u0099'\u001d??R(????\u0087\u0087]??\u007fE'X??a????\f????5.BL??6\\R52??2Q7Y<J??A????A????\r\u000b\u0010q????@????\u009e??\u001c??'??gCi??\u0084??/??\u0011??\u0006????,??\u0010??\u000f\u0089:??Wb\u0091\u0090H??????LqD\u0017\u0083B??\u0005\u0081????W:??[9\r??????A\u00861\u0089]_u\u009f0\u0011&\u0087??b\u0014\u0010??i0\u008a");
            }
        }, new zzc(zza.zzdc("0\u0082\u0004??0\u0082\u0003\u0090??\u0003\u0002\u0001\u0002\u0002\t\u0000??\u0085??l}??N??0")) { // from class: com.google.android.gms.common.zzf.zzd.2
            @Override // com.google.android.gms.common.zzf.zzc
            protected byte[] zzvc() {
                return zza.zzdc("0\u0082\u0004??0\u0082\u0003\u0090??\u0003\u0002\u0001\u0002\u0002\t\u0000??\u0085??l}??N??0\r\u0006\t*\u0086H\u0086??\r\u0001\u0001\u0004\u0005\u00000\u0081\u00941\u000b0\t\u0006\u0003U\u0004\u0006\u0013\u0002US1\u00130\u0011\u0006\u0003U\u0004\b\u0013\nCalifornia1\u00160\u0014\u0006\u0003U\u0004\u0007\u0013\rMountain View1\u00100\u000e\u0006\u0003U\u0004\n\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u000b\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u0003\u0013\u0007Android1\"0 \u0006\t*\u0086H\u0086??\r\u0001\t\u0001\u0016\u0013android@android.com0\u001e\u0017\r080415233656Z\u0017\r350901233656Z0\u0081\u00941\u000b0\t\u0006\u0003U\u0004\u0006\u0013\u0002US1\u00130\u0011\u0006\u0003U\u0004\b\u0013\nCalifornia1\u00160\u0014\u0006\u0003U\u0004\u0007\u0013\rMountain View1\u00100\u000e\u0006\u0003U\u0004\n\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u000b\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u0003\u0013\u0007Android1\"0 \u0006\t*\u0086H\u0086??\r\u0001\t\u0001\u0016\u0013android@android.com0\u0082\u0001 0\r\u0006\t*\u0086H\u0086??\r\u0001\u0001\u0001\u0005\u0000\u0003\u0082\u0001\r\u00000\u0082\u0001\b\u0002\u0082\u0001\u0001\u0000????.\b\n????1M??\u008d??????\u0018\\??=3??\ft??????????\u0089\u0013??,\\9??V??F\u0081=e????????Bk\u0007??????Z9\u0090??g??k??\u0099??'\u0089K\u008f\u000b\"\u0000\u0019\u0094??)\u0015??r??m*0\u001b??o????\u0011:????\u009et5??m#??}??????e????\u001f\n\u008d????\n\u0086\u009dQlN\u009d\u0005\u0011\u0096??|\fU\u007f\u0017[??u??H??j??\u0086\b\u009b??O\u008a??????\u009a}??,\n5\"\u0082\u00ad\u0006????\u0018^??Uy????m\b\u000b\u001da\u0089??????\u0098????????\u0007??E????h????\u0083\u008a^T\u0088??lS??\u000b\u0012\u001d??????\u000eb\f\u0018\u008a????a????\u0087??<d_/U??????u??@p???qQ??6p??j\u0097\u001a??^????\u0018\u0090????????)\u008c??f??\u009el??D??\u009a??m\u001c\u001b\u000f\u0002\u0001\u0003??\u0081??0\u0081??0\u001d\u0006\u0003U\u001d\u000e\u0004\u0016\u0004\u0014\u008d\u001c????\u0095LC<a\u0086:\u0015??L??\u0003??O????0\u0081??\u0006\u0003U\u001d#\u0004\u0081??0\u0081??\u0080\u0014\u008d\u001c????\u0095LC<a\u0086:\u0015??L??\u0003??O??????\u0081\u009a??\u0081\u00970\u0081\u00941\u000b0\t\u0006\u0003U\u0004\u0006\u0013\u0002US1\u00130\u0011\u0006\u0003U\u0004\b\u0013\nCalifornia1\u00160\u0014\u0006\u0003U\u0004\u0007\u0013\rMountain View1\u00100\u000e\u0006\u0003U\u0004\n\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u000b\u0013\u0007Android1\u00100\u000e\u0006\u0003U\u0004\u0003\u0013\u0007Android1\"0 \u0006\t*\u0086H\u0086??\r\u0001\t\u0001\u0016\u0013android@android.com\u0082\t\u0000??\u0085??l}??N??0\f\u0006\u0003U\u001d\u0013\u0004\u00050\u0003\u0001\u0001??0\r\u0006\t*\u0086H\u0086??\r\u0001\u0001\u0004\u0005\u0000\u0003\u0082\u0001\u0001\u0000\u0019??\f??\u0005??x\u0092?L\r}??##=@\u0096z????\u0000\b\u001d[?????????? k\u000e\u0011 \u0095\u0006Al??D\u0093\u0099\u0013??kJ??????$??????\\nL??\u0001j\u0015\u0091n????]??Z^:\u0001\u00006??\u0092H??\u0010\u009b??.\u001ea\u0081\u0086g:;??m??\u000bw????)????U????L\u0090]#\u0087????\t????; +NZ\"??2cHJ#????)??\u009f\u00199u\u00973??????\u0016\u000fB\u0096????\u0016>\u0081\u0082\u0085\u009cfC????\u0096/????\u008333[??\u0090??\u009ak\"????\u00adDB)??9??N??\u00ad????e????K>Q????{fx{??\u0012??\u0097????\u0084??#??O????IL\u0002????\u0005\u0016\u0012??e)9>\u008eF??????!??w??Q??_*??'????\u009d??\n??\u00035i??;\u0098\u0097????|????>\u0012C??\u000b");
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
