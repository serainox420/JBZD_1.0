package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes.dex */
public class zzc {
    private static int zzH(Parcel parcel, int i) {
        parcel.writeInt((-65536) | i);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void zzI(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    public static void zzJ(Parcel parcel, int i) {
        zzI(parcel, i);
    }

    public static void zza(Parcel parcel, int i, byte b) {
        zzb(parcel, i, 4);
        parcel.writeInt(b);
    }

    public static void zza(Parcel parcel, int i, double d) {
        zzb(parcel, i, 8);
        parcel.writeDouble(d);
    }

    public static void zza(Parcel parcel, int i, float f) {
        zzb(parcel, i, 4);
        parcel.writeFloat(f);
    }

    public static void zza(Parcel parcel, int i, long j) {
        zzb(parcel, i, 8);
        parcel.writeLong(j);
    }

    public static void zza(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeBundle(bundle);
        zzI(parcel, zzH);
    }

    public static void zza(Parcel parcel, int i, IBinder iBinder, boolean z) {
        if (iBinder == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeStrongBinder(iBinder);
        zzI(parcel, zzH);
    }

    public static void zza(Parcel parcel, int i, Parcel parcel2, boolean z) {
        if (parcel2 == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
        zzI(parcel, zzH);
    }

    public static void zza(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        zzI(parcel, zzH);
    }

    public static void zza(Parcel parcel, int i, Boolean bool, boolean z) {
        int i2 = 0;
        if (bool == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        zzb(parcel, i, 4);
        if (bool.booleanValue()) {
            i2 = 1;
        }
        parcel.writeInt(i2);
    }

    public static void zza(Parcel parcel, int i, Double d, boolean z) {
        if (d != null) {
            zzb(parcel, i, 8);
            parcel.writeDouble(d.doubleValue());
        } else if (!z) {
        } else {
            zzb(parcel, i, 0);
        }
    }

    public static void zza(Parcel parcel, int i, Float f, boolean z) {
        if (f != null) {
            zzb(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        } else if (!z) {
        } else {
            zzb(parcel, i, 0);
        }
    }

    public static void zza(Parcel parcel, int i, Integer num, boolean z) {
        if (num != null) {
            zzb(parcel, i, 4);
            parcel.writeInt(num.intValue());
        } else if (!z) {
        } else {
            zzb(parcel, i, 0);
        }
    }

    public static void zza(Parcel parcel, int i, Long l, boolean z) {
        if (l != null) {
            zzb(parcel, i, 8);
            parcel.writeLong(l.longValue());
        } else if (!z) {
        } else {
            zzb(parcel, i, 0);
        }
    }

    public static void zza(Parcel parcel, int i, String str, boolean z) {
        if (str == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeString(str);
        zzI(parcel, zzH);
    }

    public static void zza(Parcel parcel, int i, List<Integer> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(list.get(i2).intValue());
        }
        zzI(parcel, zzH);
    }

    public static void zza(Parcel parcel, int i, short s) {
        zzb(parcel, i, 4);
        parcel.writeInt(s);
    }

    public static void zza(Parcel parcel, int i, boolean z) {
        zzb(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    public static void zza(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeByteArray(bArr);
        zzI(parcel, zzH);
    }

    public static void zza(Parcel parcel, int i, float[] fArr, boolean z) {
        if (fArr == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeFloatArray(fArr);
        zzI(parcel, zzH);
    }

    public static void zza(Parcel parcel, int i, int[] iArr, boolean z) {
        if (iArr == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeIntArray(iArr);
        zzI(parcel, zzH);
    }

    public static void zza(Parcel parcel, int i, long[] jArr, boolean z) {
        if (jArr == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeLongArray(jArr);
        zzI(parcel, zzH);
    }

    public static <T extends Parcelable> void zza(Parcel parcel, int i, T[] tArr, int i2, boolean z) {
        if (tArr == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeInt(tArr.length);
        for (T t : tArr) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                zza(parcel, t, i2);
            }
        }
        zzI(parcel, zzH);
    }

    public static void zza(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeStringArray(strArr);
        zzI(parcel, zzH);
    }

    public static void zza(Parcel parcel, int i, boolean[] zArr, boolean z) {
        if (zArr == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeBooleanArray(zArr);
        zzI(parcel, zzH);
    }

    public static void zza(Parcel parcel, int i, byte[][] bArr, boolean z) {
        if (bArr == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        zzI(parcel, zzH);
    }

    private static <T extends Parcelable> void zza(Parcel parcel, T t, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }

    public static int zzaZ(Parcel parcel) {
        return zzH(parcel, 20293);
    }

    private static void zzb(Parcel parcel, int i, int i2) {
        if (i2 < 65535) {
            parcel.writeInt((i2 << 16) | i);
            return;
        }
        parcel.writeInt((-65536) | i);
        parcel.writeInt(i2);
    }

    public static void zzb(Parcel parcel, int i, List<String> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeStringList(list);
        zzI(parcel, zzH);
    }

    public static void zzc(Parcel parcel, int i, int i2) {
        zzb(parcel, i, 4);
        parcel.writeInt(i2);
    }

    public static <T extends Parcelable> void zzc(Parcel parcel, int i, List<T> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            T t = list.get(i2);
            if (t == null) {
                parcel.writeInt(0);
            } else {
                zza(parcel, t, 0);
            }
        }
        zzI(parcel, zzH);
    }

    public static void zzd(Parcel parcel, int i, List list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            zzb(parcel, i, 0);
            return;
        }
        int zzH = zzH(parcel, i);
        parcel.writeList(list);
        zzI(parcel, zzH);
    }
}
