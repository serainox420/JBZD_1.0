package net.gotev.uploadservice;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes3.dex */
public class UploadInfo implements Parcelable {
    public static final Parcelable.Creator<UploadInfo> CREATOR = new Parcelable.Creator<UploadInfo>() { // from class: net.gotev.uploadservice.UploadInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UploadInfo createFromParcel(Parcel parcel) {
            return new UploadInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UploadInfo[] newArray(int i) {
            return new UploadInfo[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private String f5833a;
    private long b;
    private long c;
    private long d;
    private long e;
    private int f;
    private int g;
    private ArrayList<String> h;

    /* JADX INFO: Access modifiers changed from: protected */
    public UploadInfo(String str) {
        this.h = new ArrayList<>();
        this.f5833a = str;
        this.b = 0L;
        this.c = 0L;
        this.d = 0L;
        this.e = 0L;
        this.f = 0;
        this.g = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public UploadInfo(String str, long j, long j2, long j3, int i, List<String> list, int i2) {
        this.h = new ArrayList<>();
        this.f5833a = str;
        this.b = j;
        this.c = new Date().getTime();
        this.d = j2;
        this.e = j3;
        this.f = i;
        this.g = i2;
        if (list != null && !list.isEmpty()) {
            this.h.addAll(list);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5833a);
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
        parcel.writeLong(this.d);
        parcel.writeLong(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeStringList(this.h);
    }

    private UploadInfo(Parcel parcel) {
        this.h = new ArrayList<>();
        this.f5833a = parcel.readString();
        this.b = parcel.readLong();
        this.c = parcel.readLong();
        this.d = parcel.readLong();
        this.e = parcel.readLong();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        parcel.readStringList(this.h);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long a() {
        return this.c - this.b;
    }

    public String b() {
        int a2 = (int) (a() / 1000);
        if (a2 == 0) {
            return "0s";
        }
        int i = a2 / 60;
        int i2 = a2 - (i * 60);
        if (i == 0) {
            return i2 + "s";
        }
        return i + "m " + i2 + "s";
    }

    public double c() {
        long a2 = a();
        if (a2 < 1000) {
            return 0.0d;
        }
        return ((this.d / 1024.0d) * 8.0d) / (a2 / 1000);
    }

    public String d() {
        double c = c();
        if (c < 1.0d) {
            return ((int) (c * 1000.0d)) + " bit/s";
        }
        if (c >= 1024.0d) {
            return ((int) (c / 1024.0d)) + " Mbit/s";
        }
        return ((int) c) + " Kbit/s";
    }

    public ArrayList<String> e() {
        return this.h;
    }

    public long f() {
        return this.d;
    }

    public long g() {
        return this.e;
    }

    public int h() {
        if (this.e == 0) {
            return 0;
        }
        return (int) ((this.d * 100) / this.e);
    }

    public int i() {
        return this.g;
    }
}
