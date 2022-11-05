package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaax;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
public abstract class zzzx {
    public final int zzakD;

    /* loaded from: classes2.dex */
    private static abstract class zza extends zzzx {
        protected final TaskCompletionSource<Void> zzazE;

        public zza(int i, TaskCompletionSource<Void> taskCompletionSource) {
            super(i);
            this.zzazE = taskCompletionSource;
        }

        @Override // com.google.android.gms.internal.zzzx
        public void zza(zzaal zzaalVar, boolean z) {
        }

        @Override // com.google.android.gms.internal.zzzx
        public final void zza(zzaax.zza<?> zzaVar) throws DeadObjectException {
            try {
                zzb(zzaVar);
            } catch (DeadObjectException e) {
                zzz(zzzx.zza(e));
                throw e;
            } catch (RemoteException e2) {
                zzz(zzzx.zza(e2));
            }
        }

        protected abstract void zzb(zzaax.zza<?> zzaVar) throws RemoteException;

        @Override // com.google.android.gms.internal.zzzx
        public void zzz(Status status) {
            this.zzazE.trySetException(new com.google.android.gms.common.api.zza(status));
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb<A extends zzaad.zza<? extends Result, Api.zzb>> extends zzzx {
        protected final A zzazF;

        public zzb(int i, A a2) {
            super(i);
            this.zzazF = a2;
        }

        @Override // com.google.android.gms.internal.zzzx
        public void zza(zzaal zzaalVar, boolean z) {
            zzaalVar.zza(this.zzazF, z);
        }

        @Override // com.google.android.gms.internal.zzzx
        public void zza(zzaax.zza<?> zzaVar) throws DeadObjectException {
            this.zzazF.zzb(zzaVar.zzvU());
        }

        @Override // com.google.android.gms.internal.zzzx
        public void zzz(Status status) {
            this.zzazF.zzB(status);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zza {
        public final zzabm<Api.zzb, ?> zzazG;
        public final zzabz<Api.zzb, ?> zzazH;

        public zzc(zzabn zzabnVar, TaskCompletionSource<Void> taskCompletionSource) {
            super(3, taskCompletionSource);
            this.zzazG = zzabnVar.zzazG;
            this.zzazH = zzabnVar.zzazH;
        }

        @Override // com.google.android.gms.internal.zzzx.zza, com.google.android.gms.internal.zzzx
        public /* bridge */ /* synthetic */ void zza(zzaal zzaalVar, boolean z) {
            super.zza(zzaalVar, z);
        }

        @Override // com.google.android.gms.internal.zzzx.zza
        public void zzb(zzaax.zza<?> zzaVar) throws RemoteException {
            if (this.zzazG.zzwW() != null) {
                zzaVar.zzwI().put(this.zzazG.zzwW(), new zzabn(this.zzazG, this.zzazH));
            }
        }

        @Override // com.google.android.gms.internal.zzzx.zza, com.google.android.gms.internal.zzzx
        public /* bridge */ /* synthetic */ void zzz(Status status) {
            super.zzz(status);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzd<TResult> extends zzzx {
        private final TaskCompletionSource<TResult> zzazE;
        private final zzabv<Api.zzb, TResult> zzazI;
        private final zzabs zzazJ;

        public zzd(int i, zzabv<Api.zzb, TResult> zzabvVar, TaskCompletionSource<TResult> taskCompletionSource, zzabs zzabsVar) {
            super(i);
            this.zzazE = taskCompletionSource;
            this.zzazI = zzabvVar;
            this.zzazJ = zzabsVar;
        }

        @Override // com.google.android.gms.internal.zzzx
        public void zza(zzaal zzaalVar, boolean z) {
            zzaalVar.zza(this.zzazE, z);
        }

        @Override // com.google.android.gms.internal.zzzx
        public void zza(zzaax.zza<?> zzaVar) throws DeadObjectException {
            try {
                this.zzazI.zza(zzaVar.zzvU(), this.zzazE);
            } catch (DeadObjectException e) {
                throw e;
            } catch (RemoteException e2) {
                zzz(zzzx.zza(e2));
            }
        }

        @Override // com.google.android.gms.internal.zzzx
        public void zzz(Status status) {
            this.zzazE.trySetException(this.zzazJ.zzA(status));
        }
    }

    /* loaded from: classes2.dex */
    public static final class zze extends zza {
        public final zzabh.zzb<?> zzazK;

        public zze(zzabh.zzb<?> zzbVar, TaskCompletionSource<Void> taskCompletionSource) {
            super(4, taskCompletionSource);
            this.zzazK = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzzx.zza, com.google.android.gms.internal.zzzx
        public /* bridge */ /* synthetic */ void zza(zzaal zzaalVar, boolean z) {
            super.zza(zzaalVar, z);
        }

        @Override // com.google.android.gms.internal.zzzx.zza
        public void zzb(zzaax.zza<?> zzaVar) throws RemoteException {
            zzabn remove = zzaVar.zzwI().remove(this.zzazK);
            if (remove != null) {
                remove.zzazG.zzwX();
                return;
            }
            Log.wtf("UnregisterListenerTask", "Received call to unregister a listener without a matching registration call.", new Exception());
            this.zzazE.trySetException(new com.google.android.gms.common.api.zza(Status.zzazz));
        }

        @Override // com.google.android.gms.internal.zzzx.zza, com.google.android.gms.internal.zzzx
        public /* bridge */ /* synthetic */ void zzz(Status status) {
            super.zzz(status);
        }
    }

    public zzzx(int i) {
        this.zzakD = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status zza(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (com.google.android.gms.common.util.zzt.zzzh() && (remoteException instanceof TransactionTooLargeException)) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }

    public abstract void zza(zzaal zzaalVar, boolean z);

    public abstract void zza(zzaax.zza<?> zzaVar) throws DeadObjectException;

    public abstract void zzz(Status status);
}
