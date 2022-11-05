package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzn;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Callable;
@zzme
/* loaded from: classes.dex */
public class zzpv {
    private static zzm zzYm;
    private static final Object zzYn = new Object();
    public static final zza<Void> zzYo = new zza<Void>() { // from class: com.google.android.gms.internal.zzpv.1
        @Override // com.google.android.gms.internal.zzpv.zza
        public /* bridge */ /* synthetic */ Void zzh(InputStream inputStream) {
            return null;
        }

        @Override // com.google.android.gms.internal.zzpv.zza
        public /* bridge */ /* synthetic */ Void zzji() {
            return null;
        }
    };

    /* loaded from: classes2.dex */
    public interface zza<T> {
        T zzh(InputStream inputStream);

        T zzji();
    }

    /* loaded from: classes2.dex */
    private static class zzb<T> extends zzl<InputStream> {
        private final zza<T> zzYs;
        private final zzn.zzb<T> zzaG;

        public zzb(String str, final zza<T> zzaVar, final zzn.zzb<T> zzbVar) {
            super(0, str, new zzn.zza() { // from class: com.google.android.gms.internal.zzpv.zzb.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.zzn.zza
                public void zze(zzs zzsVar) {
                    zzn.zzb.this.zzb(zzaVar.zzji());
                }
            });
            this.zzYs = zzaVar;
            this.zzaG = zzbVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzl
        public zzn<InputStream> zza(zzj zzjVar) {
            return zzn.zza(new ByteArrayInputStream(zzjVar.data), zzy.zzb(zzjVar));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzl
        /* renamed from: zzi */
        public void zza(final InputStream inputStream) {
            final zzqm zza = zzpn.zza(new Callable<T>() { // from class: com.google.android.gms.internal.zzpv.zzb.2
                @Override // java.util.concurrent.Callable
                public T call() {
                    return (T) zzb.this.zzYs.zzh(inputStream);
                }
            });
            zza.zzd(new Runnable() { // from class: com.google.android.gms.internal.zzpv.zzb.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzb.this.zzaG.zzb(zza.get());
                    } catch (Exception e) {
                        zzpk.zzb("Error occured while dispatching http response in getter.", e);
                        com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "HttpGetter.deliverResponse.1");
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzc<T> extends zzqj<T> implements zzn.zzb<T> {
        private zzc(zzpv zzpvVar) {
        }

        @Override // com.google.android.gms.internal.zzn.zzb
        public void zzb(T t) {
            super.zzh(t);
        }
    }

    public zzpv(Context context) {
        zzZ(context);
    }

    private static zzm zzZ(Context context) {
        zzm zzmVar;
        synchronized (zzYn) {
            if (zzYm == null) {
                zzYm = zzad.zza(context.getApplicationContext());
            }
            zzmVar = zzYm;
        }
        return zzmVar;
    }

    public zzqm<String> zza(int i, final String str, final Map<String, String> map, final byte[] bArr) {
        final zzc zzcVar = new zzc();
        zzYm.zze(new zzac(this, i, str, zzcVar, new zzn.zza(this) { // from class: com.google.android.gms.internal.zzpv.2
            @Override // com.google.android.gms.internal.zzn.zza
            public void zze(zzs zzsVar) {
                String str2 = str;
                String valueOf = String.valueOf(zzsVar.toString());
                zzpk.zzbh(new StringBuilder(String.valueOf(str2).length() + 21 + String.valueOf(valueOf).length()).append("Failed to load URL: ").append(str2).append("\n").append(valueOf).toString());
                zzcVar.zzb(null);
            }
        }) { // from class: com.google.android.gms.internal.zzpv.3
            @Override // com.google.android.gms.internal.zzl
            public Map<String, String> getHeaders() throws com.google.android.gms.internal.zza {
                return map == null ? super.getHeaders() : map;
            }

            @Override // com.google.android.gms.internal.zzl
            public byte[] zzm() throws com.google.android.gms.internal.zza {
                return bArr == null ? super.zzm() : bArr;
            }
        });
        return zzcVar;
    }

    public <T> zzqm<T> zza(String str, zza<T> zzaVar) {
        zzc zzcVar = new zzc();
        zzYm.zze(new zzb(str, zzaVar, zzcVar));
        return zzcVar;
    }

    public zzqm<String> zzc(String str, Map<String, String> map) {
        return zza(0, str, map, null);
    }
}
