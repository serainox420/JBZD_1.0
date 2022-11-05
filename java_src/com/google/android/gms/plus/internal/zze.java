package com.google.android.gms.plus.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.common.internal.zzs;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzazf;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.zzd;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
/* loaded from: classes2.dex */
public class zze extends zzl<zzd> {
    private Person zzbBT;
    private final zzh zzbBU;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zza implements People.LoadPeopleResult {
        private final Status zzair;
        private final String zzbBV;
        private final PersonBuffer zzbBW;

        public zza(Status status, DataHolder dataHolder, String str) {
            this.zzair = status;
            this.zzbBV = str;
            this.zzbBW = dataHolder != null ? new PersonBuffer(dataHolder) : null;
        }

        @Override // com.google.android.gms.plus.People.LoadPeopleResult
        public String getNextPageToken() {
            return this.zzbBV;
        }

        @Override // com.google.android.gms.plus.People.LoadPeopleResult
        public PersonBuffer getPersonBuffer() {
            return this.zzbBW;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            if (this.zzbBW != null) {
                this.zzbBW.release();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzb extends com.google.android.gms.plus.internal.zza {
        private final zzaad.zzb<People.LoadPeopleResult> zzbkL;

        public zzb(zzaad.zzb<People.LoadPeopleResult> zzbVar) {
            this.zzbkL = zzbVar;
        }

        @Override // com.google.android.gms.plus.internal.zza, com.google.android.gms.plus.internal.zzb
        public void zza(DataHolder dataHolder, String str) {
            Status status = new Status(dataHolder.getStatusCode(), null, dataHolder.zzxf() != null ? (PendingIntent) dataHolder.zzxf().getParcelable("pendingIntent") : null);
            if (!status.isSuccess() && dataHolder != null) {
                if (!dataHolder.isClosed()) {
                    dataHolder.close();
                }
                dataHolder = null;
            }
            this.zzbkL.setResult(new zza(status, dataHolder, str));
        }
    }

    /* loaded from: classes2.dex */
    static final class zzc extends com.google.android.gms.plus.internal.zza {
        private final zzaad.zzb<Status> zzbkL;

        public zzc(zzaad.zzb<Status> zzbVar) {
            this.zzbkL = zzbVar;
        }

        @Override // com.google.android.gms.plus.internal.zza, com.google.android.gms.plus.internal.zzb
        public void zzk(int i, Bundle bundle) {
            this.zzbkL.setResult(new Status(i, null, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
        }
    }

    public zze(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, zzh zzhVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 2, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzbBU = zzhVar;
    }

    public static boolean zze(Set<Scope> set) {
        if (set == null || set.isEmpty()) {
            return false;
        }
        return set.size() != 1 || !set.contains(new Scope("plus_one_placeholder_scope"));
    }

    public String getAccountName() {
        zzxC();
        try {
            return ((zzd) zzxD()).getAccountName();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public void zzOW() {
        zzxC();
        try {
            this.zzbBT = null;
            ((zzd) zzxD()).zzOW();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public Person zzOY() {
        zzxC();
        return this.zzbBT;
    }

    public zzs zza(zzaad.zzb<People.LoadPeopleResult> zzbVar, int i, String str) {
        zzxC();
        zzb zzbVar2 = new zzb(zzbVar);
        try {
            return ((zzd) zzxD()).zza(zzbVar2, 1, i, -1, str);
        } catch (RemoteException e) {
            zzbVar2.zza(DataHolder.zzcJ(8), (String) null);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (i == 0 && bundle != null && bundle.containsKey("loaded_person")) {
            this.zzbBT = zzazf.zzG(bundle.getByteArray("loaded_person"));
        }
        super.zza(i, iBinder, bundle, i2);
    }

    public void zza(zzaad.zzb<People.LoadPeopleResult> zzbVar, Collection<String> collection) {
        zzxC();
        zzb zzbVar2 = new zzb(zzbVar);
        try {
            ((zzd) zzxD()).zza(zzbVar2, new ArrayList(collection));
        } catch (RemoteException e) {
            zzbVar2.zza(DataHolder.zzcJ(8), (String) null);
        }
    }

    public void zzd(zzaad.zzb<People.LoadPeopleResult> zzbVar, String[] strArr) {
        zza(zzbVar, Arrays.asList(strArr));
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.plus.internal.IPlusService";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzeW */
    public zzd zzh(IBinder iBinder) {
        return zzd.zza.zzeV(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.plus.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public Bundle zzqL() {
        Bundle zzPi = this.zzbBU.zzPi();
        zzPi.putStringArray("request_visible_actions", this.zzbBU.zzPc());
        zzPi.putString("auth_package", this.zzbBU.zzPe());
        return zzPi;
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public boolean zzrd() {
        return zze(zzxW().zzc(Plus.API));
    }

    public zzs zzu(zzaad.zzb<People.LoadPeopleResult> zzbVar, String str) {
        return zza(zzbVar, 0, str);
    }

    public void zzu(zzaad.zzb<People.LoadPeopleResult> zzbVar) {
        zzxC();
        zzb zzbVar2 = new zzb(zzbVar);
        try {
            ((zzd) zzxD()).zza(zzbVar2, 2, 1, -1, null);
        } catch (RemoteException e) {
            zzbVar2.zza(DataHolder.zzcJ(8), (String) null);
        }
    }

    public void zzv(zzaad.zzb<Status> zzbVar) {
        zzxC();
        zzOW();
        zzc zzcVar = new zzc(zzbVar);
        try {
            ((zzd) zzxD()).zzb(zzcVar);
        } catch (RemoteException e) {
            zzcVar.zzk(8, null);
        }
    }
}
