package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes.dex */
public abstract class zzf<T> {
    private final String zzaRL;
    private T zzaRM;

    /* loaded from: classes.dex */
    public static class zza extends Exception {
        public zza(String str) {
            super(str);
        }

        public zza(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzf(String str) {
        this.zzaRL = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final T zzbl(Context context) throws zza {
        if (this.zzaRM == null) {
            zzac.zzw(context);
            Context remoteContext = com.google.android.gms.common.zzg.getRemoteContext(context);
            if (remoteContext == null) {
                throw new zza("Could not get remote context.");
            }
            try {
                this.zzaRM = zzc((IBinder) remoteContext.getClassLoader().loadClass(this.zzaRL).newInstance());
            } catch (ClassNotFoundException e) {
                throw new zza("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new zza("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new zza("Could not instantiate creator.", e3);
            }
        }
        return this.zzaRM;
    }

    protected abstract T zzc(IBinder iBinder);
}
