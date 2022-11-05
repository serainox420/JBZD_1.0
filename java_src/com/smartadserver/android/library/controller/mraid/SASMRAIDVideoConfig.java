package com.smartadserver.android.library.controller.mraid;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.re.controller.JSController;
/* loaded from: classes3.dex */
public class SASMRAIDVideoConfig implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.smartadserver.android.library.controller.mraid.SASMRAIDVideoConfig.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SASMRAIDVideoConfig createFromParcel(Parcel parcel) {
            return new SASMRAIDVideoConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SASMRAIDVideoConfig[] newArray(int i) {
            return new SASMRAIDVideoConfig[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private String f5404a;
    private int b;
    private int c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private String h;
    private String i;

    public boolean a() {
        return this.d;
    }

    public boolean b() {
        return this.e;
    }

    public boolean c() {
        return this.f;
    }

    public boolean d() {
        return this.g;
    }

    public boolean e() {
        return this.h.equals("fullscreen");
    }

    public boolean f() {
        return this.i.equals(JSController.EXIT);
    }

    public String g() {
        return this.f5404a;
    }

    public float h() {
        return this.c != 0 ? this.b / this.c : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeString(this.f5404a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeByte((byte) (this.d ? 1 : 0));
        parcel.writeByte((byte) (this.e ? 1 : 0));
        parcel.writeByte((byte) (this.f ? 1 : 0));
        if (!this.g) {
            i2 = 0;
        }
        parcel.writeByte((byte) i2);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
    }

    public SASMRAIDVideoConfig(String str, int i, int i2, boolean z, boolean z2, boolean z3, boolean z4, String str2, String str3) {
        this.f5404a = str;
        this.b = i;
        this.c = i2;
        this.d = z;
        this.e = z2;
        this.f = z3;
        this.g = z4;
        this.h = str2;
        this.i = str3;
    }

    private SASMRAIDVideoConfig(Parcel parcel) {
        boolean z = true;
        this.f5404a = parcel.readString();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readByte() == 1;
        this.e = parcel.readByte() == 1;
        this.f = parcel.readByte() == 1;
        this.g = parcel.readByte() != 1 ? false : z;
        this.h = parcel.readString();
        this.i = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
