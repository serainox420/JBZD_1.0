package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Set;
/* loaded from: classes2.dex */
public final class Thing extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<Thing> CREATOR = new f();

    /* renamed from: a  reason: collision with root package name */
    public final int f3524a;
    private final Bundle b;
    private final zza c;
    private final String d;
    private final String e;

    /* loaded from: classes2.dex */
    public static class zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zza> CREATOR = new d();

        /* renamed from: a  reason: collision with root package name */
        private final boolean f3525a;
        private int b;
        private String c;

        public zza(boolean z, int i, String str) {
            this.f3525a = z;
            this.b = i;
            this.c = str;
        }

        public boolean a() {
            return this.f3525a;
        }

        public int b() {
            return this.b;
        }

        public String c() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (obj instanceof zza) {
                zza zzaVar = (zza) obj;
                return zzaa.equal(Boolean.valueOf(this.f3525a), Boolean.valueOf(zzaVar.f3525a)) && zzaa.equal(Integer.valueOf(this.b), Integer.valueOf(zzaVar.b)) && zzaa.equal(this.c, zzaVar.c);
            }
            return false;
        }

        public int hashCode() {
            return zzaa.hashCode(Boolean.valueOf(this.f3525a), Integer.valueOf(this.b), this.c);
        }

        public String toString() {
            String str = "";
            if (!c().isEmpty()) {
                String valueOf = String.valueOf(c());
                str = valueOf.length() != 0 ? ", accountEmail: ".concat(valueOf) : new String(", accountEmail: ");
            }
            return new StringBuilder(String.valueOf(str).length() + 39).append("worksOffline: ").append(a()).append(", score: ").append(b()).append(str).toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            d.a(this, parcel, i);
        }
    }

    public Thing(int i, Bundle bundle, zza zzaVar, String str, String str2) {
        this.f3524a = i;
        this.b = bundle;
        this.c = zzaVar;
        this.d = str;
        this.e = str2;
        this.b.setClassLoader(getClass().getClassLoader());
    }

    public int a() {
        return this.f3524a;
    }

    public Bundle b() {
        return this.b;
    }

    public zza c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public String f() {
        return this.e.equals("Thing") ? "Indexable" : this.e;
    }

    public String toString() {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f()).append(" { ");
        StringBuilder append = sb2.append("{ id: ");
        if (d() == null) {
            sb = "<null> } ";
        } else {
            String valueOf = String.valueOf(d());
            sb = new StringBuilder(String.valueOf(valueOf).length() + 5).append("'").append(valueOf).append("' } ").toString();
        }
        append.append(sb);
        sb2.append("Properties { ");
        Set<String> keySet = this.b.keySet();
        String[] strArr = (String[]) keySet.toArray(new String[keySet.size()]);
        Arrays.sort(strArr);
        for (String str : strArr) {
            sb2.append("{ key: '").append(str).append("' value: ");
            Object obj = this.b.get(str);
            if (obj == null) {
                sb2.append("<null>");
            } else if (obj.getClass().isArray()) {
                sb2.append("[ ");
                for (int i = 0; i < Array.getLength(obj); i++) {
                    sb2.append("'").append(Array.get(obj, i)).append("' ");
                }
                sb2.append("]");
            } else {
                sb2.append(obj.toString());
            }
            sb2.append(" } ");
        }
        sb2.append("} ");
        sb2.append("Metadata { ");
        sb2.append(this.c.toString());
        sb2.append(" } ");
        sb2.append("}");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        f.a(this, parcel, i);
    }
}
