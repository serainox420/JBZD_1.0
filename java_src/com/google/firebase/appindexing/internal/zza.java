package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
/* loaded from: classes2.dex */
public class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zza> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final String f3526a;
    private final String b;
    private final String c;
    private final String d;
    private final C0498zza e;
    private final String f;

    /* renamed from: com.google.firebase.appindexing.internal.zza$zza  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0498zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<C0498zza> CREATOR = new e();

        /* renamed from: a  reason: collision with root package name */
        private int f3527a;
        private final boolean b;
        private final String c;
        private final String d;
        private final byte[] e;
        private final boolean f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0498zza(int i, boolean z, String str, String str2, byte[] bArr, boolean z2) {
            this.f3527a = 0;
            this.f3527a = i;
            this.b = z;
            this.c = str;
            this.d = str2;
            this.e = bArr;
            this.f = z2;
        }

        public int a() {
            return this.f3527a;
        }

        public boolean b() {
            return this.b;
        }

        public String c() {
            return this.c;
        }

        public String d() {
            return this.d;
        }

        public byte[] e() {
            return this.e;
        }

        public boolean f() {
            return this.f;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("MetadataImpl { ");
            sb.append("{ eventStatus: '").append(this.f3527a).append("' } ");
            sb.append("{ uploadable: '").append(this.b).append("' } ");
            if (this.c != null) {
                sb.append("{ completionToken: '").append(this.c).append("' } ");
            }
            if (this.d != null) {
                sb.append("{ accountName: '").append(this.d).append("' } ");
            }
            if (this.e != null) {
                sb.append("{ ssbContext: [ ");
                for (byte b : this.e) {
                    sb.append("0x").append(Integer.toHexString(b)).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                }
                sb.append("] } ");
            }
            sb.append("{ contextOnly: '").append(this.f).append("' } ");
            sb.append("}");
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            e.a(this, parcel, i);
        }
    }

    public zza(String str, String str2, String str3, String str4, C0498zza c0498zza, String str5) {
        this.f3526a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = c0498zza;
        this.f = str5;
    }

    public String a() {
        return this.f3526a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public C0498zza e() {
        return this.e;
    }

    public String f() {
        return this.f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ActionImpl { ");
        sb.append("{ actionType: '").append(this.f3526a).append("' } ");
        sb.append("{ objectName: '").append(this.b).append("' } ");
        sb.append("{ objectUrl: '").append(this.c).append("' } ");
        if (this.d != null) {
            sb.append("{ objectSameAs: '").append(this.d).append("' } ");
        }
        if (this.e != null) {
            sb.append("{ metadata: '").append(this.e.toString()).append("' } ");
        }
        if (this.f != null) {
            sb.append("{ actionStatus: '").append(this.f).append("' } ");
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}
