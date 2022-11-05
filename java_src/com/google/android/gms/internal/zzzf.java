package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.os.RemoteException;
import android.view.Display;
import android.view.Surface;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.cast.CastRemoteDisplayApi;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzzh;
import com.google.android.gms.internal.zzzj;
/* loaded from: classes.dex */
public class zzzf implements CastRemoteDisplayApi {
    private static final zzyz zzanA = new zzyz("CastRemoteDisplayApiImpl");
    private Api<?> zzaxf;
    private VirtualDisplay zzaxg;
    private final zzzj zzaxh = new zzzj.zza() { // from class: com.google.android.gms.internal.zzzf.1
        @Override // com.google.android.gms.internal.zzzj
        public void zzcp(int i) {
            zzzf.zzanA.zzb("onRemoteDisplayEnded", new Object[0]);
            zzzf.this.zzuQ();
        }
    };

    /* loaded from: classes.dex */
    abstract class zza extends zzzh.zza {
        zza(zzzf zzzfVar) {
        }

        @Override // com.google.android.gms.internal.zzzh
        public void onDisconnected() throws RemoteException {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzzh
        public void onError(int i) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzzh
        public void zza(int i, int i2, Surface surface) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzzh
        public void zzuS() throws RemoteException {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public abstract class zzb extends zzaad.zza<CastRemoteDisplay.CastRemoteDisplaySessionResult, zzzg> {

        /* JADX INFO: Access modifiers changed from: protected */
        @TargetApi(19)
        /* loaded from: classes2.dex */
        public final class zza extends zza {
            private final zzzg zzaxj;

            public zza(zzzg zzzgVar) {
                super(zzzf.this);
                this.zzaxj = zzzgVar;
            }

            private int zzn(int i, int i2) {
                if (i >= i2) {
                    i = i2;
                }
                return (i * 320) / 1080;
            }

            @Override // com.google.android.gms.internal.zzzf.zza, com.google.android.gms.internal.zzzh
            public void onError(int i) throws RemoteException {
                zzzf.zzanA.zzb("onError: %d", Integer.valueOf(i));
                zzzf.this.zzuQ();
                zzb.this.zzb((zzb) new zzc(Status.zzazz));
            }

            @Override // com.google.android.gms.internal.zzzf.zza, com.google.android.gms.internal.zzzh
            public void zza(int i, int i2, Surface surface) {
                zzzf.zzanA.zzb("onConnected", new Object[0]);
                DisplayManager displayManager = (DisplayManager) this.zzaxj.getContext().getSystemService(ServerProtocol.DIALOG_PARAM_DISPLAY);
                if (displayManager == null) {
                    zzzf.zzanA.zzc("Unable to get the display manager", new Object[0]);
                    zzb.this.zzb((zzb) new zzc(Status.zzazz));
                    return;
                }
                zzzf.this.zzuQ();
                int zzn = zzn(i, i2);
                zzzf.this.zzaxg = displayManager.createVirtualDisplay("private_display", i, i2, zzn, surface, 2);
                if (zzzf.this.zzaxg == null) {
                    zzzf.zzanA.zzc("Unable to create virtual display", new Object[0]);
                    zzb.this.zzb((zzb) new zzc(Status.zzazz));
                } else if (zzzf.this.zzaxg.getDisplay() == null) {
                    zzzf.zzanA.zzc("Virtual display does not have a display", new Object[0]);
                    zzb.this.zzb((zzb) new zzc(Status.zzazz));
                } else {
                    try {
                        this.zzaxj.zza(this, zzzf.this.zzaxg.getDisplay().getDisplayId());
                    } catch (RemoteException | IllegalStateException e) {
                        zzzf.zzanA.zzc("Unable to provision the route's new virtual Display", new Object[0]);
                        zzb.this.zzb((zzb) new zzc(Status.zzazz));
                    }
                }
            }

            @Override // com.google.android.gms.internal.zzzf.zza, com.google.android.gms.internal.zzzh
            public void zzuS() {
                zzzf.zzanA.zzb("onConnectedWithDisplay", new Object[0]);
                if (zzzf.this.zzaxg == null) {
                    zzzf.zzanA.zzc("There is no virtual display", new Object[0]);
                    zzb.this.zzb((zzb) new zzc(Status.zzazz));
                    return;
                }
                Display display = zzzf.this.zzaxg.getDisplay();
                if (display != null) {
                    zzb.this.zzb((zzb) new zzc(display));
                    return;
                }
                zzzf.zzanA.zzc("Virtual display no longer has a display", new Object[0]);
                zzb.this.zzb((zzb) new zzc(Status.zzazz));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: com.google.android.gms.internal.zzzf$zzb$zzb  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public final class BinderC0407zzb extends zza {
            protected BinderC0407zzb() {
                super(zzzf.this);
            }

            @Override // com.google.android.gms.internal.zzzf.zza, com.google.android.gms.internal.zzzh
            public void onDisconnected() throws RemoteException {
                zzzf.zzanA.zzb("onDisconnected", new Object[0]);
                zzzf.this.zzuQ();
                zzb.this.zzb((zzb) new zzc(Status.zzazx));
            }

            @Override // com.google.android.gms.internal.zzzf.zza, com.google.android.gms.internal.zzzh
            public void onError(int i) throws RemoteException {
                zzzf.zzanA.zzb("onError: %d", Integer.valueOf(i));
                zzzf.this.zzuQ();
                zzb.this.zzb((zzb) new zzc(Status.zzazz));
            }
        }

        public zzb(GoogleApiClient googleApiClient) {
            super(zzzf.this.zzaxf, googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzb) ((CastRemoteDisplay.CastRemoteDisplaySessionResult) obj));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzzg zzzgVar) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzu */
        public CastRemoteDisplay.CastRemoteDisplaySessionResult zzc(Status status) {
            return new zzc(status);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class zzc implements CastRemoteDisplay.CastRemoteDisplaySessionResult {
        private final Display zzOq;
        private final Status zzair;

        public zzc(Display display) {
            this.zzair = Status.zzazx;
            this.zzOq = display;
        }

        public zzc(Status status) {
            this.zzair = status;
            this.zzOq = null;
        }

        @Override // com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult
        public Display getPresentationDisplay() {
            return this.zzOq;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    public zzzf(Api api) {
        this.zzaxf = api;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(19)
    public void zzuQ() {
        if (this.zzaxg != null) {
            if (this.zzaxg.getDisplay() != null) {
                zzanA.zzb(new StringBuilder(38).append("releasing virtual display: ").append(this.zzaxg.getDisplay().getDisplayId()).toString(), new Object[0]);
            }
            this.zzaxg.release();
            this.zzaxg = null;
        }
    }

    @Override // com.google.android.gms.cast.CastRemoteDisplayApi
    public PendingResult<CastRemoteDisplay.CastRemoteDisplaySessionResult> startRemoteDisplay(GoogleApiClient googleApiClient, final String str) {
        zzanA.zzb("startRemoteDisplay", new Object[0]);
        return googleApiClient.zzb((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.internal.zzzf.2
            @Override // com.google.android.gms.internal.zzzf.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzzg zzzgVar) throws RemoteException {
                zzzgVar.zza(new zzb.zza(zzzgVar), zzzf.this.zzaxh, str);
            }
        });
    }

    @Override // com.google.android.gms.cast.CastRemoteDisplayApi
    public PendingResult<CastRemoteDisplay.CastRemoteDisplaySessionResult> stopRemoteDisplay(GoogleApiClient googleApiClient) {
        zzanA.zzb("stopRemoteDisplay", new Object[0]);
        return googleApiClient.zzb((GoogleApiClient) new zzb(this, googleApiClient) { // from class: com.google.android.gms.internal.zzzf.3
            @Override // com.google.android.gms.internal.zzzf.zzb, com.google.android.gms.internal.zzaad.zza
            public void zza(zzzg zzzgVar) throws RemoteException {
                zzzgVar.zza((zzzh) new zzb.BinderC0407zzb());
            }
        });
    }
}
