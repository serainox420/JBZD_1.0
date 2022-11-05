package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzatt;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public class zzaul extends zzauh {
    private final zza zzbvA;
    private zzatt zzbvB;
    private Boolean zzbvC;
    private final zzatk zzbvD;
    private final zzauo zzbvE;
    private final List<Runnable> zzbvF;
    private final zzatk zzbvG;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public class zza implements ServiceConnection, zzf.zzb, zzf.zzc {
        private volatile boolean zzbvO;
        private volatile zzatw zzbvP;

        protected zza() {
        }

        @Override // com.google.android.gms.common.internal.zzf.zzb
        public void onConnected(Bundle bundle) {
            com.google.android.gms.common.internal.zzac.zzdj("MeasurementServiceConnection.onConnected");
            synchronized (this) {
                try {
                    final zzatt zzxD = this.zzbvP.zzxD();
                    this.zzbvP = null;
                    zzaul.this.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzaul.zza.3
                        @Override // java.lang.Runnable
                        public void run() {
                            synchronized (zza.this) {
                                zza.this.zzbvO = false;
                                if (!zzaul.this.isConnected()) {
                                    zzaul.this.zzKl().zzMd().log("Connected to remote service");
                                    zzaul.this.zza(zzxD);
                                }
                            }
                        }
                    });
                } catch (DeadObjectException | IllegalStateException e) {
                    this.zzbvP = null;
                    this.zzbvO = false;
                }
            }
        }

        @Override // com.google.android.gms.common.internal.zzf.zzc
        public void onConnectionFailed(ConnectionResult connectionResult) {
            com.google.android.gms.common.internal.zzac.zzdj("MeasurementServiceConnection.onConnectionFailed");
            zzatx zzMu = zzaul.this.zzbqc.zzMu();
            if (zzMu != null) {
                zzMu.zzMa().zzj("Service connection failed", connectionResult);
            }
            synchronized (this) {
                this.zzbvO = false;
                this.zzbvP = null;
            }
        }

        @Override // com.google.android.gms.common.internal.zzf.zzb
        public void onConnectionSuspended(int i) {
            com.google.android.gms.common.internal.zzac.zzdj("MeasurementServiceConnection.onConnectionSuspended");
            zzaul.this.zzKl().zzMd().log("Service connection suspended");
            zzaul.this.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzaul.zza.4
                @Override // java.lang.Runnable
                public void run() {
                    zzaul zzaulVar = zzaul.this;
                    Context context = zzaul.this.getContext();
                    zzaul.this.zzKn().zzLg();
                    zzaulVar.onServiceDisconnected(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
                }
            });
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.google.android.gms.common.internal.zzac.zzdj("MeasurementServiceConnection.onServiceConnected");
            synchronized (this) {
                if (iBinder == null) {
                    this.zzbvO = false;
                    zzaul.this.zzKl().zzLY().log("Service connected with null binder");
                    return;
                }
                final zzatt zzattVar = null;
                try {
                    String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                    if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                        zzattVar = zzatt.zza.zzes(iBinder);
                        zzaul.this.zzKl().zzMe().log("Bound to IMeasurementService interface");
                    } else {
                        zzaul.this.zzKl().zzLY().zzj("Got binder with a wrong descriptor", interfaceDescriptor);
                    }
                } catch (RemoteException e) {
                    zzaul.this.zzKl().zzLY().log("Service connect failed to get IMeasurementService");
                }
                if (zzattVar == null) {
                    this.zzbvO = false;
                    try {
                        com.google.android.gms.common.stats.zza.zzyJ().zza(zzaul.this.getContext(), zzaul.this.zzbvA);
                    } catch (IllegalArgumentException e2) {
                    }
                } else {
                    zzaul.this.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzaul.zza.1
                        @Override // java.lang.Runnable
                        public void run() {
                            synchronized (zza.this) {
                                zza.this.zzbvO = false;
                                if (!zzaul.this.isConnected()) {
                                    zzaul.this.zzKl().zzMe().log("Connected to service");
                                    zzaul.this.zza(zzattVar);
                                }
                            }
                        }
                    });
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(final ComponentName componentName) {
            com.google.android.gms.common.internal.zzac.zzdj("MeasurementServiceConnection.onServiceDisconnected");
            zzaul.this.zzKl().zzMd().log("Service disconnected");
            zzaul.this.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzaul.zza.2
                @Override // java.lang.Runnable
                public void run() {
                    zzaul.this.onServiceDisconnected(componentName);
                }
            });
        }

        public void zzNb() {
            zzaul.this.zzmR();
            Context context = zzaul.this.getContext();
            synchronized (this) {
                if (this.zzbvO) {
                    zzaul.this.zzKl().zzMe().log("Connection attempt already in progress");
                } else if (this.zzbvP != null) {
                    zzaul.this.zzKl().zzMe().log("Already awaiting connection attempt");
                } else {
                    this.zzbvP = new zzatw(context, Looper.getMainLooper(), this, this);
                    zzaul.this.zzKl().zzMe().log("Connecting to remote service");
                    this.zzbvO = true;
                    this.zzbvP.zzxz();
                }
            }
        }

        public void zzz(Intent intent) {
            zzaul.this.zzmR();
            Context context = zzaul.this.getContext();
            com.google.android.gms.common.stats.zza zzyJ = com.google.android.gms.common.stats.zza.zzyJ();
            synchronized (this) {
                if (this.zzbvO) {
                    zzaul.this.zzKl().zzMe().log("Connection attempt already in progress");
                    return;
                }
                this.zzbvO = true;
                zzyJ.zza(context, intent, zzaul.this.zzbvA, 129);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzaul(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzbvF = new ArrayList();
        this.zzbvE = new zzauo(zzaueVar.zznR());
        this.zzbvA = new zza();
        this.zzbvD = new zzatk(zzaueVar) { // from class: com.google.android.gms.internal.zzaul.1
            @Override // com.google.android.gms.internal.zzatk
            public void run() {
                zzaul.this.zzop();
            }
        };
        this.zzbvG = new zzatk(zzaueVar) { // from class: com.google.android.gms.internal.zzaul.5
            @Override // com.google.android.gms.internal.zzatk
            public void run() {
                zzaul.this.zzKl().zzMa().log("Tasks have been queued for a long time");
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onServiceDisconnected(ComponentName componentName) {
        zzmR();
        if (this.zzbvB != null) {
            this.zzbvB = null;
            zzKl().zzMe().zzj("Disconnected from device MeasurementService", componentName);
            zzMZ();
        }
    }

    private boolean zzMX() {
        zzKn().zzLg();
        List<ResolveInfo> queryIntentServices = getContext().getPackageManager().queryIntentServices(new Intent().setClassName(getContext(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        return queryIntentServices != null && queryIntentServices.size() > 0;
    }

    private void zzMZ() {
        zzmR();
        zzoD();
    }

    private void zzNa() {
        zzmR();
        zzKl().zzMe().zzj("Processing queued up service tasks", Integer.valueOf(this.zzbvF.size()));
        for (Runnable runnable : this.zzbvF) {
            zzKk().zzm(runnable);
        }
        this.zzbvF.clear();
        this.zzbvG.cancel();
    }

    private void zzo(Runnable runnable) throws IllegalStateException {
        zzmR();
        if (isConnected()) {
            runnable.run();
        } else if (this.zzbvF.size() >= zzKn().zzLm()) {
            zzKl().zzLY().log("Discarding data. Max runnable queue size reached");
        } else {
            this.zzbvF.add(runnable);
            this.zzbvG.zzy(60000L);
            zzoD();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzoo() {
        zzmR();
        this.zzbvE.start();
        this.zzbvD.zzy(zzKn().zzpq());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzop() {
        zzmR();
        if (!isConnected()) {
            return;
        }
        zzKl().zzMe().log("Inactivity, disconnecting from the service");
        disconnect();
    }

    public void disconnect() {
        zzmR();
        zzob();
        try {
            com.google.android.gms.common.stats.zza.zzyJ().zza(getContext(), this.zzbvA);
        } catch (IllegalArgumentException e) {
        } catch (IllegalStateException e2) {
        }
        this.zzbvB = null;
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public boolean isConnected() {
        zzmR();
        zzob();
        return this.zzbvB != null;
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzMR() {
        zzmR();
        zzob();
        zzo(new Runnable() { // from class: com.google.android.gms.internal.zzaul.3
            @Override // java.lang.Runnable
            public void run() {
                zzatt zzattVar = zzaul.this.zzbvB;
                if (zzattVar == null) {
                    zzaul.this.zzKl().zzLY().log("Discarding data. Failed to send app launch");
                    return;
                }
                try {
                    zzattVar.zza(zzaul.this.zzKb().zzfD(zzaul.this.zzKl().zzMf()));
                    zzaul.this.zza(zzattVar, (com.google.android.gms.common.internal.safeparcel.zza) null);
                    zzaul.this.zzoo();
                } catch (RemoteException e) {
                    zzaul.this.zzKl().zzLY().zzj("Failed to send app launch to the service", e);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzMW() {
        zzmR();
        zzob();
        zzo(new Runnable() { // from class: com.google.android.gms.internal.zzaul.6
            @Override // java.lang.Runnable
            public void run() {
                zzatt zzattVar = zzaul.this.zzbvB;
                if (zzattVar == null) {
                    zzaul.this.zzKl().zzLY().log("Failed to send measurementEnabled to service");
                    return;
                }
                try {
                    zzattVar.zzb(zzaul.this.zzKb().zzfD(zzaul.this.zzKl().zzMf()));
                    zzaul.this.zzoo();
                } catch (RemoteException e) {
                    zzaul.this.zzKl().zzLY().zzj("Failed to send measurementEnabled to the service", e);
                }
            }
        });
    }

    protected boolean zzMY() {
        zzmR();
        zzob();
        zzKn().zzLg();
        zzKl().zzMe().log("Checking service availability");
        switch (com.google.android.gms.common.zze.zzuY().isGooglePlayServicesAvailable(getContext())) {
            case 0:
                zzKl().zzMe().log("Service available");
                return true;
            case 1:
                zzKl().zzMe().log("Service missing");
                return false;
            case 2:
                zzKl().zzMd().log("Service container out of date");
                return true;
            case 3:
                zzKl().zzMa().log("Service disabled");
                return false;
            case 9:
                zzKl().zzMa().log("Service invalid");
                return false;
            case 18:
                zzKl().zzMa().log("Service updating");
                return true;
            default:
                return false;
        }
    }

    protected void zza(zzatt zzattVar) {
        zzmR();
        com.google.android.gms.common.internal.zzac.zzw(zzattVar);
        this.zzbvB = zzattVar;
        zzoo();
        zzNa();
    }

    void zza(zzatt zzattVar, com.google.android.gms.common.internal.safeparcel.zza zzaVar) {
        zzmR();
        zzJW();
        zzob();
        int i = Build.VERSION.SDK_INT;
        zzKn().zzLg();
        ArrayList<com.google.android.gms.common.internal.safeparcel.zza> arrayList = new ArrayList();
        zzKn().zzLp();
        int i2 = 100;
        for (int i3 = 0; i3 < 1001 && i2 == 100; i3++) {
            List<com.google.android.gms.common.internal.safeparcel.zza> zzlD = zzKf().zzlD(100);
            if (zzlD != null) {
                arrayList.addAll(zzlD);
                i2 = zzlD.size();
            } else {
                i2 = 0;
            }
            if (zzaVar != null && i2 < 100) {
                arrayList.add(zzaVar);
            }
            for (com.google.android.gms.common.internal.safeparcel.zza zzaVar2 : arrayList) {
                if (zzaVar2 instanceof zzatq) {
                    try {
                        zzattVar.zza((zzatq) zzaVar2, zzKb().zzfD(zzKl().zzMf()));
                    } catch (RemoteException e) {
                        zzKl().zzLY().zzj("Failed to send event to the service", e);
                    }
                } else if (zzaVar2 instanceof zzauq) {
                    try {
                        zzattVar.zza((zzauq) zzaVar2, zzKb().zzfD(zzKl().zzMf()));
                    } catch (RemoteException e2) {
                        zzKl().zzLY().zzj("Failed to send attribute to the service", e2);
                    }
                } else if (zzaVar2 instanceof zzatg) {
                    try {
                        zzattVar.zza((zzatg) zzaVar2, zzKb().zzfD(zzKl().zzMf()));
                    } catch (RemoteException e3) {
                        zzKl().zzLY().zzj("Failed to send conditional property to the service", e3);
                    }
                } else {
                    zzKl().zzLY().log("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(final AppMeasurement.zzf zzfVar) {
        zzmR();
        zzob();
        zzo(new Runnable() { // from class: com.google.android.gms.internal.zzaul.4
            @Override // java.lang.Runnable
            public void run() {
                zzatt zzattVar = zzaul.this.zzbvB;
                if (zzattVar == null) {
                    zzaul.this.zzKl().zzLY().log("Failed to send current screen to service");
                    return;
                }
                try {
                    if (zzfVar == null) {
                        zzattVar.zza(0L, (String) null, (String) null, zzaul.this.getContext().getPackageName());
                    } else {
                        zzattVar.zza(zzfVar.zzbqh, zzfVar.zzbqf, zzfVar.zzbqg, zzaul.this.getContext().getPackageName());
                    }
                    zzaul.this.zzoo();
                } catch (RemoteException e) {
                    zzaul.this.zzKl().zzLY().zzj("Failed to send current screen to the service", e);
                }
            }
        });
    }

    public void zza(final AtomicReference<String> atomicReference) {
        zzmR();
        zzob();
        zzo(new Runnable() { // from class: com.google.android.gms.internal.zzaul.2
            @Override // java.lang.Runnable
            public void run() {
                zzatt zzattVar;
                synchronized (atomicReference) {
                    try {
                        zzattVar = zzaul.this.zzbvB;
                    } catch (RemoteException e) {
                        zzaul.this.zzKl().zzLY().zzj("Failed to get app instance id", e);
                        atomicReference.notify();
                    }
                    if (zzattVar == null) {
                        zzaul.this.zzKl().zzLY().log("Failed to get app instance id");
                        atomicReference.notify();
                        return;
                    }
                    atomicReference.set(zzattVar.zzc(zzaul.this.zzKb().zzfD(null)));
                    zzaul.this.zzoo();
                    atomicReference.notify();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(final AtomicReference<List<zzatg>> atomicReference, final String str, final String str2, final String str3) {
        zzmR();
        zzob();
        zzo(new Runnable() { // from class: com.google.android.gms.internal.zzaul.9
            @Override // java.lang.Runnable
            public void run() {
                zzatt zzattVar;
                synchronized (atomicReference) {
                    try {
                        zzattVar = zzaul.this.zzbvB;
                    } catch (RemoteException e) {
                        zzaul.this.zzKl().zzLY().zzd("Failed to get conditional properties", zzatx.zzfE(str), str2, e);
                        atomicReference.set(Collections.emptyList());
                        atomicReference.notify();
                    }
                    if (zzattVar == null) {
                        zzaul.this.zzKl().zzLY().zzd("Failed to get conditional properties", zzatx.zzfE(str), str2, str3);
                        atomicReference.set(Collections.emptyList());
                        atomicReference.notify();
                        return;
                    }
                    if (TextUtils.isEmpty(str)) {
                        atomicReference.set(zzattVar.zza(str2, str3, zzaul.this.zzKb().zzfD(zzaul.this.zzKl().zzMf())));
                    } else {
                        atomicReference.set(zzattVar.zzn(str, str2, str3));
                    }
                    zzaul.this.zzoo();
                    atomicReference.notify();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(final AtomicReference<List<zzauq>> atomicReference, final String str, final String str2, final String str3, final boolean z) {
        zzmR();
        zzob();
        zzo(new Runnable() { // from class: com.google.android.gms.internal.zzaul.10
            @Override // java.lang.Runnable
            public void run() {
                zzatt zzattVar;
                synchronized (atomicReference) {
                    try {
                        zzattVar = zzaul.this.zzbvB;
                    } catch (RemoteException e) {
                        zzaul.this.zzKl().zzLY().zzd("Failed to get user properties", zzatx.zzfE(str), str2, e);
                        atomicReference.set(Collections.emptyList());
                        atomicReference.notify();
                    }
                    if (zzattVar == null) {
                        zzaul.this.zzKl().zzLY().zzd("Failed to get user properties", zzatx.zzfE(str), str2, str3);
                        atomicReference.set(Collections.emptyList());
                        atomicReference.notify();
                        return;
                    }
                    if (TextUtils.isEmpty(str)) {
                        atomicReference.set(zzattVar.zza(str2, str3, z, zzaul.this.zzKb().zzfD(zzaul.this.zzKl().zzMf())));
                    } else {
                        atomicReference.set(zzattVar.zza(str, str2, str3, z));
                    }
                    zzaul.this.zzoo();
                    atomicReference.notify();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(final AtomicReference<List<zzauq>> atomicReference, final boolean z) {
        zzmR();
        zzob();
        zzo(new Runnable() { // from class: com.google.android.gms.internal.zzaul.12
            @Override // java.lang.Runnable
            public void run() {
                zzatt zzattVar;
                synchronized (atomicReference) {
                    try {
                        zzattVar = zzaul.this.zzbvB;
                    } catch (RemoteException e) {
                        zzaul.this.zzKl().zzLY().zzj("Failed to get user properties", e);
                        atomicReference.notify();
                    }
                    if (zzattVar == null) {
                        zzaul.this.zzKl().zzLY().log("Failed to get user properties");
                        atomicReference.notify();
                        return;
                    }
                    atomicReference.set(zzattVar.zza(zzaul.this.zzKb().zzfD(null), z));
                    zzaul.this.zzoo();
                    atomicReference.notify();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzb(final zzauq zzauqVar) {
        zzmR();
        zzob();
        int i = Build.VERSION.SDK_INT;
        zzKn().zzLg();
        final boolean z = zzKf().zza(zzauqVar);
        zzo(new Runnable() { // from class: com.google.android.gms.internal.zzaul.11
            @Override // java.lang.Runnable
            public void run() {
                zzatt zzattVar = zzaul.this.zzbvB;
                if (zzattVar == null) {
                    zzaul.this.zzKl().zzLY().log("Discarding data. Failed to set user attribute");
                    return;
                }
                zzaul.this.zza(zzattVar, z ? null : zzauqVar);
                zzaul.this.zzoo();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzc(final zzatq zzatqVar, final String str) {
        com.google.android.gms.common.internal.zzac.zzw(zzatqVar);
        zzmR();
        zzob();
        int i = Build.VERSION.SDK_INT;
        zzKn().zzLg();
        final boolean z = zzKf().zza(zzatqVar);
        zzo(new Runnable() { // from class: com.google.android.gms.internal.zzaul.7
            @Override // java.lang.Runnable
            public void run() {
                zzatt zzattVar = zzaul.this.zzbvB;
                if (zzattVar == null) {
                    zzaul.this.zzKl().zzLY().log("Discarding data. Failed to send event to service");
                    return;
                }
                if (r2) {
                    zzaul.this.zza(zzattVar, z ? null : zzatqVar);
                } else {
                    try {
                        if (TextUtils.isEmpty(str)) {
                            zzattVar.zza(zzatqVar, zzaul.this.zzKb().zzfD(zzaul.this.zzKl().zzMf()));
                        } else {
                            zzattVar.zza(zzatqVar, str, zzaul.this.zzKl().zzMf());
                        }
                    } catch (RemoteException e) {
                        zzaul.this.zzKl().zzLY().zzj("Failed to send event to the service", e);
                    }
                }
                zzaul.this.zzoo();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzf(final zzatg zzatgVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzatgVar);
        zzmR();
        zzob();
        zzKn().zzLg();
        final boolean z = zzKf().zzc(zzatgVar);
        final zzatg zzatgVar2 = new zzatg(zzatgVar);
        zzo(new Runnable() { // from class: com.google.android.gms.internal.zzaul.8
            @Override // java.lang.Runnable
            public void run() {
                zzatt zzattVar = zzaul.this.zzbvB;
                if (zzattVar == null) {
                    zzaul.this.zzKl().zzLY().log("Discarding data. Failed to send conditional user property to service");
                    return;
                }
                if (r2) {
                    zzaul.this.zza(zzattVar, z ? null : zzatgVar2);
                } else {
                    try {
                        if (TextUtils.isEmpty(zzatgVar.packageName)) {
                            zzattVar.zza(zzatgVar2, zzaul.this.zzKb().zzfD(zzaul.this.zzKl().zzMf()));
                        } else {
                            zzattVar.zzb(zzatgVar2);
                        }
                    } catch (RemoteException e) {
                        zzaul.this.zzKl().zzLY().zzj("Failed to send conditional user property to the service", e);
                    }
                }
                zzaul.this.zzoo();
            }
        });
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzoD() {
        zzmR();
        zzob();
        if (isConnected()) {
            return;
        }
        if (this.zzbvC == null) {
            this.zzbvC = zzKm().zzMm();
            if (this.zzbvC == null) {
                zzKl().zzMe().log("State of service unknown");
                this.zzbvC = Boolean.valueOf(zzMY());
                zzKm().zzaK(this.zzbvC.booleanValue());
            }
        }
        if (this.zzbvC.booleanValue()) {
            zzKl().zzMe().log("Using measurement service");
            this.zzbvA.zzNb();
        } else if (!zzMX()) {
            zzKl().zzLY().log("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
        } else {
            zzKl().zzMe().log("Using local app measurement service");
            Intent intent = new Intent("com.google.android.gms.measurement.START");
            Context context = getContext();
            zzKn().zzLg();
            intent.setComponent(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
            this.zzbvA.zzz(intent);
        }
    }
}
