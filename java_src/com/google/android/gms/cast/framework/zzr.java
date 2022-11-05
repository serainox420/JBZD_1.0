package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public class zzr<T extends Session> extends zzo.zza {
    private final SessionManagerListener<T> zzaqH;
    private final Class<T> zzaqI;

    public zzr(SessionManagerListener<T> sessionManagerListener, Class<T> cls) {
        this.zzaqH = sessionManagerListener;
        this.zzaqI = cls;
    }

    @Override // com.google.android.gms.cast.framework.zzo
    public void zzA(IObjectWrapper iObjectWrapper) throws RemoteException {
        Session session = (Session) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        if (this.zzaqI.isInstance(session)) {
            this.zzaqH.onSessionStarting(this.zzaqI.cast(session));
        }
    }

    @Override // com.google.android.gms.cast.framework.zzo
    public void zzB(IObjectWrapper iObjectWrapper) throws RemoteException {
        Session session = (Session) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        if (this.zzaqI.isInstance(session)) {
            this.zzaqH.onSessionEnding(this.zzaqI.cast(session));
        }
    }

    @Override // com.google.android.gms.cast.framework.zzo
    public void zza(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        Session session = (Session) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        if (this.zzaqI.isInstance(session)) {
            this.zzaqH.onSessionResumed(this.zzaqI.cast(session), z);
        }
    }

    @Override // com.google.android.gms.cast.framework.zzo
    public void zzc(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Session session = (Session) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        if (this.zzaqI.isInstance(session)) {
            this.zzaqH.onSessionStarted(this.zzaqI.cast(session), str);
        }
    }

    @Override // com.google.android.gms.cast.framework.zzo
    public void zzd(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Session session = (Session) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        if (this.zzaqI.isInstance(session)) {
            this.zzaqH.onSessionResuming(this.zzaqI.cast(session), str);
        }
    }

    @Override // com.google.android.gms.cast.framework.zzo
    public void zze(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Session session = (Session) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        if (this.zzaqI.isInstance(session)) {
            this.zzaqH.onSessionStartFailed(this.zzaqI.cast(session), i);
        }
    }

    @Override // com.google.android.gms.cast.framework.zzo
    public void zzf(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Session session = (Session) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        if (this.zzaqI.isInstance(session)) {
            this.zzaqH.onSessionEnded(this.zzaqI.cast(session), i);
        }
    }

    @Override // com.google.android.gms.cast.framework.zzo
    public void zzg(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Session session = (Session) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        if (this.zzaqI.isInstance(session)) {
            this.zzaqH.onSessionResumeFailed(this.zzaqI.cast(session), i);
        }
    }

    @Override // com.google.android.gms.cast.framework.zzo
    public void zzh(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Session session = (Session) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        if (this.zzaqI.isInstance(session)) {
            this.zzaqH.onSessionSuspended(this.zzaqI.cast(session), i);
        }
    }

    @Override // com.google.android.gms.cast.framework.zzo
    public int zzsB() {
        return 10298208;
    }

    @Override // com.google.android.gms.cast.framework.zzo
    public IObjectWrapper zzsC() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzaqH);
    }
}
