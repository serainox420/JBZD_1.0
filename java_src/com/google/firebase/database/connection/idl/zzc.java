package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzbon;
import com.google.android.gms.internal.zzbro;
import java.util.List;
/* loaded from: classes2.dex */
public class zzc extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzc> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    final int f3570a;
    final zzf b;
    final int c;
    final List<String> d;
    final boolean e;
    final String f;
    final String g;

    public zzc(int i, zzf zzfVar, int i2, List<String> list, boolean z, String str, String str2) {
        this.f3570a = i;
        this.b = zzfVar;
        this.c = i2;
        this.d = list;
        this.e = z;
        this.f = str;
        this.g = str2;
    }

    public zzc(zzbon zzbonVar, zzbro.zza zzaVar, List<String> list, boolean z, String str, String str2) {
        int i;
        switch (zzaVar) {
            case DEBUG:
                i = 1;
                break;
            case INFO:
                i = 2;
                break;
            case WARN:
                i = 3;
                break;
            case ERROR:
                i = 4;
                break;
            default:
                i = 0;
                break;
        }
        this.f3570a = 1;
        this.b = zzf.a(zzbonVar);
        this.c = i;
        this.d = list;
        this.e = z;
        this.f = str;
        this.g = str2;
    }

    public zzbro.zza a() {
        switch (this.c) {
            case 0:
                return zzbro.zza.NONE;
            case 1:
                return zzbro.zza.DEBUG;
            case 2:
                return zzbro.zza.INFO;
            case 3:
                return zzbro.zza.WARN;
            case 4:
                return zzbro.zza.ERROR;
            default:
                return zzbro.zza.NONE;
        }
    }

    public List<String> b() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}
