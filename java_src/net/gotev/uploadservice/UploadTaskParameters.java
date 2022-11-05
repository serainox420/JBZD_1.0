package net.gotev.uploadservice;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public final class UploadTaskParameters implements Parcelable {
    public static final Parcelable.Creator<UploadTaskParameters> CREATOR = new Parcelable.Creator<UploadTaskParameters>() { // from class: net.gotev.uploadservice.UploadTaskParameters.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UploadTaskParameters createFromParcel(Parcel parcel) {
            return new UploadTaskParameters(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UploadTaskParameters[] newArray(int i) {
            return new UploadTaskParameters[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private String f5837a;
    private String b;
    private int c;
    private boolean d;
    private UploadNotificationConfig e;
    private ArrayList<UploadFile> f;

    public UploadTaskParameters() {
        this.c = 0;
        this.d = false;
        this.f = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5837a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c);
        parcel.writeByte((byte) (this.d ? 1 : 0));
        parcel.writeParcelable(this.e, 0);
        parcel.writeList(this.f);
    }

    private UploadTaskParameters(Parcel parcel) {
        boolean z = true;
        this.c = 0;
        this.d = false;
        this.f = new ArrayList<>();
        this.f5837a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readInt();
        this.d = parcel.readByte() != 1 ? false : z;
        this.e = (UploadNotificationConfig) parcel.readParcelable(UploadNotificationConfig.class.getClassLoader());
        parcel.readList(this.f, UploadFile.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void a(UploadFile uploadFile) throws FileNotFoundException {
        this.f.add(uploadFile);
    }

    public List<UploadFile> a() {
        return this.f;
    }

    public UploadNotificationConfig b() {
        return this.e;
    }

    public String c() {
        return this.f5837a;
    }

    public UploadTaskParameters a(String str) {
        this.f5837a = str;
        return this;
    }

    public String d() {
        return this.b;
    }

    public UploadTaskParameters b(String str) {
        this.b = str;
        return this;
    }

    public int e() {
        return this.c;
    }

    public UploadTaskParameters a(int i) {
        if (i < 0) {
            this.c = 0;
        } else {
            this.c = i;
        }
        return this;
    }

    public boolean f() {
        return this.d;
    }
}
