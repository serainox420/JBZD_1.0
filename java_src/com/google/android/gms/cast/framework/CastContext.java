package com.google.android.gms.cast.framework;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.FragmentActivity;
import android.support.v7.media.f;
import android.support.v7.media.g;
import android.view.KeyEvent;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzwv;
import com.google.android.gms.internal.zzww;
import com.google.android.gms.internal.zzxe;
import com.google.android.gms.internal.zzyz;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public final class CastContext {
    public static final String OPTIONS_PROVIDER_CLASS_NAME_KEY = "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME";
    private static final zzyz zzapV = new zzyz("CastContext");
    private static CastContext zzapW;
    private final Context zzPB;
    private final zzg zzapX;
    private final SessionManager zzapY;
    private final zzd zzapZ;
    private final CastOptions zzaqa;
    private zzxe zzaqb;

    private CastContext(Context context, CastOptions castOptions, List<SessionProvider> list) {
        zzj zzjVar;
        zzn zznVar;
        SessionManager sessionManager = null;
        this.zzPB = context.getApplicationContext();
        this.zzaqa = castOptions;
        this.zzaqb = new zzxe(g.a(this.zzPB));
        HashMap hashMap = new HashMap();
        zzww zzwwVar = new zzww(this.zzPB, castOptions, this.zzaqb);
        hashMap.put(zzwwVar.getCategory(), zzwwVar.zzsY());
        if (list != null) {
            for (SessionProvider sessionProvider : list) {
                zzac.zzb(sessionProvider, "Additional SessionProvider must not be null.");
                String zzh = zzac.zzh(sessionProvider.getCategory(), "Category for SessionProvider must not be null or empty string.");
                zzac.zzb(!hashMap.containsKey(zzh), String.format("SessionProvider for category %s already added", zzh));
                hashMap.put(zzh, sessionProvider.zzsY());
            }
        }
        this.zzapX = zzwv.zza(this.zzPB, castOptions, this.zzaqb, hashMap);
        try {
            zzjVar = this.zzapX.zzsI();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "getDiscoveryManagerImpl", zzg.class.getSimpleName());
            zzjVar = null;
        }
        this.zzapZ = zzjVar == null ? null : new zzd(zzjVar);
        try {
            zznVar = this.zzapX.zzsH();
        } catch (RemoteException e2) {
            zzapV.zzb(e2, "Unable to call %s on %s.", "getSessionManagerImpl", zzg.class.getSimpleName());
            zznVar = null;
        }
        this.zzapY = zznVar != null ? new SessionManager(zznVar) : sessionManager;
    }

    public static CastContext getSharedInstance(Context context) throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        if (zzapW == null) {
            OptionsProvider zzat = zzat(context.getApplicationContext());
            zzapW = new CastContext(context, zzat.getCastOptions(context.getApplicationContext()), zzat.getAdditionalSessionProviders(context.getApplicationContext()));
        }
        return zzapW;
    }

    private boolean zza(CastSession castSession, double d, boolean z) {
        double d2 = 1.0d;
        if (z) {
            try {
                double volume = castSession.getVolume() + d;
                if (volume <= 1.0d) {
                    d2 = volume;
                }
                castSession.setVolume(d2);
            } catch (IOException | IllegalStateException e) {
                zzapV.zzc("Unable to call CastSession.setVolume(double).", e);
            }
        }
        return true;
    }

    private static OptionsProvider zzat(Context context) throws IllegalStateException {
        try {
            String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString(OPTIONS_PROVIDER_CLASS_NAME_KEY);
            if (string != null) {
                return (OptionsProvider) Class.forName(string).newInstance();
            }
            throw new IllegalStateException("The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME.");
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException | IllegalAccessException | InstantiationException | NullPointerException e) {
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        }
    }

    public void addAppVisibilityListener(AppVisibilityListener appVisibilityListener) throws IllegalStateException, NullPointerException {
        zzac.zzdj("Must be called from the main thread.");
        zzac.zzw(appVisibilityListener);
        try {
            this.zzapX.zza(new zza(appVisibilityListener));
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "addVisibilityChangeListener", zzg.class.getSimpleName());
        }
    }

    public void addCastStateListener(CastStateListener castStateListener) throws IllegalStateException, NullPointerException {
        zzac.zzdj("Must be called from the main thread.");
        zzac.zzw(castStateListener);
        this.zzapY.addCastStateListener(castStateListener);
    }

    public CastOptions getCastOptions() throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        return this.zzaqa;
    }

    public int getCastState() {
        zzac.zzdj("Must be called from the main thread.");
        return this.zzapY.getCastState();
    }

    public f getMergedSelector() throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        try {
            return f.a(this.zzapX.zzsG());
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "getMergedSelectorAsBundle", zzg.class.getSimpleName());
            return null;
        }
    }

    public SessionManager getSessionManager() throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        return this.zzapY;
    }

    public boolean isAppVisible() throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        try {
            return this.zzapX.isAppVisible();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "isApplicationVisible", zzg.class.getSimpleName());
            return false;
        }
    }

    public boolean onDispatchVolumeKeyEventBeforeJellyBean(KeyEvent keyEvent) {
        CastSession currentCastSession;
        zzac.zzdj("Must be called from the main thread.");
        if (!zzt.zzzi() && (currentCastSession = this.zzapY.getCurrentCastSession()) != null && currentCastSession.isConnected()) {
            double volumeDeltaBeforeIceCreamSandwich = getCastOptions().getVolumeDeltaBeforeIceCreamSandwich();
            boolean z = keyEvent.getAction() == 0;
            switch (keyEvent.getKeyCode()) {
                case 24:
                    zza(currentCastSession, volumeDeltaBeforeIceCreamSandwich, z);
                    return true;
                case 25:
                    zza(currentCastSession, -volumeDeltaBeforeIceCreamSandwich, z);
                    return true;
                default:
                    return false;
            }
        }
        return false;
    }

    @Deprecated
    public void registerLifecycleCallbacksBeforeIceCreamSandwich(FragmentActivity fragmentActivity, Bundle bundle) {
    }

    public void removeAppVisibilityListener(AppVisibilityListener appVisibilityListener) throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        if (appVisibilityListener == null) {
            return;
        }
        try {
            this.zzapX.zzb(new zza(appVisibilityListener));
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "addVisibilityChangeListener", zzg.class.getSimpleName());
        }
    }

    public void removeCastStateListener(CastStateListener castStateListener) throws IllegalStateException {
        zzac.zzdj("Must be called from the main thread.");
        if (castStateListener == null) {
            return;
        }
        this.zzapY.removeCastStateListener(castStateListener);
    }

    public zzd zzsD() {
        zzac.zzdj("Must be called from the main thread.");
        return this.zzapZ;
    }

    public IObjectWrapper zzsE() {
        try {
            return this.zzapX.zzsJ();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "getWrappedThis", zzg.class.getSimpleName());
            return null;
        }
    }
}
