package net.gotev.uploadservice;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class BroadcastData implements Parcelable {
    public static final Parcelable.Creator<BroadcastData> CREATOR = new Parcelable.Creator<BroadcastData>() { // from class: net.gotev.uploadservice.BroadcastData.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BroadcastData createFromParcel(Parcel parcel) {
            return new BroadcastData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BroadcastData[] newArray(int i) {
            return new BroadcastData[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private Status f5824a;
    private Exception b;
    private UploadInfo c;
    private ServerResponse d;

    /* loaded from: classes3.dex */
    public enum Status {
        IN_PROGRESS,
        ERROR,
        COMPLETED,
        CANCELLED
    }

    public BroadcastData() {
    }

    public Intent a() {
        Intent intent = new Intent(UploadService.b());
        intent.putExtra("broadcastData", this);
        return intent;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f5824a.ordinal());
        parcel.writeSerializable(this.b);
        parcel.writeParcelable(this.c, i);
        parcel.writeParcelable(this.d, i);
    }

    private BroadcastData(Parcel parcel) {
        this.f5824a = Status.values()[parcel.readInt()];
        this.b = (Exception) parcel.readSerializable();
        this.c = (UploadInfo) parcel.readParcelable(UploadInfo.class.getClassLoader());
        this.d = (ServerResponse) parcel.readParcelable(ServerResponse.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Status b() {
        if (this.f5824a == null) {
            Logger.a(getClass().getSimpleName(), "Status not defined! Returning " + Status.CANCELLED);
            return Status.CANCELLED;
        }
        return this.f5824a;
    }

    public BroadcastData a(Status status) {
        this.f5824a = status;
        return this;
    }

    public Exception c() {
        return this.b;
    }

    public BroadcastData a(Exception exc) {
        this.b = exc;
        return this;
    }

    public UploadInfo d() {
        return this.c;
    }

    public BroadcastData a(UploadInfo uploadInfo) {
        this.c = uploadInfo;
        return this;
    }

    public ServerResponse e() {
        return this.d;
    }

    public BroadcastData a(ServerResponse serverResponse) {
        this.d = serverResponse;
        return this;
    }
}
