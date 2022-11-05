package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.drive.metadata.SortableMetadataField;
import com.google.android.gms.drive.query.internal.zzf;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2.dex */
public class SortOrder extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<SortOrder> CREATOR = new zzb();
    final List<zzf> zzaQg;
    final boolean zzaQh;
    final int zzaiI;

    /* loaded from: classes2.dex */
    public static class Builder {
        private final List<zzf> zzaQg = new ArrayList();
        private boolean zzaQh = false;

        public Builder addSortAscending(SortableMetadataField sortableMetadataField) {
            this.zzaQg.add(new zzf(sortableMetadataField.getName(), true));
            return this;
        }

        public Builder addSortDescending(SortableMetadataField sortableMetadataField) {
            this.zzaQg.add(new zzf(sortableMetadataField.getName(), false));
            return this;
        }

        public SortOrder build() {
            return new SortOrder((List) this.zzaQg, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SortOrder(int i, List<zzf> list, boolean z) {
        this.zzaiI = i;
        this.zzaQg = list;
        this.zzaQh = z;
    }

    private SortOrder(List<zzf> list, boolean z) {
        this(1, list, z);
    }

    public String toString() {
        return String.format(Locale.US, "SortOrder[%s, %s]", TextUtils.join(",", this.zzaQg), Boolean.valueOf(this.zzaQh));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
