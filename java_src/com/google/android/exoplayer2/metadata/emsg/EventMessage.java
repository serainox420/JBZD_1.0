package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.v;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class EventMessage implements Metadata.Entry {
    public static final Parcelable.Creator<EventMessage> CREATOR = new Parcelable.Creator<EventMessage>() { // from class: com.google.android.exoplayer2.metadata.emsg.EventMessage.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public EventMessage createFromParcel(Parcel parcel) {
            return new EventMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public EventMessage[] newArray(int i) {
            return new EventMessage[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f3312a;
    public final String b;
    public final long c;
    public final long d;
    public final byte[] e;
    private int f;

    public EventMessage(String str, String str2, long j, long j2, byte[] bArr) {
        this.f3312a = str;
        this.b = str2;
        this.c = j;
        this.d = j2;
        this.e = bArr;
    }

    EventMessage(Parcel parcel) {
        this.f3312a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readLong();
        this.d = parcel.readLong();
        this.e = parcel.createByteArray();
    }

    public int hashCode() {
        int i = 0;
        if (this.f == 0) {
            int hashCode = ((this.f3312a != null ? this.f3312a.hashCode() : 0) + 527) * 31;
            if (this.b != null) {
                i = this.b.hashCode();
            }
            this.f = ((((((hashCode + i) * 31) + ((int) (this.c ^ (this.c >>> 32)))) * 31) + ((int) (this.d ^ (this.d >>> 32)))) * 31) + Arrays.hashCode(this.e);
        }
        return this.f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EventMessage eventMessage = (EventMessage) obj;
        return this.c == eventMessage.c && this.d == eventMessage.d && v.a(this.f3312a, eventMessage.f3312a) && v.a(this.b, eventMessage.b) && Arrays.equals(this.e, eventMessage.e);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3312a);
        parcel.writeString(this.b);
        parcel.writeLong(this.c);
        parcel.writeLong(this.d);
        parcel.writeByteArray(this.e);
    }
}
