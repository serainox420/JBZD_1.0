package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.zzs;
import com.google.android.gms.internal.zzapf;
import com.google.android.gms.internal.zzarw;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzav extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzav> CREATOR = new zzaw();
    private final PendingIntent mPendingIntent;
    private DataSource zzaTi;
    private DataType zzaTj;
    private final long zzaUo;
    private final int zzaUp;
    private final zzapf zzaVt;
    private com.google.android.gms.fitness.data.zzs zzaWo;
    int zzaWp;
    int zzaWq;
    private final long zzaWr;
    private final long zzaWs;
    private final List<LocationRequest> zzaWt;
    private final long zzaWu;
    private final List<zzarw> zzaWv;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzav(int i, DataSource dataSource, DataType dataType, IBinder iBinder, int i2, int i3, long j, long j2, PendingIntent pendingIntent, long j3, int i4, List<LocationRequest> list, long j4, IBinder iBinder2) {
        this.zzaiI = i;
        this.zzaTi = dataSource;
        this.zzaTj = dataType;
        this.zzaWo = iBinder == null ? null : zzs.zza.zzcg(iBinder);
        this.zzaUo = j == 0 ? i2 : j;
        this.zzaWs = j3;
        this.zzaWr = j2 == 0 ? i3 : j2;
        this.zzaWt = list;
        this.mPendingIntent = pendingIntent;
        this.zzaUp = i4;
        this.zzaWv = Collections.emptyList();
        this.zzaWu = j4;
        this.zzaVt = zzapf.zza.zzcJ(iBinder2);
    }

    public zzav(DataSource dataSource, DataType dataType, com.google.android.gms.fitness.data.zzs zzsVar, PendingIntent pendingIntent, long j, long j2, long j3, int i, List<LocationRequest> list, List<zzarw> list2, long j4, zzapf zzapfVar) {
        this.zzaiI = 6;
        this.zzaTi = dataSource;
        this.zzaTj = dataType;
        this.zzaWo = zzsVar;
        this.mPendingIntent = pendingIntent;
        this.zzaUo = j;
        this.zzaWs = j2;
        this.zzaWr = j3;
        this.zzaUp = i;
        this.zzaWt = list;
        this.zzaWv = list2;
        this.zzaWu = j4;
        this.zzaVt = zzapfVar;
    }

    public zzav(SensorRequest sensorRequest, com.google.android.gms.fitness.data.zzs zzsVar, PendingIntent pendingIntent, zzapf zzapfVar) {
        this(sensorRequest.getDataSource(), sensorRequest.getDataType(), zzsVar, pendingIntent, sensorRequest.getSamplingRate(TimeUnit.MICROSECONDS), sensorRequest.getFastestRate(TimeUnit.MICROSECONDS), sensorRequest.getMaxDeliveryLatency(TimeUnit.MICROSECONDS), sensorRequest.getAccuracyMode(), null, Collections.emptyList(), sensorRequest.zzDi(), zzapfVar);
    }

    private boolean zzb(zzav zzavVar) {
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaTi, zzavVar.zzaTi) && com.google.android.gms.common.internal.zzaa.equal(this.zzaTj, zzavVar.zzaTj) && this.zzaUo == zzavVar.zzaUo && this.zzaWs == zzavVar.zzaWs && this.zzaWr == zzavVar.zzaWr && this.zzaUp == zzavVar.zzaUp && com.google.android.gms.common.internal.zzaa.equal(this.zzaWt, zzavVar.zzaWt);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof zzav) && zzb((zzav) obj));
    }

    public int getAccuracyMode() {
        return this.zzaUp;
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVt == null) {
            return null;
        }
        return this.zzaVt.asBinder();
    }

    public DataSource getDataSource() {
        return this.zzaTi;
    }

    public DataType getDataType() {
        return this.zzaTj;
    }

    public PendingIntent getIntent() {
        return this.mPendingIntent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaTi, this.zzaTj, this.zzaWo, Long.valueOf(this.zzaUo), Long.valueOf(this.zzaWs), Long.valueOf(this.zzaWr), Integer.valueOf(this.zzaUp), this.zzaWt);
    }

    public String toString() {
        return String.format("SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}", this.zzaTj, this.zzaTi, Long.valueOf(this.zzaUo), Long.valueOf(this.zzaWs), Long.valueOf(this.zzaWr));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaw.zza(this, parcel, i);
    }

    public long zzCz() {
        return this.zzaUo;
    }

    public long zzDd() {
        return this.zzaWs;
    }

    public long zzDe() {
        return this.zzaWr;
    }

    public List<LocationRequest> zzDf() {
        return this.zzaWt;
    }

    public long zzDg() {
        return this.zzaWu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzDh() {
        if (this.zzaWo == null) {
            return null;
        }
        return this.zzaWo.asBinder();
    }
}
