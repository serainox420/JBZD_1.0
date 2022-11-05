package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new Parcelable.Creator<SpliceScheduleCommand>() { // from class: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SpliceScheduleCommand[] newArray(int i) {
            return new SpliceScheduleCommand[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final List<b> f3327a;

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final long f3329a;
        public final boolean b;
        public final boolean c;
        public final boolean d;
        public final long e;
        public final List<a> f;
        public final boolean g;
        public final long h;
        public final int i;
        public final int j;
        public final int k;

        private b(long j, boolean z, boolean z2, boolean z3, List<a> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.f3329a = j;
            this.b = z;
            this.c = z2;
            this.d = z3;
            this.f = Collections.unmodifiableList(list);
            this.e = j2;
            this.g = z4;
            this.h = j3;
            this.i = i;
            this.j = i2;
            this.k = i3;
        }

        private b(Parcel parcel) {
            boolean z = true;
            this.f3329a = parcel.readLong();
            this.b = parcel.readByte() == 1;
            this.c = parcel.readByte() == 1;
            this.d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i = 0; i < readInt; i++) {
                arrayList.add(a.b(parcel));
            }
            this.f = Collections.unmodifiableList(arrayList);
            this.e = parcel.readLong();
            this.g = parcel.readByte() != 1 ? false : z;
            this.h = parcel.readLong();
            this.i = parcel.readInt();
            this.j = parcel.readInt();
            this.k = parcel.readInt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b b(l lVar) {
            long j;
            boolean z;
            boolean z2;
            long j2;
            ArrayList arrayList;
            long k = lVar.k();
            boolean z3 = (lVar.f() & 128) != 0;
            boolean z4 = false;
            long j3 = -9223372036854775807L;
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            boolean z5 = false;
            long j4 = -9223372036854775807L;
            if (z3) {
                j = -9223372036854775807L;
                z = false;
                z2 = false;
            } else {
                int f = lVar.f();
                boolean z6 = (f & 128) != 0;
                boolean z7 = (f & 64) != 0;
                boolean z8 = (f & 32) != 0;
                if (!z7) {
                    j2 = -9223372036854775807L;
                } else {
                    j2 = lVar.k();
                }
                if (!z7) {
                    int f2 = lVar.f();
                    arrayList = new ArrayList(f2);
                    for (int i4 = 0; i4 < f2; i4++) {
                        arrayList.add(new a(lVar.f(), lVar.k()));
                    }
                } else {
                    arrayList = arrayList2;
                }
                if (z8) {
                    long f3 = lVar.f();
                    z5 = (128 & f3) != 0;
                    j4 = ((f3 & 1) << 32) | lVar.k();
                }
                i = lVar.g();
                i2 = lVar.f();
                i3 = lVar.f();
                arrayList2 = arrayList;
                z4 = z7;
                j3 = j2;
                j = j4;
                z2 = z5;
                z = z6;
            }
            return new b(k, z3, z, z4, arrayList2, j3, z2, j, i, i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(Parcel parcel) {
            int i = 1;
            parcel.writeLong(this.f3329a);
            parcel.writeByte((byte) (this.b ? 1 : 0));
            parcel.writeByte((byte) (this.c ? 1 : 0));
            parcel.writeByte((byte) (this.d ? 1 : 0));
            int size = this.f.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                this.f.get(i2).c(parcel);
            }
            parcel.writeLong(this.e);
            if (!this.g) {
                i = 0;
            }
            parcel.writeByte((byte) i);
            parcel.writeLong(this.h);
            parcel.writeInt(this.i);
            parcel.writeInt(this.j);
            parcel.writeInt(this.k);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Parcel parcel) {
            return new b(parcel);
        }
    }

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3328a;
        public final long b;

        private a(int i, long j) {
            this.f3328a = i;
            this.b = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a b(Parcel parcel) {
            return new a(parcel.readInt(), parcel.readLong());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(Parcel parcel) {
            parcel.writeInt(this.f3328a);
            parcel.writeLong(this.b);
        }
    }

    private SpliceScheduleCommand(List<b> list) {
        this.f3327a = Collections.unmodifiableList(list);
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(b.c(parcel));
        }
        this.f3327a = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpliceScheduleCommand a(l lVar) {
        int f = lVar.f();
        ArrayList arrayList = new ArrayList(f);
        for (int i = 0; i < f; i++) {
            arrayList.add(b.b(lVar));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.f3327a.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.f3327a.get(i2).b(parcel);
        }
    }
}
