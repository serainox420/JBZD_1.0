package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.f;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbpl {
    private static final zzbpl zzcfv = new zzbpl();
    private final Map<zzbpa, Map<String, zzbpj>> zzcfw = new HashMap();

    public static zzbpj zza(zzbpa zzbpaVar, zzbpk zzbpkVar, f fVar) throws DatabaseException {
        return zzcfv.zzb(zzbpaVar, zzbpkVar, fVar);
    }

    private zzbpj zzb(zzbpa zzbpaVar, zzbpk zzbpkVar, f fVar) throws DatabaseException {
        zzbpj zzbpjVar;
        zzbpaVar.zzYj();
        String str = zzbpkVar.zzcbI;
        String str2 = zzbpkVar.zzaGP;
        String sb = new StringBuilder(String.valueOf(str).length() + 9 + String.valueOf(str2).length()).append("https://").append(str).append("/").append(str2).toString();
        synchronized (this.zzcfw) {
            if (!this.zzcfw.containsKey(zzbpaVar)) {
                this.zzcfw.put(zzbpaVar, new HashMap());
            }
            Map<String, zzbpj> map = this.zzcfw.get(zzbpaVar);
            if (map.containsKey(sb)) {
                throw new IllegalStateException("createLocalRepo() called for existing repo.");
            }
            zzbpjVar = new zzbpj(zzbpkVar, zzbpaVar, fVar);
            map.put(sb, zzbpjVar);
        }
        return zzbpjVar;
    }

    public static void zzd(zzbpa zzbpaVar) {
        zzcfv.zzf(zzbpaVar);
    }

    public static void zze(zzbpa zzbpaVar) {
        zzcfv.zzg(zzbpaVar);
    }

    private void zzf(final zzbpa zzbpaVar) {
        zzbpm zzYB = zzbpaVar.zzYB();
        if (zzYB != null) {
            zzYB.zzs(new Runnable() { // from class: com.google.android.gms.internal.zzbpl.3
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (zzbpl.this.zzcfw) {
                        if (zzbpl.this.zzcfw.containsKey(zzbpaVar)) {
                            boolean z = true;
                            for (zzbpj zzbpjVar : ((Map) zzbpl.this.zzcfw.get(zzbpaVar)).values()) {
                                zzbpjVar.interrupt();
                                z = z && !zzbpjVar.zzZa();
                            }
                            if (z) {
                                zzbpaVar.stop();
                            }
                        }
                    }
                }
            });
        }
    }

    private void zzg(final zzbpa zzbpaVar) {
        zzbpm zzYB = zzbpaVar.zzYB();
        if (zzYB != null) {
            zzYB.zzs(new Runnable() { // from class: com.google.android.gms.internal.zzbpl.4
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (zzbpl.this.zzcfw) {
                        if (zzbpl.this.zzcfw.containsKey(zzbpaVar)) {
                            for (zzbpj zzbpjVar : ((Map) zzbpl.this.zzcfw.get(zzbpaVar)).values()) {
                                zzbpjVar.resume();
                            }
                        }
                    }
                }
            });
        }
    }

    public static void zzk(final zzbpj zzbpjVar) {
        zzbpjVar.zzs(new Runnable() { // from class: com.google.android.gms.internal.zzbpl.1
            @Override // java.lang.Runnable
            public void run() {
                zzbpj.this.interrupt();
            }
        });
    }

    public static void zzl(final zzbpj zzbpjVar) {
        zzbpjVar.zzs(new Runnable() { // from class: com.google.android.gms.internal.zzbpl.2
            @Override // java.lang.Runnable
            public void run() {
                zzbpj.this.resume();
            }
        });
    }
}
