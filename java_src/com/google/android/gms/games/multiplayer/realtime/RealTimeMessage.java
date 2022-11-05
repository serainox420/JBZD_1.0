package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public final class RealTimeMessage implements Parcelable {
    public static final Parcelable.Creator<RealTimeMessage> CREATOR = new Parcelable.Creator<RealTimeMessage>() { // from class: com.google.android.gms.games.multiplayer.realtime.RealTimeMessage.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: zzfV */
        public RealTimeMessage createFromParcel(Parcel parcel) {
            return new RealTimeMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzje */
        public RealTimeMessage[] newArray(int i) {
            return new RealTimeMessage[i];
        }
    };
    public static final int RELIABLE = 1;
    public static final int UNRELIABLE = 0;
    private final String zzbeq;
    private final byte[] zzber;
    private final int zzbes;

    private RealTimeMessage(Parcel parcel) {
        this(parcel.readString(), parcel.createByteArray(), parcel.readInt());
    }

    public RealTimeMessage(String str, byte[] bArr, int i) {
        this.zzbeq = (String) zzac.zzw(str);
        this.zzber = (byte[]) ((byte[]) zzac.zzw(bArr)).clone();
        this.zzbes = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] getMessageData() {
        return this.zzber;
    }

    public String getSenderParticipantId() {
        return this.zzbeq;
    }

    public boolean isReliable() {
        return this.zzbes == 1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzbeq);
        parcel.writeByteArray(this.zzber);
        parcel.writeInt(this.zzbes);
    }
}
