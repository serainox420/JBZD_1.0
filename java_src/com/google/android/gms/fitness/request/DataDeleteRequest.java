package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.internal.zzapf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class DataDeleteRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<DataDeleteRequest> CREATOR = new zzf();
    private final List<DataType> zzaSs;
    private final long zzaSt;
    private final zzapf zzaVt;
    private final List<DataSource> zzaVw;
    private final List<Session> zzaVx;
    private final boolean zzaVy;
    private final boolean zzaVz;
    private final long zzafe;
    private final int zzaiI;

    /* loaded from: classes2.dex */
    public static class Builder {
        private long zzaSt;
        private long zzafe;
        private List<DataSource> zzaVw = new ArrayList();
        private List<DataType> zzaSs = new ArrayList();
        private List<Session> zzaVx = new ArrayList();
        private boolean zzaVy = false;
        private boolean zzaVz = false;

        private void zzCQ() {
            if (this.zzaVx.isEmpty()) {
                return;
            }
            for (Session session : this.zzaVx) {
                com.google.android.gms.common.internal.zzac.zza(session.getStartTime(TimeUnit.MILLISECONDS) >= this.zzafe && session.getEndTime(TimeUnit.MILLISECONDS) <= this.zzaSt, "Session %s is outside the time interval [%d, %d]", session, Long.valueOf(this.zzafe), Long.valueOf(this.zzaSt));
            }
        }

        public Builder addDataSource(DataSource dataSource) {
            boolean z = true;
            com.google.android.gms.common.internal.zzac.zzb(!this.zzaVy, "All data is already marked for deletion.  addDataSource() cannot be combined with deleteAllData()");
            if (dataSource == null) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zzb(z, "Must specify a valid data source");
            if (!this.zzaVw.contains(dataSource)) {
                this.zzaVw.add(dataSource);
            }
            return this;
        }

        public Builder addDataType(DataType dataType) {
            boolean z = true;
            com.google.android.gms.common.internal.zzac.zzb(!this.zzaVy, "All data is already marked for deletion.  addDataType() cannot be combined with deleteAllData()");
            if (dataType == null) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zzb(z, "Must specify a valid data type");
            if (!this.zzaSs.contains(dataType)) {
                this.zzaSs.add(dataType);
            }
            return this;
        }

        public Builder addSession(Session session) {
            boolean z = true;
            com.google.android.gms.common.internal.zzac.zzb(!this.zzaVz, "All sessions already marked for deletion.  addSession() cannot be combined with deleteAllSessions()");
            com.google.android.gms.common.internal.zzac.zzb(session != null, "Must specify a valid session");
            if (session.getEndTime(TimeUnit.MILLISECONDS) <= 0) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zzb(z, "Cannot delete an ongoing session. Please stop the session prior to deleting it");
            this.zzaVx.add(session);
            return this;
        }

        public DataDeleteRequest build() {
            boolean z = false;
            com.google.android.gms.common.internal.zzac.zza(this.zzafe > 0 && this.zzaSt > this.zzafe, "Must specify a valid time interval");
            boolean z2 = this.zzaVy || !this.zzaVw.isEmpty() || !this.zzaSs.isEmpty();
            boolean z3 = this.zzaVz || !this.zzaVx.isEmpty();
            if (z2 || z3) {
                z = true;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "No data or session marked for deletion");
            zzCQ();
            return new DataDeleteRequest(this);
        }

        public Builder deleteAllData() {
            com.google.android.gms.common.internal.zzac.zzb(this.zzaSs.isEmpty(), "Specific data type already added for deletion. deleteAllData() will delete all data types and cannot be combined with addDataType()");
            com.google.android.gms.common.internal.zzac.zzb(this.zzaVw.isEmpty(), "Specific data source already added for deletion. deleteAllData() will delete all data sources and cannot be combined with addDataSource()");
            this.zzaVy = true;
            return this;
        }

        public Builder deleteAllSessions() {
            com.google.android.gms.common.internal.zzac.zzb(this.zzaVx.isEmpty(), "Specific session already added for deletion. deleteAllData() will delete all sessions and cannot be combined with addSession()");
            this.zzaVz = true;
            return this;
        }

        public Builder setTimeInterval(long j, long j2, TimeUnit timeUnit) {
            com.google.android.gms.common.internal.zzac.zzb(j > 0, "Invalid start time :%d", Long.valueOf(j));
            com.google.android.gms.common.internal.zzac.zzb(j2 > j, "Invalid end time :%d", Long.valueOf(j2));
            this.zzafe = timeUnit.toMillis(j);
            this.zzaSt = timeUnit.toMillis(j2);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataDeleteRequest(int i, long j, long j2, List<DataSource> list, List<DataType> list2, List<Session> list3, boolean z, boolean z2, IBinder iBinder) {
        this.zzaiI = i;
        this.zzafe = j;
        this.zzaSt = j2;
        this.zzaVw = Collections.unmodifiableList(list);
        this.zzaSs = Collections.unmodifiableList(list2);
        this.zzaVx = list3;
        this.zzaVy = z;
        this.zzaVz = z2;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    public DataDeleteRequest(long j, long j2, List<DataSource> list, List<DataType> list2, List<Session> list3, boolean z, boolean z2, zzapf zzapfVar) {
        this.zzaiI = 3;
        this.zzafe = j;
        this.zzaSt = j2;
        this.zzaVw = Collections.unmodifiableList(list);
        this.zzaSs = Collections.unmodifiableList(list2);
        this.zzaVx = list3;
        this.zzaVy = z;
        this.zzaVz = z2;
        this.zzaVt = zzapfVar;
    }

    private DataDeleteRequest(Builder builder) {
        this(builder.zzafe, builder.zzaSt, builder.zzaVw, builder.zzaSs, builder.zzaVx, builder.zzaVy, builder.zzaVz, null);
    }

    public DataDeleteRequest(DataDeleteRequest dataDeleteRequest, zzapf zzapfVar) {
        this(dataDeleteRequest.zzafe, dataDeleteRequest.zzaSt, dataDeleteRequest.zzaVw, dataDeleteRequest.zzaSs, dataDeleteRequest.zzaVx, dataDeleteRequest.zzaVy, dataDeleteRequest.zzaVz, zzapfVar);
    }

    private boolean zzb(DataDeleteRequest dataDeleteRequest) {
        return this.zzafe == dataDeleteRequest.zzafe && this.zzaSt == dataDeleteRequest.zzaSt && com.google.android.gms.common.internal.zzaa.equal(this.zzaVw, dataDeleteRequest.zzaVw) && com.google.android.gms.common.internal.zzaa.equal(this.zzaSs, dataDeleteRequest.zzaSs) && com.google.android.gms.common.internal.zzaa.equal(this.zzaVx, dataDeleteRequest.zzaVx) && this.zzaVy == dataDeleteRequest.zzaVy && this.zzaVz == dataDeleteRequest.zzaVz;
    }

    public boolean deleteAllData() {
        return this.zzaVy;
    }

    public boolean deleteAllSessions() {
        return this.zzaVz;
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof DataDeleteRequest) && zzb((DataDeleteRequest) obj));
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVt == null) {
            return null;
        }
        return this.zzaVt.asBinder();
    }

    public List<DataSource> getDataSources() {
        return this.zzaVw;
    }

    public List<DataType> getDataTypes() {
        return this.zzaSs;
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaSt, TimeUnit.MILLISECONDS);
    }

    public List<Session> getSessions() {
        return this.zzaVx;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzafe, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Long.valueOf(this.zzafe), Long.valueOf(this.zzaSt));
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("startTimeMillis", Long.valueOf(this.zzafe)).zzg("endTimeMillis", Long.valueOf(this.zzaSt)).zzg("dataSources", this.zzaVw).zzg("dateTypes", this.zzaSs).zzg("sessions", this.zzaVx).zzg("deleteAllData", Boolean.valueOf(this.zzaVy)).zzg("deleteAllSessions", Boolean.valueOf(this.zzaVz)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    public long zzAm() {
        return this.zzaSt;
    }

    public boolean zzCO() {
        return this.zzaVy;
    }

    public boolean zzCP() {
        return this.zzaVz;
    }

    public long zzqn() {
        return this.zzafe;
    }
}
