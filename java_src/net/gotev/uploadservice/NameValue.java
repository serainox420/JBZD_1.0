package net.gotev.uploadservice;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public final class NameValue implements Parcelable {
    public static final Parcelable.Creator<NameValue> CREATOR = new Parcelable.Creator<NameValue>() { // from class: net.gotev.uploadservice.NameValue.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public NameValue createFromParcel(Parcel parcel) {
            return new NameValue(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public NameValue[] newArray(int i) {
            return new NameValue[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f5830a;
    private final String b;

    public NameValue(String str, String str2, boolean z) {
        if (z && (!a(str) || !a(str2))) {
            throw new IllegalArgumentException("Header " + str + " must be ASCII only! Read http://stackoverflow.com/a/4410331");
        }
        this.f5830a = str;
        this.b = str2;
    }

    public final String a() {
        return this.f5830a;
    }

    public final String b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof NameValue) {
            NameValue nameValue = (NameValue) obj;
            return this.f5830a.equals(nameValue.f5830a) && this.b.equals(nameValue.b);
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5830a);
        parcel.writeString(this.b);
    }

    private NameValue(Parcel parcel) {
        this.f5830a = parcel.readString();
        this.b = parcel.readString();
    }

    private static boolean a(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) > 127) {
                return false;
            }
        }
        return true;
    }
}
