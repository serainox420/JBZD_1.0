package com.google.android.gms.common.api;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzr;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public final class Api<O extends ApiOptions> {
    private final String mName;
    private final zza<?, O> zzayH;
    private final zzh<?, O> zzayI;
    private final zzf<?> zzayJ;
    private final zzi<?> zzayK;

    /* loaded from: classes.dex */
    public interface ApiOptions {

        /* loaded from: classes.dex */
        public interface HasOptions extends ApiOptions {
        }

        /* loaded from: classes2.dex */
        public static final class NoOptions implements NotRequiredOptions {
            private NoOptions() {
            }
        }

        /* loaded from: classes2.dex */
        public interface NotRequiredOptions extends ApiOptions {
        }

        /* loaded from: classes2.dex */
        public interface Optional extends HasOptions, NotRequiredOptions {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class zza<T extends zze, O> extends zzd<T, O> {
        public abstract T zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, O o, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener);
    }

    /* loaded from: classes.dex */
    public interface zzb {
    }

    /* loaded from: classes.dex */
    public static class zzc<C extends zzb> {
    }

    /* loaded from: classes.dex */
    public static abstract class zzd<T extends zzb, O> {
        public int getPriority() {
            return Integer.MAX_VALUE;
        }

        public List<Scope> zzp(O o) {
            return Collections.emptyList();
        }
    }

    /* loaded from: classes.dex */
    public interface zze extends zzb {
        void disconnect();

        void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

        boolean isConnected();

        boolean isConnecting();

        void zza(zzf.InterfaceC0175zzf interfaceC0175zzf);

        void zza(zzr zzrVar, Set<Scope> set);

        boolean zzrd();

        boolean zzrr();

        Intent zzrs();

        boolean zzvh();

        IBinder zzvi();
    }

    /* loaded from: classes.dex */
    public static final class zzf<C extends zze> extends zzc<C> {
    }

    /* loaded from: classes.dex */
    public interface zzg<T extends IInterface> extends zzb {
        String zzeA();

        String zzez();

        T zzh(IBinder iBinder);
    }

    /* loaded from: classes.dex */
    public static abstract class zzh<T extends zzg, O> extends zzd<T, O> {
    }

    /* loaded from: classes.dex */
    public static final class zzi<C extends zzg> extends zzc<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends zze> Api(String str, zza<C, O> zzaVar, zzf<C> zzfVar) {
        zzac.zzb(zzaVar, "Cannot construct an Api with a null ClientBuilder");
        zzac.zzb(zzfVar, "Cannot construct an Api with a null ClientKey");
        this.mName = str;
        this.zzayH = zzaVar;
        this.zzayI = null;
        this.zzayJ = zzfVar;
        this.zzayK = null;
    }

    public String getName() {
        return this.mName;
    }

    public zzd<?, O> zzve() {
        return this.zzayH;
    }

    public zza<?, O> zzvf() {
        zzac.zza(this.zzayH != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.zzayH;
    }

    public zzc<?> zzvg() {
        if (this.zzayJ != null) {
            return this.zzayJ;
        }
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
    }
}
