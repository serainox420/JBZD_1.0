package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new Parcelable.Creator<SpliceInsertCommand>() { // from class: com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SpliceInsertCommand[] newArray(int i) {
            return new SpliceInsertCommand[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final long f3325a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final long f;
    public final long g;
    public final List<a> h;
    public final boolean i;
    public final long j;
    public final int k;
    public final int l;
    public final int m;

    private SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<a> list, boolean z5, long j4, int i, int i2, int i3) {
        this.f3325a = j;
        this.b = z;
        this.c = z2;
        this.d = z3;
        this.e = z4;
        this.f = j2;
        this.g = j3;
        this.h = Collections.unmodifiableList(list);
        this.i = z5;
        this.j = j4;
        this.k = i;
        this.l = i2;
        this.m = i3;
    }

    private SpliceInsertCommand(Parcel parcel) {
        boolean z = true;
        this.f3325a = parcel.readLong();
        this.b = parcel.readByte() == 1;
        this.c = parcel.readByte() == 1;
        this.d = parcel.readByte() == 1;
        this.e = parcel.readByte() == 1;
        this.f = parcel.readLong();
        this.g = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(a.b(parcel));
        }
        this.h = Collections.unmodifiableList(arrayList);
        this.i = parcel.readByte() != 1 ? false : z;
        this.j = parcel.readLong();
        this.k = parcel.readInt();
        this.l = parcel.readInt();
        this.m = parcel.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpliceInsertCommand a(l lVar, long j, s sVar) {
        long j2;
        boolean z;
        long j3;
        boolean z2;
        long j4;
        long j5;
        boolean z3;
        long k = lVar.k();
        boolean z4 = (lVar.f() & 128) != 0;
        boolean z5 = false;
        boolean z6 = false;
        List emptyList = Collections.emptyList();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        if (z4) {
            j2 = -9223372036854775807L;
            z = false;
            j3 = -9223372036854775807L;
            z2 = false;
        } else {
            int f = lVar.f();
            boolean z7 = (f & 128) != 0;
            boolean z8 = (f & 64) != 0;
            boolean z9 = (f & 32) != 0;
            boolean z10 = (f & 16) != 0;
            if (!z8 || z10) {
                j4 = -9223372036854775807L;
            } else {
                j4 = TimeSignalCommand.a(lVar, j);
            }
            if (!z8) {
                int f2 = lVar.f();
                emptyList = new ArrayList(f2);
                int i4 = 0;
                while (true) {
                    int i5 = i4;
                    if (i5 >= f2) {
                        break;
                    }
                    int f3 = lVar.f();
                    long j6 = -9223372036854775807L;
                    if (!z10) {
                        j6 = TimeSignalCommand.a(lVar, j);
                    }
                    emptyList.add(new a(f3, j6, sVar.b(j6)));
                    i4 = i5 + 1;
                }
            }
            if (!z9) {
                j5 = -9223372036854775807L;
                z3 = false;
            } else {
                long f4 = lVar.f();
                boolean z11 = (128 & f4) != 0;
                long k2 = ((f4 & 1) << 32) | lVar.k();
                z3 = z11;
                j5 = k2;
            }
            i = lVar.g();
            i2 = lVar.f();
            i3 = lVar.f();
            j3 = j4;
            z2 = z10;
            z6 = z8;
            z5 = z7;
            j2 = j5;
            z = z3;
        }
        return new SpliceInsertCommand(k, z4, z5, z6, z2, j3, sVar.b(j3), emptyList, z, j2, i, i2, i3);
    }

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3326a;
        public final long b;
        public final long c;

        private a(int i, long j, long j2) {
            this.f3326a = i;
            this.b = j;
            this.c = j2;
        }

        public void a(Parcel parcel) {
            parcel.writeInt(this.f3326a);
            parcel.writeLong(this.b);
            parcel.writeLong(this.c);
        }

        public static a b(Parcel parcel) {
            return new a(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeLong(this.f3325a);
        parcel.writeByte((byte) (this.b ? 1 : 0));
        parcel.writeByte((byte) (this.c ? 1 : 0));
        parcel.writeByte((byte) (this.d ? 1 : 0));
        parcel.writeByte((byte) (this.e ? 1 : 0));
        parcel.writeLong(this.f);
        parcel.writeLong(this.g);
        int size = this.h.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            this.h.get(i3).a(parcel);
        }
        if (!this.i) {
            i2 = 0;
        }
        parcel.writeByte((byte) i2);
        parcel.writeLong(this.j);
        parcel.writeInt(this.k);
        parcel.writeInt(this.l);
        parcel.writeInt(this.m);
    }
}
