package com.google.android.gms.fitness.service;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.result.DataSourcesResult;
import com.google.android.gms.internal.zzaon;
import com.google.android.gms.internal.zzapf;
import com.google.android.gms.internal.zzapv;
import com.google.android.gms.internal.zzapx;
import com.google.android.gms.internal.zzapz;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class FitnessSensorService extends Service {
    public static final String SERVICE_INTERFACE = "com.google.android.gms.fitness.service.FitnessSensorService";
    private zza zzaXg;

    /* loaded from: classes2.dex */
    private static class zza extends zzapz.zza {
        private final FitnessSensorService zzaXh;

        private zza(FitnessSensorService fitnessSensorService) {
            this.zzaXh = fitnessSensorService;
        }

        @Override // com.google.android.gms.internal.zzapz
        public void zza(FitnessSensorServiceRequest fitnessSensorServiceRequest, zzapf zzapfVar) throws RemoteException {
            this.zzaXh.zzDB();
            if (this.zzaXh.onRegister(fitnessSensorServiceRequest)) {
                zzapfVar.zzp(Status.zzazx);
            } else {
                zzapfVar.zzp(new Status(13));
            }
        }

        @Override // com.google.android.gms.internal.zzapz
        public void zza(zzapv zzapvVar, zzaon zzaonVar) throws RemoteException {
            this.zzaXh.zzDB();
            zzaonVar.zza(new DataSourcesResult(this.zzaXh.onFindDataSources(zzapvVar.getDataTypes()), Status.zzazx));
        }

        @Override // com.google.android.gms.internal.zzapz
        public void zza(zzapx zzapxVar, zzapf zzapfVar) throws RemoteException {
            this.zzaXh.zzDB();
            if (this.zzaXh.onUnregister(zzapxVar.getDataSource())) {
                zzapfVar.zzp(Status.zzazx);
            } else {
                zzapfVar.zzp(new Status(13));
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (SERVICE_INTERFACE.equals(intent.getAction())) {
            if (Log.isLoggable("FitnessSensorService", 3)) {
                String valueOf = String.valueOf(intent);
                String valueOf2 = String.valueOf(getClass().getName());
                Log.d("FitnessSensorService", new StringBuilder(String.valueOf(valueOf).length() + 20 + String.valueOf(valueOf2).length()).append("Intent ").append(valueOf).append(" received by ").append(valueOf2).toString());
            }
            return this.zzaXg.asBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.zzaXg = new zza();
    }

    public abstract List<DataSource> onFindDataSources(List<DataType> list);

    public abstract boolean onRegister(FitnessSensorServiceRequest fitnessSensorServiceRequest);

    public abstract boolean onUnregister(DataSource dataSource);

    @TargetApi(19)
    protected void zzDB() throws SecurityException {
        int callingUid = Binder.getCallingUid();
        if (zzt.zzzl()) {
            ((AppOpsManager) getSystemService("appops")).checkPackage(callingUid, "com.google.android.gms");
            return;
        }
        String[] packagesForUid = getPackageManager().getPackagesForUid(callingUid);
        if (packagesForUid != null) {
            for (String str : packagesForUid) {
                if (str.equals("com.google.android.gms")) {
                    return;
                }
            }
        }
        throw new SecurityException("Unauthorized caller");
    }
}
