package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.internal.zzbop;
import com.google.android.gms.internal.zzbro;
import com.google.firebase.a;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.connection.idl.c;
import com.google.firebase.database.f;
import io.fabric.sdk.android.services.b.b;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public class zzbnv implements zzbpi {
    private final a zzcau;
    private final Set<String> zzcaz = new HashSet();
    private final Context zzqo;

    public zzbnv(a aVar) {
        this.zzcau = aVar;
        if (this.zzcau != null) {
            this.zzqo = this.zzcau.a();
            return;
        }
        Log.e("FirebaseDatabase", "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        Log.e("FirebaseDatabase", "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database.");
        Log.e("FirebaseDatabase", "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        throw new RuntimeException("You need to call FirebaseApp.initializeApp() before using Firebase Database.");
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbop zza(zzbpa zzbpaVar, zzbol zzbolVar, zzbon zzbonVar, zzbop.zza zzaVar) {
        final c a2 = c.a(this.zzqo, new com.google.firebase.database.connection.idl.zzc(zzbonVar, zzbpaVar.zzYe(), null, zzbpaVar.zzXu(), f.a(), zzbpaVar.zzkn()), zzbolVar, zzaVar);
        this.zzcau.a(new a.b(this) { // from class: com.google.android.gms.internal.zzbnv.2
            @Override // com.google.firebase.a.b
            public void zzat(boolean z) {
                if (z) {
                    a2.interrupt("app_in_background");
                } else {
                    a2.resume("app_in_background");
                }
            }
        });
        return a2;
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbow zza(ScheduledExecutorService scheduledExecutorService) {
        return new zzbnt(this.zzcau, scheduledExecutorService);
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbpe zza(zzbpa zzbpaVar) {
        return new zzbnu();
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbql zza(zzbpa zzbpaVar, String str) {
        String zzYC = zzbpaVar.zzYC();
        String sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(zzYC).length()).append(str).append(b.ROLL_OVER_FILE_NAME_SEPARATOR).append(zzYC).toString();
        if (this.zzcaz.contains(sb)) {
            throw new DatabaseException(new StringBuilder(String.valueOf(zzYC).length() + 47).append("SessionPersistenceKey '").append(zzYC).append("' has already been used.").toString());
        }
        this.zzcaz.add(sb);
        return new zzbqi(zzbpaVar, new zzbnw(this.zzqo, zzbpaVar, sb), new zzbqj(zzbpaVar.zzYz()));
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbro zza(zzbpa zzbpaVar, zzbro.zza zzaVar, List<String> list) {
        return new zzbrl(zzaVar, list);
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbpm zzb(zzbpa zzbpaVar) {
        final zzbrn zziV = zzbpaVar.zziV("RunLoop");
        return new zzbsy() { // from class: com.google.android.gms.internal.zzbnv.1
            @Override // com.google.android.gms.internal.zzbsy
            public void zzj(final Throwable th) {
                final String zzl = zzbsy.zzl(th);
                zziV.zzd(zzl, th);
                new Handler(zzbnv.this.zzqo.getMainLooper()).post(new Runnable(this) { // from class: com.google.android.gms.internal.zzbnv.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new RuntimeException(zzl, th);
                    }
                });
                zzXt().shutdownNow();
            }
        };
    }

    @Override // com.google.android.gms.internal.zzbpi
    public String zzc(zzbpa zzbpaVar) {
        return new StringBuilder(19).append(Build.VERSION.SDK_INT).append("/Android").toString();
    }
}
