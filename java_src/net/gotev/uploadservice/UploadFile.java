package net.gotev.uploadservice;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.LinkedHashMap;
/* loaded from: classes3.dex */
public class UploadFile implements Parcelable {
    public static final Parcelable.Creator<UploadFile> CREATOR = new Parcelable.Creator<UploadFile>() { // from class: net.gotev.uploadservice.UploadFile.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UploadFile createFromParcel(Parcel parcel) {
            return new UploadFile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UploadFile[] newArray(int i) {
            return new UploadFile[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    protected final String f5832a;
    protected final net.gotev.uploadservice.b.c b;
    private LinkedHashMap<String, String> c;

    public UploadFile(String str) throws FileNotFoundException {
        this.c = new LinkedHashMap<>();
        if (str == null || "".equals(str)) {
            throw new IllegalArgumentException("Please specify a file path!");
        }
        if (!net.gotev.uploadservice.b.d.a().b(str)) {
            throw new UnsupportedOperationException("Unsupported scheme: " + str);
        }
        this.f5832a = str;
        try {
            this.b = net.gotev.uploadservice.b.d.a().a(str);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public long a(Context context) {
        return this.b.a(context);
    }

    public final InputStream b(Context context) throws FileNotFoundException {
        return this.b.b(context);
    }

    public final String c(Context context) {
        return this.b.c(context);
    }

    public final String d(Context context) {
        return this.b.d(context);
    }

    public final String a() {
        return this.f5832a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5832a);
        parcel.writeSerializable(this.c);
    }

    private UploadFile(Parcel parcel) {
        this.c = new LinkedHashMap<>();
        this.f5832a = parcel.readString();
        this.c = (LinkedHashMap) parcel.readSerializable();
        try {
            this.b = net.gotev.uploadservice.b.d.a().a(this.f5832a);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void a(String str, String str2) {
        this.c.put(str, str2);
    }

    public String a(String str) {
        return this.c.get(str);
    }
}
