package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.Goal;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class GoalsResult extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<GoalsResult> CREATOR = new zzn();
    private final int versionCode;
    private final List<Goal> zzaXa;
    private final Status zzahw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoalsResult(int i, Status status, List<Goal> list) {
        this.versionCode = i;
        this.zzahw = status;
        this.zzaXa = list;
    }

    public GoalsResult(Status status, List<Goal> list) {
        this(1, status, list);
    }

    public static GoalsResult zzag(Status status) {
        return new GoalsResult(status, Collections.emptyList());
    }

    public List<Goal> getGoals() {
        return this.zzaXa;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzahw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzn.zza(this, parcel, i);
    }
}
