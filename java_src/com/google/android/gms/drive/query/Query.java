package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveSpace;
import com.google.android.gms.drive.query.internal.zzr;
import com.google.android.gms.drive.query.internal.zzt;
import com.google.android.gms.drive.query.internal.zzx;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes.dex */
public class Query extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<Query> CREATOR = new zza();
    final List<DriveSpace> zzaLH;
    private final Set<DriveSpace> zzaLI;
    final boolean zzaNO;
    final zzr zzaPY;
    final String zzaPZ;
    final SortOrder zzaQa;
    final List<String> zzaQb;
    final boolean zzaQc;
    final int zzaiI;

    /* loaded from: classes.dex */
    public static class Builder {
        private Set<DriveSpace> zzaLI;
        private boolean zzaNO;
        private String zzaPZ;
        private SortOrder zzaQa;
        private List<String> zzaQb;
        private boolean zzaQc;
        private final List<Filter> zzaQd = new ArrayList();

        public Builder() {
        }

        public Builder(Query query) {
            this.zzaQd.add(query.getFilter());
            this.zzaPZ = query.getPageToken();
            this.zzaQa = query.getSortOrder();
            this.zzaQb = query.zzBC();
            this.zzaQc = query.zzBD();
            this.zzaLI = query.zzBE();
            this.zzaNO = query.zzBF();
        }

        public Builder addFilter(Filter filter) {
            if (!(filter instanceof zzt)) {
                this.zzaQd.add(filter);
            }
            return this;
        }

        public Query build() {
            return new Query(new zzr(zzx.zzaQF, this.zzaQd), this.zzaPZ, this.zzaQa, this.zzaQb, this.zzaQc, this.zzaLI, this.zzaNO);
        }

        @Deprecated
        public Builder setPageToken(String str) {
            this.zzaPZ = str;
            return this;
        }

        public Builder setSortOrder(SortOrder sortOrder) {
            this.zzaQa = sortOrder;
            return this;
        }
    }

    private Query(int i, zzr zzrVar, String str, SortOrder sortOrder, List<String> list, boolean z, List<DriveSpace> list2, Set<DriveSpace> set, boolean z2) {
        this.zzaiI = i;
        this.zzaPY = zzrVar;
        this.zzaPZ = str;
        this.zzaQa = sortOrder;
        this.zzaQb = list;
        this.zzaQc = z;
        this.zzaLH = list2;
        this.zzaLI = set;
        this.zzaNO = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Query(int i, zzr zzrVar, String str, SortOrder sortOrder, List<String> list, boolean z, List<DriveSpace> list2, boolean z2) {
        this(i, zzrVar, str, sortOrder, list, z, list2, list2 == null ? null : new HashSet(list2), z2);
    }

    private Query(zzr zzrVar, String str, SortOrder sortOrder, List<String> list, boolean z, Set<DriveSpace> set, boolean z2) {
        this(1, zzrVar, str, sortOrder, list, z, set == null ? null : new ArrayList(set), set, z2);
    }

    public Filter getFilter() {
        return this.zzaPY;
    }

    @Deprecated
    public String getPageToken() {
        return this.zzaPZ;
    }

    public SortOrder getSortOrder() {
        return this.zzaQa;
    }

    public String toString() {
        return String.format(Locale.US, "Query[%s,%s,PageToken=%s,Spaces=%s]", this.zzaPY, this.zzaQa, this.zzaPZ, this.zzaLH);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public List<String> zzBC() {
        return this.zzaQb;
    }

    public boolean zzBD() {
        return this.zzaQc;
    }

    public Set<DriveSpace> zzBE() {
        return this.zzaLI;
    }

    public boolean zzBF() {
        return this.zzaNO;
    }
}
