package com.google.android.exoplayer2.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new Parcelable.Creator<Metadata>() { // from class: com.google.android.exoplayer2.metadata.Metadata.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Metadata[] newArray(int i) {
            return new Metadata[0];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Entry[] f3309a;

    /* loaded from: classes2.dex */
    public interface Entry extends Parcelable {
    }

    public Metadata(Entry... entryArr) {
        this.f3309a = entryArr == null ? new Entry[0] : entryArr;
    }

    public Metadata(List<? extends Entry> list) {
        if (list != null) {
            this.f3309a = new Entry[list.size()];
            list.toArray(this.f3309a);
            return;
        }
        this.f3309a = new Entry[0];
    }

    Metadata(Parcel parcel) {
        this.f3309a = new Entry[parcel.readInt()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f3309a.length) {
                this.f3309a[i2] = (Entry) parcel.readParcelable(Entry.class.getClassLoader());
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public int a() {
        return this.f3309a.length;
    }

    public Entry a(int i) {
        return this.f3309a[i];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f3309a, ((Metadata) obj).f3309a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f3309a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f3309a.length);
        for (Entry entry : this.f3309a) {
            parcel.writeParcelable(entry, 0);
        }
    }
}
