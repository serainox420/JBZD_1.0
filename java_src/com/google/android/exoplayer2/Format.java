package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.v;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class Format implements Parcelable {
    public static final Parcelable.Creator<Format> CREATOR = new Parcelable.Creator<Format>() { // from class: com.google.android.exoplayer2.Format.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Format createFromParcel(Parcel parcel) {
            return new Format(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Format[] newArray(int i) {
            return new Format[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f3143a;
    public final int b;
    public final String c;
    public final Metadata d;
    public final String e;
    public final String f;
    public final int g;
    public final List<byte[]> h;
    public final DrmInitData i;
    public final int j;
    public final int k;
    public final float l;
    public final int m;
    public final float n;
    public final int o;
    public final byte[] p;
    public final int q;
    public final int r;
    public final int s;
    public final int t;
    public final int u;
    public final long v;
    public final int w;
    public final String x;
    public final int y;
    private int z;

    public static Format a(String str, String str2, String str3, String str4, int i, int i2, int i3, float f, List<byte[]> list, int i4) {
        return new Format(str, str2, str3, str4, i, -1, i2, i3, f, -1, -1.0f, null, -1, -1, -1, -1, -1, -1, i4, null, -1, Clock.MAX_TIME, list, null, null);
    }

    public static Format a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, DrmInitData drmInitData) {
        return a(str, str2, str3, i, i2, i3, i4, f, list, i5, f2, null, -1, drmInitData);
    }

    public static Format a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, DrmInitData drmInitData) {
        return new Format(str, null, str2, str3, i, i2, i3, i4, f, i5, f2, bArr, i6, -1, -1, -1, -1, -1, 0, null, -1, Clock.MAX_TIME, list, drmInitData, null);
    }

    public static Format a(String str, String str2, String str3, String str4, int i, int i2, int i3, List<byte[]> list, int i4, String str5) {
        return new Format(str, str2, str3, str4, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, i2, i3, -1, -1, -1, i4, str5, -1, Clock.MAX_TIME, list, null, null);
    }

    public static Format a(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, DrmInitData drmInitData, int i5, String str4) {
        return a(str, str2, str3, i, i2, i3, i4, -1, list, drmInitData, i5, str4);
    }

    public static Format a(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, DrmInitData drmInitData, int i6, String str4) {
        return a(str, str2, str3, i, i2, i3, i4, i5, -1, -1, list, drmInitData, i6, str4, null);
    }

    public static Format a(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, DrmInitData drmInitData, int i8, String str4, Metadata metadata) {
        return new Format(str, null, str2, str3, i, i2, -1, -1, -1.0f, -1, -1.0f, null, -1, i3, i4, i5, i6, i7, i8, str4, -1, Clock.MAX_TIME, list, drmInitData, metadata);
    }

    public static Format a(String str, String str2, String str3, String str4, int i, int i2, String str5) {
        return a(str, str2, str3, str4, i, i2, str5, -1);
    }

    public static Format a(String str, String str2, String str3, String str4, int i, int i2, String str5, int i3) {
        return new Format(str, str2, str3, str4, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, -1, -1, -1, -1, -1, i2, str5, i3, Clock.MAX_TIME, null, null, null);
    }

    public static Format a(String str, String str2, String str3, int i, int i2, String str4, DrmInitData drmInitData) {
        return a(str, str2, str3, i, i2, str4, -1, drmInitData, Clock.MAX_TIME);
    }

    public static Format a(String str, String str2, String str3, int i, int i2, String str4, int i3, DrmInitData drmInitData) {
        return a(str, str2, str3, i, i2, str4, i3, drmInitData, Clock.MAX_TIME);
    }

    public static Format a(String str, String str2, String str3, int i, int i2, String str4, DrmInitData drmInitData, long j) {
        return a(str, str2, str3, i, i2, str4, -1, drmInitData, j);
    }

    public static Format a(String str, String str2, String str3, int i, int i2, String str4, int i3, DrmInitData drmInitData, long j) {
        return new Format(str, null, str2, str3, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, -1, -1, -1, -1, -1, i2, str4, i3, j, null, drmInitData, null);
    }

    public static Format a(String str, String str2, String str3, int i, List<byte[]> list, String str4, DrmInitData drmInitData) {
        return new Format(str, null, str2, str3, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, -1, -1, -1, -1, -1, 0, str4, -1, Clock.MAX_TIME, list, drmInitData, null);
    }

    public static Format b(String str, String str2, String str3, String str4, int i, int i2, String str5) {
        return new Format(str, str2, str3, str4, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, -1, -1, -1, -1, -1, i2, str5, -1, Clock.MAX_TIME, null, null, null);
    }

    public static Format a(String str, String str2, long j) {
        return new Format(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, -1, -1, -1, -1, -1, 0, null, -1, j, null, null, null);
    }

    public static Format a(String str, String str2, String str3, int i, DrmInitData drmInitData) {
        return new Format(str, null, str2, str3, i, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, -1, -1, -1, -1, -1, 0, null, -1, Clock.MAX_TIME, null, drmInitData, null);
    }

    Format(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, byte[] bArr, int i6, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, DrmInitData drmInitData, Metadata metadata) {
        this.f3143a = str;
        this.e = str2;
        this.f = str3;
        this.c = str4;
        this.b = i;
        this.g = i2;
        this.j = i3;
        this.k = i4;
        this.l = f;
        this.m = i5;
        this.n = f2;
        this.p = bArr;
        this.o = i6;
        this.q = i7;
        this.r = i8;
        this.s = i9;
        this.t = i10;
        this.u = i11;
        this.w = i12;
        this.x = str5;
        this.y = i13;
        this.v = j;
        this.h = list == null ? Collections.emptyList() : list;
        this.i = drmInitData;
        this.d = metadata;
    }

    Format(Parcel parcel) {
        this.f3143a = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.c = parcel.readString();
        this.b = parcel.readInt();
        this.g = parcel.readInt();
        this.j = parcel.readInt();
        this.k = parcel.readInt();
        this.l = parcel.readFloat();
        this.m = parcel.readInt();
        this.n = parcel.readFloat();
        this.p = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.o = parcel.readInt();
        this.q = parcel.readInt();
        this.r = parcel.readInt();
        this.s = parcel.readInt();
        this.t = parcel.readInt();
        this.u = parcel.readInt();
        this.w = parcel.readInt();
        this.x = parcel.readString();
        this.y = parcel.readInt();
        this.v = parcel.readLong();
        int readInt = parcel.readInt();
        this.h = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.h.add(parcel.createByteArray());
        }
        this.i = (DrmInitData) parcel.readParcelable(DrmInitData.class.getClassLoader());
        this.d = (Metadata) parcel.readParcelable(Metadata.class.getClassLoader());
    }

    public Format a(int i) {
        return new Format(this.f3143a, this.e, this.f, this.c, this.b, i, this.j, this.k, this.l, this.m, this.n, this.p, this.o, this.q, this.r, this.s, this.t, this.u, this.w, this.x, this.y, this.v, this.h, this.i, this.d);
    }

    public Format a(long j) {
        return new Format(this.f3143a, this.e, this.f, this.c, this.b, this.g, this.j, this.k, this.l, this.m, this.n, this.p, this.o, this.q, this.r, this.s, this.t, this.u, this.w, this.x, this.y, j, this.h, this.i, this.d);
    }

    public Format a(String str, String str2, int i, int i2, int i3, int i4, String str3) {
        return new Format(str, this.e, this.f, str2, i, this.g, i2, i3, this.l, this.m, this.n, this.p, this.o, this.q, this.r, this.s, this.t, this.u, i4, str3, this.y, this.v, this.h, this.i, this.d);
    }

    public Format a(Format format) {
        if (this == format) {
            return this;
        }
        return new Format(format.f3143a, this.e, this.f, this.c == null ? format.c : this.c, this.b == -1 ? format.b : this.b, this.g, this.j, this.k, this.l == -1.0f ? format.l : this.l, this.m, this.n, this.p, this.o, this.q, this.r, this.s, this.t, this.u, this.w | format.w, this.x == null ? format.x : this.x, this.y, this.v, this.h, format.i != null ? format.i : this.i, this.d);
    }

    public Format a(int i, int i2) {
        return new Format(this.f3143a, this.e, this.f, this.c, this.b, this.g, this.j, this.k, this.l, this.m, this.n, this.p, this.o, this.q, this.r, this.s, i, i2, this.w, this.x, this.y, this.v, this.h, this.i, this.d);
    }

    public Format a(DrmInitData drmInitData) {
        return new Format(this.f3143a, this.e, this.f, this.c, this.b, this.g, this.j, this.k, this.l, this.m, this.n, this.p, this.o, this.q, this.r, this.s, this.t, this.u, this.w, this.x, this.y, this.v, this.h, drmInitData, this.d);
    }

    public Format a(Metadata metadata) {
        return new Format(this.f3143a, this.e, this.f, this.c, this.b, this.g, this.j, this.k, this.l, this.m, this.n, this.p, this.o, this.q, this.r, this.s, this.t, this.u, this.w, this.x, this.y, this.v, this.h, this.i, metadata);
    }

    public int a() {
        if (this.j == -1 || this.k == -1) {
            return -1;
        }
        return this.j * this.k;
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(16)
    public final MediaFormat b() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.f);
        a(mediaFormat, "language", this.x);
        a(mediaFormat, "max-input-size", this.g);
        a(mediaFormat, "width", this.j);
        a(mediaFormat, "height", this.k);
        a(mediaFormat, "frame-rate", this.l);
        a(mediaFormat, "rotation-degrees", this.m);
        a(mediaFormat, "channel-count", this.q);
        a(mediaFormat, "sample-rate", this.r);
        a(mediaFormat, "encoder-delay", this.t);
        a(mediaFormat, "encoder-padding", this.u);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.h.size()) {
                mediaFormat.setByteBuffer("csd-" + i2, ByteBuffer.wrap(this.h.get(i2)));
                i = i2 + 1;
            } else {
                return mediaFormat;
            }
        }
    }

    public String toString() {
        return "Format(" + this.f3143a + ", " + this.e + ", " + this.f + ", " + this.b + ", " + this.x + ", [" + this.j + ", " + this.k + ", " + this.l + "], [" + this.q + ", " + this.r + "])";
    }

    public int hashCode() {
        int i = 0;
        if (this.z == 0) {
            int hashCode = ((this.i == null ? 0 : this.i.hashCode()) + (((((this.x == null ? 0 : this.x.hashCode()) + (((((((((((((this.c == null ? 0 : this.c.hashCode()) + (((this.f == null ? 0 : this.f.hashCode()) + (((this.e == null ? 0 : this.e.hashCode()) + (((this.f3143a == null ? 0 : this.f3143a.hashCode()) + 527) * 31)) * 31)) * 31)) * 31) + this.b) * 31) + this.j) * 31) + this.k) * 31) + this.q) * 31) + this.r) * 31)) * 31) + this.y) * 31)) * 31;
            if (this.d != null) {
                i = this.d.hashCode();
            }
            this.z = hashCode + i;
        }
        return this.z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Format format = (Format) obj;
        if (this.b != format.b || this.g != format.g || this.j != format.j || this.k != format.k || this.l != format.l || this.m != format.m || this.n != format.n || this.o != format.o || this.q != format.q || this.r != format.r || this.s != format.s || this.t != format.t || this.u != format.u || this.v != format.v || this.w != format.w || !v.a(this.f3143a, format.f3143a) || !v.a(this.x, format.x) || this.y != format.y || !v.a(this.e, format.e) || !v.a(this.f, format.f) || !v.a(this.c, format.c) || !v.a(this.i, format.i) || !v.a(this.d, format.d) || !Arrays.equals(this.p, format.p) || this.h.size() != format.h.size()) {
            return false;
        }
        for (int i = 0; i < this.h.size(); i++) {
            if (!Arrays.equals(this.h.get(i), format.h.get(i))) {
                return false;
            }
        }
        return true;
    }

    @TargetApi(16)
    private static void a(MediaFormat mediaFormat, String str, String str2) {
        if (str2 != null) {
            mediaFormat.setString(str, str2);
        }
    }

    @TargetApi(16)
    private static void a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    @TargetApi(16)
    private static void a(MediaFormat mediaFormat, String str, float f) {
        if (f != -1.0f) {
            mediaFormat.setFloat(str, f);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3143a);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.c);
        parcel.writeInt(this.b);
        parcel.writeInt(this.g);
        parcel.writeInt(this.j);
        parcel.writeInt(this.k);
        parcel.writeFloat(this.l);
        parcel.writeInt(this.m);
        parcel.writeFloat(this.n);
        parcel.writeInt(this.p != null ? 1 : 0);
        if (this.p != null) {
            parcel.writeByteArray(this.p);
        }
        parcel.writeInt(this.o);
        parcel.writeInt(this.q);
        parcel.writeInt(this.r);
        parcel.writeInt(this.s);
        parcel.writeInt(this.t);
        parcel.writeInt(this.u);
        parcel.writeInt(this.w);
        parcel.writeString(this.x);
        parcel.writeInt(this.y);
        parcel.writeLong(this.v);
        int size = this.h.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.h.get(i2));
        }
        parcel.writeParcelable(this.i, 0);
        parcel.writeParcelable(this.d, 0);
    }
}
