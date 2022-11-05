package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzyw;
import com.google.android.gms.internal.zzyx;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public class zzyq extends com.google.android.gms.common.internal.zzl<zzyw> {
    private static final zzyz zzanA = new zzyz("CastClientImpl");
    private static final Object zzawl = new Object();
    private static final Object zzawm = new Object();
    private final Bundle mExtras;
    private final Cast.Listener zzanj;
    private double zzaoN;
    private boolean zzaoO;
    private final CastDevice zzaqp;
    private ApplicationMetadata zzavU;
    private final Map<String, Cast.MessageReceivedCallback> zzavV;
    private final long zzavW;
    private zzb zzavX;
    private String zzavY;
    private boolean zzavZ;
    private boolean zzawa;
    private boolean zzawb;
    private int zzawc;
    private int zzawd;
    private final AtomicLong zzawe;
    private String zzawf;
    private String zzawg;
    private Bundle zzawh;
    private final Map<Long, zzaad.zzb<Status>> zzawi;
    private zzaad.zzb<Cast.ApplicationConnectionResult> zzawj;
    private zzaad.zzb<Status> zzawk;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zza implements Cast.ApplicationConnectionResult {
        private final String zzWD;
        private final Status zzair;
        private final ApplicationMetadata zzawn;
        private final String zzawo;
        private final boolean zzawp;

        public zza(Status status) {
            this(status, null, null, null, false);
        }

        public zza(Status status, ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
            this.zzair = status;
            this.zzawn = applicationMetadata;
            this.zzawo = str;
            this.zzWD = str2;
            this.zzawp = z;
        }

        @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
        public ApplicationMetadata getApplicationMetadata() {
            return this.zzawn;
        }

        @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
        public String getApplicationStatus() {
            return this.zzawo;
        }

        @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
        public String getSessionId() {
            return this.zzWD;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }

        @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
        public boolean getWasLaunched() {
            return this.zzawp;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzb extends zzyx.zza {
        private final Handler mHandler;
        private final AtomicReference<zzyq> zzawq;

        public zzb(zzyq zzyqVar) {
            this.zzawq = new AtomicReference<>(zzyqVar);
            this.mHandler = new Handler(zzyqVar.getLooper());
        }

        private void zza(zzyq zzyqVar, long j, int i) {
            zzaad.zzb zzbVar;
            synchronized (zzyqVar.zzawi) {
                zzbVar = (zzaad.zzb) zzyqVar.zzawi.remove(Long.valueOf(j));
            }
            if (zzbVar != null) {
                zzbVar.setResult(new Status(i));
            }
        }

        private boolean zza(zzyq zzyqVar, int i) {
            synchronized (zzyq.zzawm) {
                if (zzyqVar.zzawk != null) {
                    zzyqVar.zzawk.setResult(new Status(i));
                    zzyqVar.zzawk = null;
                    return true;
                }
                return false;
            }
        }

        public boolean isDisposed() {
            return this.zzawq.get() == null;
        }

        @Override // com.google.android.gms.internal.zzyx
        public void onApplicationDisconnected(final int i) {
            final zzyq zzyqVar = this.zzawq.get();
            if (zzyqVar == null) {
                return;
            }
            zzyqVar.zzawf = null;
            zzyqVar.zzawg = null;
            zza(zzyqVar, i);
            if (zzyqVar.zzanj == null) {
                return;
            }
            this.mHandler.post(new Runnable(this) { // from class: com.google.android.gms.internal.zzyq.zzb.1
                @Override // java.lang.Runnable
                public void run() {
                    zzyqVar.zzanj.onApplicationDisconnected(i);
                }
            });
        }

        @Override // com.google.android.gms.internal.zzyx
        public void zzA(final String str, final String str2) {
            final zzyq zzyqVar = this.zzawq.get();
            if (zzyqVar == null) {
                return;
            }
            zzyq.zzanA.zzb("Receive (type=text, ns=%s) %s", str, str2);
            this.mHandler.post(new Runnable(this) { // from class: com.google.android.gms.internal.zzyq.zzb.4
                @Override // java.lang.Runnable
                public void run() {
                    Cast.MessageReceivedCallback messageReceivedCallback;
                    synchronized (zzyqVar.zzavV) {
                        messageReceivedCallback = (Cast.MessageReceivedCallback) zzyqVar.zzavV.get(str);
                    }
                    if (messageReceivedCallback != null) {
                        messageReceivedCallback.onMessageReceived(zzyqVar.zzaqp, str, str2);
                    } else {
                        zzyq.zzanA.zzb("Discarded message for unknown namespace '%s'", str);
                    }
                }
            });
        }

        @Override // com.google.android.gms.internal.zzyx
        public void zza(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
            zzyq zzyqVar = this.zzawq.get();
            if (zzyqVar == null) {
                return;
            }
            zzyqVar.zzavU = applicationMetadata;
            zzyqVar.zzawf = applicationMetadata.getApplicationId();
            zzyqVar.zzawg = str2;
            zzyqVar.zzavY = str;
            synchronized (zzyq.zzawl) {
                if (zzyqVar.zzawj != null) {
                    zzyqVar.zzawj.setResult(new zza(new Status(0), applicationMetadata, str, str2, z));
                    zzyqVar.zzawj = null;
                }
            }
        }

        @Override // com.google.android.gms.internal.zzyx
        public void zza(String str, double d, boolean z) {
            zzyq.zzanA.zzb("Deprecated callback: \"onStatusreceived\"", new Object[0]);
        }

        @Override // com.google.android.gms.internal.zzyx
        public void zza(String str, long j, int i) {
            zzyq zzyqVar = this.zzawq.get();
            if (zzyqVar == null) {
                return;
            }
            zza(zzyqVar, j, i);
        }

        @Override // com.google.android.gms.internal.zzyx
        public void zzb(final zzyl zzylVar) {
            final zzyq zzyqVar = this.zzawq.get();
            if (zzyqVar == null) {
                return;
            }
            zzyq.zzanA.zzb("onApplicationStatusChanged", new Object[0]);
            this.mHandler.post(new Runnable(this) { // from class: com.google.android.gms.internal.zzyq.zzb.3
                @Override // java.lang.Runnable
                public void run() {
                    zzyqVar.zza(zzylVar);
                }
            });
        }

        @Override // com.google.android.gms.internal.zzyx
        public void zzb(final zzys zzysVar) {
            final zzyq zzyqVar = this.zzawq.get();
            if (zzyqVar == null) {
                return;
            }
            zzyq.zzanA.zzb("onDeviceStatusChanged", new Object[0]);
            this.mHandler.post(new Runnable(this) { // from class: com.google.android.gms.internal.zzyq.zzb.2
                @Override // java.lang.Runnable
                public void run() {
                    zzyqVar.zza(zzysVar);
                }
            });
        }

        @Override // com.google.android.gms.internal.zzyx
        public void zzb(String str, byte[] bArr) {
            if (this.zzawq.get() == null) {
                return;
            }
            zzyq.zzanA.zzb("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
        }

        @Override // com.google.android.gms.internal.zzyx
        public void zzbZ(int i) {
            zzyq zzyqVar = this.zzawq.get();
            if (zzyqVar == null) {
                return;
            }
            synchronized (zzyq.zzawl) {
                if (zzyqVar.zzawj != null) {
                    zzyqVar.zzawj.setResult(new zza(new Status(i)));
                    zzyqVar.zzawj = null;
                }
            }
        }

        @Override // com.google.android.gms.internal.zzyx
        public void zzc(String str, long j) {
            zzyq zzyqVar = this.zzawq.get();
            if (zzyqVar == null) {
                return;
            }
            zza(zzyqVar, j, 0);
        }

        @Override // com.google.android.gms.internal.zzyx
        public void zzcl(int i) {
            zzyq zzuJ = zzuJ();
            if (zzuJ == null) {
                return;
            }
            zzyq.zzanA.zzb("ICastDeviceControllerListener.onDisconnected: %d", Integer.valueOf(i));
            if (i == 0) {
                return;
            }
            zzuJ.zzcS(2);
        }

        @Override // com.google.android.gms.internal.zzyx
        public void zzcm(int i) {
            zzyq zzyqVar = this.zzawq.get();
            if (zzyqVar == null) {
                return;
            }
            zza(zzyqVar, i);
        }

        @Override // com.google.android.gms.internal.zzyx
        public void zzcn(int i) {
            zzyq zzyqVar = this.zzawq.get();
            if (zzyqVar == null) {
                return;
            }
            zza(zzyqVar, i);
        }

        public zzyq zzuJ() {
            zzyq andSet = this.zzawq.getAndSet(null);
            if (andSet == null) {
                return null;
            }
            andSet.zzuB();
            return andSet;
        }
    }

    public zzyq(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, CastDevice castDevice, long j, Cast.Listener listener, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 10, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzaqp = castDevice;
        this.zzanj = listener;
        this.zzavW = j;
        this.mExtras = bundle;
        this.zzavV = new HashMap();
        this.zzawe = new AtomicLong(0L);
        this.zzawi = new HashMap();
        zzuB();
    }

    private void zza(zzaad.zzb<Cast.ApplicationConnectionResult> zzbVar) {
        synchronized (zzawl) {
            if (this.zzawj != null) {
                this.zzawj.setResult(new zza(new Status(2002)));
            }
            this.zzawj = zzbVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzyl zzylVar) {
        boolean z;
        String zzuy = zzylVar.zzuy();
        if (!zzyr.zza(zzuy, this.zzavY)) {
            this.zzavY = zzuy;
            z = true;
        } else {
            z = false;
        }
        zzanA.zzb("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzavZ));
        if (this.zzanj != null && (z || this.zzavZ)) {
            this.zzanj.onApplicationStatusChanged();
        }
        this.zzavZ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzys zzysVar) {
        boolean z;
        boolean z2;
        boolean z3;
        ApplicationMetadata applicationMetadata = zzysVar.getApplicationMetadata();
        if (!zzyr.zza(applicationMetadata, this.zzavU)) {
            this.zzavU = applicationMetadata;
            this.zzanj.onApplicationMetadataChanged(this.zzavU);
        }
        double volume = zzysVar.getVolume();
        if (Double.isNaN(volume) || Math.abs(volume - this.zzaoN) <= 1.0E-7d) {
            z = false;
        } else {
            this.zzaoN = volume;
            z = true;
        }
        boolean zzuK = zzysVar.zzuK();
        if (zzuK != this.zzaoO) {
            this.zzaoO = zzuK;
            z = true;
        }
        zzanA.zzb("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzawa));
        if (this.zzanj != null && (z || this.zzawa)) {
            this.zzanj.onVolumeChanged();
        }
        int activeInputState = zzysVar.getActiveInputState();
        if (activeInputState != this.zzawc) {
            this.zzawc = activeInputState;
            z2 = true;
        } else {
            z2 = false;
        }
        zzanA.zzb("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z2), Boolean.valueOf(this.zzawa));
        if (this.zzanj != null && (z2 || this.zzawa)) {
            this.zzanj.onActiveInputStateChanged(this.zzawc);
        }
        int standbyState = zzysVar.getStandbyState();
        if (standbyState != this.zzawd) {
            this.zzawd = standbyState;
            z3 = true;
        } else {
            z3 = false;
        }
        zzanA.zzb("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z3), Boolean.valueOf(this.zzawa));
        if (this.zzanj != null && (z3 || this.zzawa)) {
            this.zzanj.onStandbyStateChanged(this.zzawd);
        }
        this.zzawa = false;
    }

    private void zzc(zzaad.zzb<Status> zzbVar) {
        synchronized (zzawm) {
            if (this.zzawk != null) {
                zzbVar.setResult(new Status(2001));
            } else {
                this.zzawk = zzbVar;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzuB() {
        this.zzawb = false;
        this.zzawc = -1;
        this.zzawd = -1;
        this.zzavU = null;
        this.zzavY = null;
        this.zzaoN = 0.0d;
        this.zzaoO = false;
    }

    private void zzuE() {
        zzanA.zzb("removing all MessageReceivedCallbacks", new Object[0]);
        synchronized (this.zzavV) {
            this.zzavV.clear();
        }
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public void disconnect() {
        zzanA.zzb("disconnect(); ServiceListener=%s, isConnected=%b", this.zzavX, Boolean.valueOf(isConnected()));
        zzb zzbVar = this.zzavX;
        this.zzavX = null;
        if (zzbVar == null || zzbVar.zzuJ() == null) {
            zzanA.zzb("already disposed, so short-circuiting", new Object[0]);
            return;
        }
        zzuE();
        try {
            try {
                zzuD().disconnect();
            } finally {
                super.disconnect();
            }
        } catch (RemoteException | IllegalStateException e) {
            zzanA.zzb(e, "Error while disconnecting the controller interface: %s", e.getMessage());
            super.disconnect();
        }
    }

    public int getActiveInputState() throws IllegalStateException {
        zzuF();
        return this.zzawc;
    }

    public ApplicationMetadata getApplicationMetadata() throws IllegalStateException {
        zzuF();
        return this.zzavU;
    }

    public String getApplicationStatus() throws IllegalStateException {
        zzuF();
        return this.zzavY;
    }

    public int getStandbyState() throws IllegalStateException {
        zzuF();
        return this.zzawd;
    }

    public double getVolume() throws IllegalStateException {
        zzuF();
        return this.zzaoN;
    }

    public boolean isMute() throws IllegalStateException {
        zzuF();
        return this.zzaoO;
    }

    @Override // com.google.android.gms.common.internal.zzf
    public void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        zzuE();
    }

    public void removeMessageReceivedCallbacks(String str) throws IllegalArgumentException, RemoteException {
        Cast.MessageReceivedCallback remove;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Channel namespace cannot be null or empty");
        }
        synchronized (this.zzavV) {
            remove = this.zzavV.remove(str);
        }
        if (remove == null) {
            return;
        }
        try {
            zzuD().zzcU(str);
        } catch (IllegalStateException e) {
            zzanA.zzb(e, "Error unregistering namespace (%s): %s", str, e.getMessage());
        }
    }

    public void requestStatus() throws IllegalStateException, RemoteException {
        zzuD().requestStatus();
    }

    public void setMessageReceivedCallbacks(String str, Cast.MessageReceivedCallback messageReceivedCallback) throws IllegalArgumentException, IllegalStateException, RemoteException {
        zzyr.zzcQ(str);
        removeMessageReceivedCallbacks(str);
        if (messageReceivedCallback != null) {
            synchronized (this.zzavV) {
                this.zzavV.put(str, messageReceivedCallback);
            }
            zzuD().zzcT(str);
        }
    }

    public void setMute(boolean z) throws IllegalStateException, RemoteException {
        zzuD().zza(z, this.zzaoN, this.zzaoO);
    }

    public void setVolume(double d) throws IllegalArgumentException, IllegalStateException, RemoteException {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new IllegalArgumentException(new StringBuilder(41).append("Volume cannot be ").append(d).toString());
        }
        zzuD().zza(d, this.zzaoN, this.zzaoO);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        zzanA.zzb("in onPostInitHandler; statusCode=%d", Integer.valueOf(i));
        if (i == 0 || i == 1001) {
            this.zzawb = true;
            this.zzavZ = true;
            this.zzawa = true;
        } else {
            this.zzawb = false;
        }
        if (i == 1001) {
            this.zzawh = new Bundle();
            this.zzawh.putBoolean(Cast.EXTRA_APP_NO_LONGER_RUNNING, true);
            i = 0;
        }
        super.zza(i, iBinder, bundle, i2);
    }

    public void zza(String str, LaunchOptions launchOptions, zzaad.zzb<Cast.ApplicationConnectionResult> zzbVar) throws IllegalStateException, RemoteException {
        zza(zzbVar);
        zzuD().zzb(str, launchOptions);
    }

    public void zza(String str, zzaad.zzb<Status> zzbVar) throws IllegalStateException, RemoteException {
        zzc(zzbVar);
        zzuD().zzcK(str);
    }

    public void zza(String str, String str2, com.google.android.gms.cast.zzf zzfVar, zzaad.zzb<Cast.ApplicationConnectionResult> zzbVar) throws IllegalStateException, RemoteException {
        zza(zzbVar);
        if (zzfVar == null) {
            zzfVar = new com.google.android.gms.cast.zzf();
        }
        zzuD().zza(str, str2, zzfVar);
    }

    public void zza(String str, String str2, zzaad.zzb<Status> zzbVar) throws IllegalArgumentException, IllegalStateException, RemoteException {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        }
        if (str2.length() > 65536) {
            throw new IllegalArgumentException("Message exceeds maximum size");
        }
        zzyr.zzcQ(str);
        zzuF();
        long incrementAndGet = this.zzawe.incrementAndGet();
        try {
            this.zzawi.put(Long.valueOf(incrementAndGet), zzbVar);
            zzuD().zzb(str, str2, incrementAndGet);
        } catch (Throwable th) {
            this.zzawi.remove(Long.valueOf(incrementAndGet));
            throw th;
        }
    }

    public void zza(String str, boolean z, zzaad.zzb<Cast.ApplicationConnectionResult> zzbVar) throws IllegalStateException, RemoteException {
        LaunchOptions launchOptions = new LaunchOptions();
        launchOptions.setRelaunchIfRunning(z);
        zza(str, launchOptions, zzbVar);
    }

    public void zzb(zzaad.zzb<Status> zzbVar) throws IllegalStateException, RemoteException {
        zzc(zzbVar);
        zzuD().zzuL();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzbg */
    public zzyw zzh(IBinder iBinder) {
        return zzyw.zza.zzbh(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public Bundle zzqL() {
        Bundle bundle = new Bundle();
        zzanA.zzb("getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s", this.zzawf, this.zzawg);
        this.zzaqp.putInBundle(bundle);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.zzavW);
        if (this.mExtras != null) {
            bundle.putAll(this.mExtras);
        }
        this.zzavX = new zzb(this);
        bundle.putParcelable("listener", new BinderWrapper(this.zzavX.asBinder()));
        if (this.zzawf != null) {
            bundle.putString("last_application_id", this.zzawf);
            if (this.zzawg != null) {
                bundle.putString("last_session_id", this.zzawg);
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.internal.zzm.zza
    public Bundle zzuC() {
        if (this.zzawh != null) {
            Bundle bundle = this.zzawh;
            this.zzawh = null;
            return bundle;
        }
        return super.zzuC();
    }

    zzyw zzuD() throws DeadObjectException {
        return (zzyw) super.zzxD();
    }

    void zzuF() throws IllegalStateException {
        if (!this.zzawb || this.zzavX == null || this.zzavX.isDisposed()) {
            throw new IllegalStateException("Not connected to a device");
        }
    }
}
