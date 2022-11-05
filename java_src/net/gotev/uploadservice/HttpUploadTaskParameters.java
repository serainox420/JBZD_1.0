package net.gotev.uploadservice;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public final class HttpUploadTaskParameters implements Parcelable {
    public static final Parcelable.Creator<HttpUploadTaskParameters> CREATOR = new Parcelable.Creator<HttpUploadTaskParameters>() { // from class: net.gotev.uploadservice.HttpUploadTaskParameters.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public HttpUploadTaskParameters createFromParcel(Parcel parcel) {
            return new HttpUploadTaskParameters(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public HttpUploadTaskParameters[] newArray(int i) {
            return new HttpUploadTaskParameters[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private String f5826a;
    private String b;
    private boolean c;
    private ArrayList<NameValue> d;
    private ArrayList<NameValue> e;

    public HttpUploadTaskParameters() {
        this.b = "POST";
        this.c = true;
        this.d = new ArrayList<>();
        this.e = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.f5826a);
        parcel.writeByte((byte) (this.c ? 1 : 0));
        parcel.writeList(this.d);
        parcel.writeList(this.e);
    }

    private HttpUploadTaskParameters(Parcel parcel) {
        boolean z = true;
        this.b = "POST";
        this.c = true;
        this.d = new ArrayList<>();
        this.e = new ArrayList<>();
        this.b = parcel.readString();
        this.f5826a = parcel.readString();
        this.c = parcel.readByte() != 1 ? false : z;
        parcel.readList(this.d, NameValue.class.getClassLoader());
        parcel.readList(this.e, NameValue.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void a(String str, String str2) {
        this.d.add(new NameValue(str, str2, true));
    }

    public void b(String str, String str2) {
        this.e.add(new NameValue(str, str2, false));
    }

    public List<NameValue> a() {
        return this.d;
    }

    public List<NameValue> b() {
        return this.e;
    }

    public String c() {
        return this.b;
    }

    public boolean d() {
        return this.c;
    }

    public String e() {
        return this.f5826a;
    }

    public boolean f() {
        return this.f5826a != null && !"".equals(this.f5826a);
    }
}
