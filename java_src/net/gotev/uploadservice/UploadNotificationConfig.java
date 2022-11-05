package net.gotev.uploadservice;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public final class UploadNotificationConfig implements Parcelable {
    public static final Parcelable.Creator<UploadNotificationConfig> CREATOR = new Parcelable.Creator<UploadNotificationConfig>() { // from class: net.gotev.uploadservice.UploadNotificationConfig.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UploadNotificationConfig createFromParcel(Parcel parcel) {
            return new UploadNotificationConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UploadNotificationConfig[] newArray(int i) {
            return new UploadNotificationConfig[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private int f5834a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private Intent s;

    public UploadNotificationConfig() {
        this.f5834a = 17301589;
        this.b = this.f5834a;
        this.c = this.f5834a;
        this.d = this.f5834a;
        this.e = 0;
        this.f = this.e;
        this.g = this.e;
        this.h = this.e;
        this.i = "File Upload";
        this.j = "Uploading at [[UPLOAD_RATE]] ([[PROGRESS]])";
        this.k = "Upload completed successfully in [[ELAPSED_TIME]]";
        this.l = "Error during upload";
        this.m = "Upload cancelled";
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.s = null;
        this.r = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        return this.f5834a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int e() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int f() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int g() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int h() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String i() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String j() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String k() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String l() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String m() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean n() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean o() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean p() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean q() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean r() {
        return this.r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final PendingIntent a(Context context) {
        return this.s == null ? PendingIntent.getBroadcast(context, 0, new Intent(), 134217728) : PendingIntent.getActivity(context, 1, this.s, 134217728);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeInt(this.f5834a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        parcel.writeString(this.i);
        parcel.writeString(this.j);
        parcel.writeString(this.k);
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeByte((byte) (this.n ? 1 : 0));
        parcel.writeByte((byte) (this.o ? 1 : 0));
        parcel.writeByte((byte) (this.p ? 1 : 0));
        parcel.writeByte((byte) (this.q ? 1 : 0));
        if (!this.r) {
            i2 = 0;
        }
        parcel.writeByte((byte) i2);
        parcel.writeParcelable(this.s, 0);
    }

    private UploadNotificationConfig(Parcel parcel) {
        boolean z = true;
        this.f5834a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
        this.i = parcel.readString();
        this.j = parcel.readString();
        this.k = parcel.readString();
        this.l = parcel.readString();
        this.m = parcel.readString();
        this.n = parcel.readByte() == 1;
        this.o = parcel.readByte() == 1;
        this.p = parcel.readByte() == 1;
        this.q = parcel.readByte() == 1;
        this.r = parcel.readByte() != 1 ? false : z;
        this.s = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
    }
}
