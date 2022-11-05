package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.s;
/* loaded from: classes2.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new Parcelable.Creator<TimeSignalCommand>() { // from class: com.google.android.exoplayer2.metadata.scte35.TimeSignalCommand.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TimeSignalCommand[] newArray(int i) {
            return new TimeSignalCommand[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final long f3330a;
    public final long b;

    private TimeSignalCommand(long j, long j2) {
        this.f3330a = j;
        this.b = j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TimeSignalCommand a(l lVar, long j, s sVar) {
        long a2 = a(lVar, j);
        return new TimeSignalCommand(a2, sVar.b(a2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(l lVar, long j) {
        long f = lVar.f();
        if ((128 & f) == 0) {
            return -9223372036854775807L;
        }
        return ((((1 & f) << 32) | lVar.k()) + j) & 8589934591L;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f3330a);
        parcel.writeLong(this.b);
    }
}
