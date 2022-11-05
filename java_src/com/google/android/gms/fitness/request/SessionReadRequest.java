package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzapd;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class SessionReadRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<SessionReadRequest> CREATOR = new zzba();
    private final String zzWD;
    private final List<DataType> zzaSs;
    private final long zzaSt;
    private final boolean zzaVH;
    private final List<DataSource> zzaVw;
    private final String zzaWD;
    private boolean zzaWE;
    private final List<String> zzaWF;
    private final zzapd zzaWG;
    private final long zzafe;
    private final int zzaiI;

    /* loaded from: classes2.dex */
    public static class Builder {
        private String zzWD;
        private String zzaWD;
        private long zzafe = 0;
        private long zzaSt = 0;
        private List<DataType> zzaSs = new ArrayList();
        private List<DataSource> zzaVw = new ArrayList();
        private boolean zzaWE = false;
        private boolean zzaVH = false;
        private List<String> zzaWF = new ArrayList();

        public SessionReadRequest build() {
            com.google.android.gms.common.internal.zzac.zzb(this.zzafe > 0, "Invalid start time: %s", Long.valueOf(this.zzafe));
            com.google.android.gms.common.internal.zzac.zzb(this.zzaSt > 0 && this.zzaSt > this.zzafe, "Invalid end time: %s", Long.valueOf(this.zzaSt));
            return new SessionReadRequest(this);
        }

        public Builder enableServerQueries() {
            this.zzaVH = true;
            return this;
        }

        public Builder excludePackage(String str) {
            com.google.android.gms.common.internal.zzac.zzb(str, "Attempting to use a null package name");
            if (!this.zzaWF.contains(str)) {
                this.zzaWF.add(str);
            }
            return this;
        }

        public Builder read(DataSource dataSource) {
            com.google.android.gms.common.internal.zzac.zzb(dataSource, "Attempting to add a null data source");
            if (!this.zzaVw.contains(dataSource)) {
                this.zzaVw.add(dataSource);
            }
            return this;
        }

        public Builder read(DataType dataType) {
            com.google.android.gms.common.internal.zzac.zzb(dataType, "Attempting to use a null data type");
            if (!this.zzaSs.contains(dataType)) {
                this.zzaSs.add(dataType);
            }
            return this;
        }

        public Builder readSessionsFromAllApps() {
            this.zzaWE = true;
            return this;
        }

        public Builder setSessionId(String str) {
            this.zzWD = str;
            return this;
        }

        public Builder setSessionName(String str) {
            this.zzaWD = str;
            return this;
        }

        public Builder setTimeInterval(long j, long j2, TimeUnit timeUnit) {
            this.zzafe = timeUnit.toMillis(j);
            this.zzaSt = timeUnit.toMillis(j2);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionReadRequest(int i, String str, String str2, long j, long j2, List<DataType> list, List<DataSource> list2, boolean z, boolean z2, List<String> list3, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaWD = str;
        this.zzWD = str2;
        this.zzafe = j;
        this.zzaSt = j2;
        this.zzaSs = list;
        this.zzaVw = list2;
        this.zzaWE = z;
        this.zzaVH = z2;
        this.zzaWF = list3;
        this.zzaWG = zzapd.zza.zzcH(iBinder);
    }

    private SessionReadRequest(Builder builder) {
        this(builder.zzaWD, builder.zzWD, builder.zzafe, builder.zzaSt, builder.zzaSs, builder.zzaVw, builder.zzaWE, builder.zzaVH, builder.zzaWF, null);
    }

    public SessionReadRequest(SessionReadRequest sessionReadRequest, zzapd zzapdVar) {
        this(sessionReadRequest.zzaWD, sessionReadRequest.zzWD, sessionReadRequest.zzafe, sessionReadRequest.zzaSt, sessionReadRequest.zzaSs, sessionReadRequest.zzaVw, sessionReadRequest.zzaWE, sessionReadRequest.zzaVH, sessionReadRequest.zzaWF, zzapdVar);
    }

    public SessionReadRequest(String str, String str2, long j, long j2, List<DataType> list, List<DataSource> list2, boolean z, boolean z2, List<String> list3, zzapd zzapdVar) {
        this(5, str, str2, j, j2, list, list2, z, z2, list3, zzapdVar == null ? null : zzapdVar.asBinder());
    }

    private boolean zzb(SessionReadRequest sessionReadRequest) {
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaWD, sessionReadRequest.zzaWD) && this.zzWD.equals(sessionReadRequest.zzWD) && this.zzafe == sessionReadRequest.zzafe && this.zzaSt == sessionReadRequest.zzaSt && com.google.android.gms.common.internal.zzaa.equal(this.zzaSs, sessionReadRequest.zzaSs) && com.google.android.gms.common.internal.zzaa.equal(this.zzaVw, sessionReadRequest.zzaVw) && this.zzaWE == sessionReadRequest.zzaWE && this.zzaWF.equals(sessionReadRequest.zzaWF) && this.zzaVH == sessionReadRequest.zzaVH;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof SessionReadRequest) && zzb((SessionReadRequest) obj));
    }

    public IBinder getCallbackBinder() {
        if (this.zzaWG == null) {
            return null;
        }
        return this.zzaWG.asBinder();
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

    public List<String> getExcludedPackages() {
        return this.zzaWF;
    }

    public String getSessionId() {
        return this.zzWD;
    }

    public String getSessionName() {
        return this.zzaWD;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzafe, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaWD, this.zzWD, Long.valueOf(this.zzafe), Long.valueOf(this.zzaSt));
    }

    public boolean includeSessionsFromAllApps() {
        return this.zzaWE;
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("sessionName", this.zzaWD).zzg("sessionId", this.zzWD).zzg("startTimeMillis", Long.valueOf(this.zzafe)).zzg("endTimeMillis", Long.valueOf(this.zzaSt)).zzg("dataTypes", this.zzaSs).zzg("dataSources", this.zzaVw).zzg("sessionsFromAllApps", Boolean.valueOf(this.zzaWE)).zzg("excludedPackages", this.zzaWF).zzg("useServer", Boolean.valueOf(this.zzaVH)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzba.zza(this, parcel, i);
    }

    public long zzAm() {
        return this.zzaSt;
    }

    public boolean zzCS() {
        return this.zzaVH;
    }

    public boolean zzDk() {
        return this.zzaWE;
    }

    public long zzqn() {
        return this.zzafe;
    }
}
