package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.l;
/* loaded from: classes2.dex */
public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new Parcelable.Creator<PrivateCommand>() { // from class: com.google.android.exoplayer2.metadata.scte35.PrivateCommand.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PrivateCommand createFromParcel(Parcel parcel) {
            return new PrivateCommand(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PrivateCommand[] newArray(int i) {
            return new PrivateCommand[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final long f3324a;
    public final long b;
    public final byte[] c;

    private PrivateCommand(long j, byte[] bArr, long j2) {
        this.f3324a = j2;
        this.b = j;
        this.c = bArr;
    }

    private PrivateCommand(Parcel parcel) {
        this.f3324a = parcel.readLong();
        this.b = parcel.readLong();
        this.c = new byte[parcel.readInt()];
        parcel.readByteArray(this.c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PrivateCommand a(l lVar, int i, long j) {
        long k = lVar.k();
        byte[] bArr = new byte[i - 4];
        lVar.a(bArr, 0, bArr.length);
        return new PrivateCommand(k, bArr, j);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f3324a);
        parcel.writeLong(this.b);
        parcel.writeInt(this.c.length);
        parcel.writeByteArray(this.c);
    }
}
