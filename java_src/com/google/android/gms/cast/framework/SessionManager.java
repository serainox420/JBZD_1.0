package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzyz;
/* loaded from: classes2.dex */
public class SessionManager {
    private static final zzyz zzapV = new zzyz("SessionManager");
    private final zzn zzaqG;

    public SessionManager(zzn zznVar) {
        this.zzaqG = zznVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addCastStateListener(CastStateListener castStateListener) throws NullPointerException {
        zzac.zzw(castStateListener);
        try {
            this.zzaqG.zza(new zzc(castStateListener));
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "addCastStateListener", zzn.class.getSimpleName());
        }
    }

    public void addSessionManagerListener(SessionManagerListener<Session> sessionManagerListener) throws NullPointerException {
        zzac.zzdj("Must be called from the main thread.");
        addSessionManagerListener(sessionManagerListener, Session.class);
    }

    public <T extends Session> void addSessionManagerListener(SessionManagerListener<T> sessionManagerListener, Class<T> cls) throws NullPointerException {
        zzac.zzw(sessionManagerListener);
        zzac.zzw(cls);
        zzac.zzdj("Must be called from the main thread.");
        try {
            this.zzaqG.zza(new zzr(sessionManagerListener, cls));
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "addSessionManagerListener", zzn.class.getSimpleName());
        }
    }

    public void endCurrentSession(boolean z) {
        zzac.zzdj("Must be called from the main thread.");
        try {
            this.zzaqG.zzb(true, z);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "endCurrentSession", zzn.class.getSimpleName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCastState() {
        try {
            return this.zzaqG.getCastState();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "addCastStateListener", zzn.class.getSimpleName());
            return 1;
        }
    }

    public CastSession getCurrentCastSession() {
        zzac.zzdj("Must be called from the main thread.");
        Session currentSession = getCurrentSession();
        if (currentSession == null || !(currentSession instanceof CastSession)) {
            return null;
        }
        return (CastSession) currentSession;
    }

    public Session getCurrentSession() {
        zzac.zzdj("Must be called from the main thread.");
        try {
            return (Session) com.google.android.gms.dynamic.zzd.zzF(this.zzaqG.zzsP());
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "getWrappedCurrentSession", zzn.class.getSimpleName());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeCastStateListener(CastStateListener castStateListener) {
        if (castStateListener == null) {
            return;
        }
        try {
            this.zzaqG.zzb(new zzc(castStateListener));
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "removeCastStateListener", zzn.class.getSimpleName());
        }
    }

    public void removeSessionManagerListener(SessionManagerListener<Session> sessionManagerListener) {
        zzac.zzdj("Must be called from the main thread.");
        removeSessionManagerListener(sessionManagerListener, Session.class);
    }

    public <T extends Session> void removeSessionManagerListener(SessionManagerListener<T> sessionManagerListener, Class cls) {
        zzac.zzw(cls);
        zzac.zzdj("Must be called from the main thread.");
        if (sessionManagerListener == null) {
            return;
        }
        try {
            this.zzaqG.zzb(new zzr(sessionManagerListener, cls));
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "removeSessionManagerListener", zzn.class.getSimpleName());
        }
    }

    public IObjectWrapper zzsE() {
        try {
            return this.zzaqG.zzsJ();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "getWrappedThis", zzn.class.getSimpleName());
            return null;
        }
    }
}
