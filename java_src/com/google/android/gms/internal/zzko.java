package com.google.android.gms.internal;

import com.google.ads.AdRequest;
import com.google.ads.a;
import com.google.ads.mediation.b;
import java.util.Date;
import java.util.HashSet;
@zzme
/* loaded from: classes.dex */
public final class zzko {

    /* renamed from: com.google.android.gms.internal.zzko$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] zzLM;

        static {
            try {
                zzLN[AdRequest.ErrorCode.INTERNAL_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                zzLN[AdRequest.ErrorCode.INVALID_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                zzLN[AdRequest.ErrorCode.NETWORK_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                zzLN[AdRequest.ErrorCode.NO_FILL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            zzLM = new int[AdRequest.Gender.values().length];
            try {
                zzLM[AdRequest.Gender.FEMALE.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                zzLM[AdRequest.Gender.MALE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                zzLM[AdRequest.Gender.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public static AdRequest.Gender zzI(int i) {
        switch (i) {
            case 1:
                return AdRequest.Gender.MALE;
            case 2:
                return AdRequest.Gender.FEMALE;
            default:
                return AdRequest.Gender.UNKNOWN;
        }
    }

    public static int zza(AdRequest.ErrorCode errorCode) {
        switch (errorCode) {
            case INVALID_REQUEST:
                return 1;
            case NETWORK_ERROR:
                return 2;
            case NO_FILL:
                return 3;
            default:
                return 0;
        }
    }

    public static a zzc(zzeg zzegVar) {
        a[] aVarArr = {a.f3131a, a.b, a.c, a.d, a.e, a.f};
        for (int i = 0; i < 6; i++) {
            if (aVarArr[i].a() == zzegVar.width && aVarArr[i].b() == zzegVar.height) {
                return aVarArr[i];
            }
        }
        return new a(com.google.android.gms.ads.zza.zza(zzegVar.width, zzegVar.height, zzegVar.zzzy));
    }

    public static b zzr(zzec zzecVar) {
        return new b(new Date(zzecVar.zzyT), zzI(zzecVar.zzyU), zzecVar.zzyV != null ? new HashSet(zzecVar.zzyV) : null, zzecVar.zzyW, zzecVar.zzzb);
    }
}
