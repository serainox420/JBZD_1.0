package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.zzq;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzwv;
import com.google.android.gms.internal.zzyz;
/* loaded from: classes2.dex */
public abstract class Session {
    private static final zzyz zzapV = new zzyz("Session");
    private final zzm zzaqD;
    private final zza zzaqE = new zza();

    /* loaded from: classes2.dex */
    private class zza extends zzq.zza {
        private zza() {
        }

        @Override // com.google.android.gms.cast.framework.zzq
        public void end(boolean z) {
            Session.this.end(z);
        }

        @Override // com.google.android.gms.cast.framework.zzq
        public long getSessionRemainingTimeMs() {
            return Session.this.getSessionRemainingTimeMs();
        }

        @Override // com.google.android.gms.cast.framework.zzq
        public void resume(Bundle bundle) {
            Session.this.resume(bundle);
        }

        @Override // com.google.android.gms.cast.framework.zzq
        public void start(Bundle bundle) {
            Session.this.start(bundle);
        }

        @Override // com.google.android.gms.cast.framework.zzq
        public int zzsB() {
            return 10298208;
        }

        @Override // com.google.android.gms.cast.framework.zzq
        public IObjectWrapper zzsQ() {
            return com.google.android.gms.dynamic.zzd.zzA(Session.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Session(Context context, String str, String str2) {
        this.zzaqD = zzwv.zza(context, str, str2, this.zzaqE);
    }

    protected abstract void end(boolean z);

    public final String getCategory() {
        zzac.zzdj("Must be called from the main thread.");
        try {
            return this.zzaqD.getCategory();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "getCategory", zzm.class.getSimpleName());
            return null;
        }
    }

    public final String getSessionId() {
        zzac.zzdj("Must be called from the main thread.");
        try {
            return this.zzaqD.getSessionId();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "getSessionId", zzm.class.getSimpleName());
            return null;
        }
    }

    public long getSessionRemainingTimeMs() {
        zzac.zzdj("Must be called from the main thread.");
        return 0L;
    }

    public boolean isConnected() {
        zzac.zzdj("Must be called from the main thread.");
        try {
            return this.zzaqD.isConnected();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "isConnected", zzm.class.getSimpleName());
            return false;
        }
    }

    public boolean isConnecting() {
        zzac.zzdj("Must be called from the main thread.");
        try {
            return this.zzaqD.isConnecting();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "isConnecting", zzm.class.getSimpleName());
            return false;
        }
    }

    public boolean isDisconnected() {
        zzac.zzdj("Must be called from the main thread.");
        try {
            return this.zzaqD.isDisconnected();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "isDisconnected", zzm.class.getSimpleName());
            return true;
        }
    }

    public boolean isDisconnecting() {
        zzac.zzdj("Must be called from the main thread.");
        try {
            return this.zzaqD.isDisconnecting();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "isDisconnecting", zzm.class.getSimpleName());
            return false;
        }
    }

    public boolean isResuming() {
        zzac.zzdj("Must be called from the main thread.");
        try {
            return this.zzaqD.isResuming();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "isResuming", zzm.class.getSimpleName());
            return false;
        }
    }

    public boolean isSuspended() {
        zzac.zzdj("Must be called from the main thread.");
        try {
            return this.zzaqD.isSuspended();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "isSuspended", zzm.class.getSimpleName());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyFailedToResumeSession(int i) {
        try {
            this.zzaqD.notifyFailedToResumeSession(i);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "notifyFailedToResumeSession", zzm.class.getSimpleName());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyFailedToStartSession(int i) {
        try {
            this.zzaqD.notifyFailedToStartSession(i);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "notifyFailedToStartSession", zzm.class.getSimpleName());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifySessionEnded(int i) {
        try {
            this.zzaqD.notifySessionEnded(i);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "notifySessionEnded", zzm.class.getSimpleName());
        }
    }

    protected final void notifySessionResumed(boolean z) {
        try {
            this.zzaqD.notifySessionResumed(z);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "notifySessionResumed", zzm.class.getSimpleName());
        }
    }

    protected final void notifySessionStarted(String str) {
        try {
            this.zzaqD.notifySessionStarted(str);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "notifySessionStarted", zzm.class.getSimpleName());
        }
    }

    protected final void notifySessionSuspended(int i) {
        try {
            this.zzaqD.notifySessionSuspended(i);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "notifySessionSuspended", zzm.class.getSimpleName());
        }
    }

    protected abstract void resume(Bundle bundle);

    protected abstract void start(Bundle bundle);

    public final IObjectWrapper zzsN() {
        try {
            return this.zzaqD.zzsN();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "getWrappedObject", zzm.class.getSimpleName());
            return null;
        }
    }
}
