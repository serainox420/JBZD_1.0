package net.gotev.uploadservice;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.LinkedHashMap;
/* loaded from: classes3.dex */
public class ServerResponse implements Parcelable {
    public static final Parcelable.Creator<ServerResponse> CREATOR = new Parcelable.Creator<ServerResponse>() { // from class: net.gotev.uploadservice.ServerResponse.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ServerResponse createFromParcel(Parcel parcel) {
            return new ServerResponse(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ServerResponse[] newArray(int i) {
            return new ServerResponse[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private int f5831a;
    private byte[] b;
    private LinkedHashMap<String, String> c;

    public ServerResponse(int i, byte[] bArr, LinkedHashMap<String, String> linkedHashMap) {
        this.f5831a = i;
        if (bArr != null && bArr.length > 0) {
            this.b = bArr;
        } else {
            this.b = new byte[1];
        }
        if (linkedHashMap != null && !linkedHashMap.isEmpty()) {
            this.c = linkedHashMap;
        } else {
            this.c = new LinkedHashMap<>(1);
        }
    }

    protected ServerResponse(Parcel parcel) {
        this.f5831a = parcel.readInt();
        this.b = new byte[parcel.readInt()];
        parcel.readByteArray(this.b);
        this.c = (LinkedHashMap) parcel.readSerializable();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f5831a);
        parcel.writeInt(this.b.length);
        parcel.writeByteArray(this.b);
        parcel.writeSerializable(this.c);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int a() {
        return this.f5831a;
    }

    public String b() {
        return new String(this.b);
    }
}
