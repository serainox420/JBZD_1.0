package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.query.Filter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzr extends zza {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();
    private List<Filter> zzaQd;
    final zzx zzaQj;
    final List<FilterHolder> zzaQy;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzr(int i, zzx zzxVar, List<FilterHolder> list) {
        this.zzaiI = i;
        this.zzaQj = zzxVar;
        this.zzaQy = list;
    }

    public zzr(zzx zzxVar, Filter filter, Filter... filterArr) {
        this.zzaiI = 1;
        this.zzaQj = zzxVar;
        this.zzaQy = new ArrayList(filterArr.length + 1);
        this.zzaQy.add(new FilterHolder(filter));
        this.zzaQd = new ArrayList(filterArr.length + 1);
        this.zzaQd.add(filter);
        for (Filter filter2 : filterArr) {
            this.zzaQy.add(new FilterHolder(filter2));
            this.zzaQd.add(filter2);
        }
    }

    public zzr(zzx zzxVar, Iterable<Filter> iterable) {
        this.zzaiI = 1;
        this.zzaQj = zzxVar;
        this.zzaQd = new ArrayList();
        this.zzaQy = new ArrayList();
        for (Filter filter : iterable) {
            this.zzaQd.add(filter);
            this.zzaQy.add(new FilterHolder(filter));
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzs.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public <T> T zza(zzj<T> zzjVar) {
        List<T> arrayList = new ArrayList<>();
        for (FilterHolder filterHolder : this.zzaQy) {
            arrayList.add(filterHolder.getFilter().zza(zzjVar));
        }
        return zzjVar.zzb(this.zzaQj, arrayList);
    }
}
