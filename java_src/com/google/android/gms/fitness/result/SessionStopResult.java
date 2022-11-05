package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.fitness.data.Session;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class SessionStopResult extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<SessionStopResult> CREATOR = new zzs();
    private final List<Session> zzaVx;
    private final int zzaiI;
    private final Status zzair;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionStopResult(int i, Status status, List<Session> list) {
        this.zzaiI = i;
        this.zzair = status;
        this.zzaVx = Collections.unmodifiableList(list);
    }

    public SessionStopResult(Status status, List<Session> list) {
        this.zzaiI = 3;
        this.zzair = status;
        this.zzaVx = Collections.unmodifiableList(list);
    }

    public static SessionStopResult zzaj(Status status) {
        return new SessionStopResult(status, Collections.emptyList());
    }

    private boolean zzb(SessionStopResult sessionStopResult) {
        return this.zzair.equals(sessionStopResult.zzair) && zzaa.equal(this.zzaVx, sessionStopResult.zzaVx);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof SessionStopResult) && zzb((SessionStopResult) obj));
    }

    public List<Session> getSessions() {
        return this.zzaVx;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzair, this.zzaVx);
    }

    public String toString() {
        return zzaa.zzv(this).zzg("status", this.zzair).zzg("sessions", this.zzaVx).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzs.zza(this, parcel, i);
    }
}
