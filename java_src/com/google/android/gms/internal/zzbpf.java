package com.google.android.gms.internal;

import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.internal.zzbop;
import com.google.android.gms.internal.zzbro;
import java.lang.Thread;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2.dex */
enum zzbpf implements zzbpi {
    INSTANCE;
    
    static ThreadFactory zzcef;
    static final zzbpt zzceg = new zzbpt() { // from class: com.google.android.gms.internal.zzbpf.1
        @Override // com.google.android.gms.internal.zzbpt
        public void zza(Thread thread, String str) {
        }

        @Override // com.google.android.gms.internal.zzbpt
        public void zza(Thread thread, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            thread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
        }

        @Override // com.google.android.gms.internal.zzbpt
        public void zza(Thread thread, boolean z) {
        }
    };

    public static boolean isActive() {
        return zzYN() != null;
    }

    private static ThreadFactory zzYN() {
        if (zzcef == null) {
            try {
                Class<?> cls = Class.forName("com.google.appengine.api.ThreadManager");
                if (cls != null) {
                    zzcef = (ThreadFactory) cls.getMethod("backgroundThreadFactory", new Class[0]).invoke(null, new Object[0]);
                }
            } catch (ClassNotFoundException e) {
                return null;
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException(e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException(e4);
            }
        }
        return zzcef;
    }

    public void initialize() {
        zzbsm.zza(zzcef, new zzbsl(this) { // from class: com.google.android.gms.internal.zzbpf.2
            @Override // com.google.android.gms.internal.zzbsl
            public void zza(Thread thread, String str) {
                zzbpf.zzceg.zza(thread, str);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbop zza(zzbpa zzbpaVar, zzbol zzbolVar, zzbon zzbonVar, zzbop.zza zzaVar) {
        return new zzboq(zzbpaVar.zzYy(), zzbonVar, zzaVar);
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbow zza(ScheduledExecutorService scheduledExecutorService) {
        throw new RuntimeException("Authentication is not implemented yet");
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbpe zza(zzbpa zzbpaVar) {
        return new zzbpu(zzYN(), zzceg);
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbql zza(zzbpa zzbpaVar, String str) {
        return null;
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbro zza(zzbpa zzbpaVar, zzbro.zza zzaVar, List<String> list) {
        return new zzbrm(zzaVar, list);
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbpm zzb(zzbpa zzbpaVar) {
        final zzbrn zziV = zzbpaVar.zziV("RunLoop");
        return new zzbsy(this) { // from class: com.google.android.gms.internal.zzbpf.3
            @Override // com.google.android.gms.internal.zzbsy
            protected ThreadFactory getThreadFactory() {
                return zzbpf.zzcef;
            }

            @Override // com.google.android.gms.internal.zzbsy
            protected zzbpt zzYO() {
                return zzbpf.zzceg;
            }

            @Override // com.google.android.gms.internal.zzbsy
            public void zzj(Throwable th) {
                zziV.zzd(zzbsy.zzl(th), th);
            }
        };
    }

    @Override // com.google.android.gms.internal.zzbpi
    public String zzc(zzbpa zzbpaVar) {
        String property = System.getProperty("java.specification.version", AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN);
        return new StringBuilder(String.valueOf(property).length() + 1 + String.valueOf("AppEngine").length()).append(property).append("/").append("AppEngine").toString();
    }
}
