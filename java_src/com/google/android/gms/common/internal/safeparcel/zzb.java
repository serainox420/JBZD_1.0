package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.request.GameRequest;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class zzb {

    /* loaded from: classes.dex */
    public static class zza extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public zza(String str, Parcel parcel) {
            super(new StringBuilder(String.valueOf(str).length() + 41).append(str).append(" Parcel: pos=").append(r0).append(" size=").append(parcel.dataSize()).toString());
            int dataPosition = parcel.dataPosition();
        }
    }

    public static double[] zzA(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        double[] createDoubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(zza2 + dataPosition);
        return createDoubleArray;
    }

    public static BigDecimal[] zzB(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            byte[] createByteArray = parcel.createByteArray();
            bigDecimalArr[i2] = new BigDecimal(new BigInteger(createByteArray), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + zza2);
        return bigDecimalArr;
    }

    public static String[] zzC(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(zza2 + dataPosition);
        return createStringArray;
    }

    public static ArrayList<Integer> zzD(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(dataPosition + zza2);
        return arrayList;
    }

    public static ArrayList<String> zzE(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(zza2 + dataPosition);
        return createStringArrayList;
    }

    public static Parcel zzF(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, zza2);
        parcel.setDataPosition(zza2 + dataPosition);
        return obtain;
    }

    public static Parcel[] zzG(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        Parcel[] parcelArr = new Parcel[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt2);
                parcelArr[i2] = obtain;
                parcel.setDataPosition(readInt2 + dataPosition2);
            } else {
                parcelArr[i2] = null;
            }
        }
        parcel.setDataPosition(dataPosition + zza2);
        return parcelArr;
    }

    public static int zza(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (i >> 16) & GameRequest.TYPE_ALL : parcel.readInt();
    }

    public static <T extends Parcelable> T zza(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(zza2 + dataPosition);
        return createFromParcel;
    }

    private static void zza(Parcel parcel, int i, int i2) {
        int zza2 = zza(parcel, i);
        if (zza2 != i2) {
            String valueOf = String.valueOf(Integer.toHexString(zza2));
            throw new zza(new StringBuilder(String.valueOf(valueOf).length() + 46).append("Expected size ").append(i2).append(" got ").append(zza2).append(" (0x").append(valueOf).append(")").toString(), parcel);
        }
    }

    private static void zza(Parcel parcel, int i, int i2, int i3) {
        if (i2 != i3) {
            String valueOf = String.valueOf(Integer.toHexString(i2));
            throw new zza(new StringBuilder(String.valueOf(valueOf).length() + 46).append("Expected size ").append(i3).append(" got ").append(i2).append(" (0x").append(valueOf).append(")").toString(), parcel);
        }
    }

    public static void zza(Parcel parcel, int i, List list, ClassLoader classLoader) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return;
        }
        parcel.readList(list, classLoader);
        parcel.setDataPosition(zza2 + dataPosition);
    }

    public static int zzaX(Parcel parcel) {
        return parcel.readInt();
    }

    public static int zzaY(Parcel parcel) {
        int zzaX = zzaX(parcel);
        int zza2 = zza(parcel, zzaX);
        int dataPosition = parcel.dataPosition();
        if (zzdc(zzaX) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(zzaX));
            throw new zza(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = dataPosition + zza2;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        throw new zza(new StringBuilder(54).append("Size read is invalid start=").append(dataPosition).append(" end=").append(i).toString(), parcel);
    }

    public static void zzb(Parcel parcel, int i) {
        parcel.setDataPosition(zza(parcel, i) + parcel.dataPosition());
    }

    public static <T> T[] zzb(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(zza2 + dataPosition);
        return tArr;
    }

    public static <T> ArrayList<T> zzc(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(zza2 + dataPosition);
        return createTypedArrayList;
    }

    public static boolean zzc(Parcel parcel, int i) {
        zza(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static Boolean zzd(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        if (zza2 == 0) {
            return null;
        }
        zza(parcel, i, zza2, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    public static int zzdc(int i) {
        return 65535 & i;
    }

    public static byte zze(Parcel parcel, int i) {
        zza(parcel, i, 4);
        return (byte) parcel.readInt();
    }

    public static short zzf(Parcel parcel, int i) {
        zza(parcel, i, 4);
        return (short) parcel.readInt();
    }

    public static int zzg(Parcel parcel, int i) {
        zza(parcel, i, 4);
        return parcel.readInt();
    }

    public static Integer zzh(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        if (zza2 == 0) {
            return null;
        }
        zza(parcel, i, zza2, 4);
        return Integer.valueOf(parcel.readInt());
    }

    public static long zzi(Parcel parcel, int i) {
        zza(parcel, i, 8);
        return parcel.readLong();
    }

    public static Long zzj(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        if (zza2 == 0) {
            return null;
        }
        zza(parcel, i, zza2, 8);
        return Long.valueOf(parcel.readLong());
    }

    public static BigInteger zzk(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(zza2 + dataPosition);
        return new BigInteger(createByteArray);
    }

    public static float zzl(Parcel parcel, int i) {
        zza(parcel, i, 4);
        return parcel.readFloat();
    }

    public static Float zzm(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        if (zza2 == 0) {
            return null;
        }
        zza(parcel, i, zza2, 4);
        return Float.valueOf(parcel.readFloat());
    }

    public static double zzn(Parcel parcel, int i) {
        zza(parcel, i, 8);
        return parcel.readDouble();
    }

    public static Double zzo(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        if (zza2 == 0) {
            return null;
        }
        zza(parcel, i, zza2, 8);
        return Double.valueOf(parcel.readDouble());
    }

    public static BigDecimal zzp(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(zza2 + dataPosition);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    public static String zzq(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(zza2 + dataPosition);
        return readString;
    }

    public static IBinder zzr(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(zza2 + dataPosition);
        return readStrongBinder;
    }

    public static Bundle zzs(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(zza2 + dataPosition);
        return readBundle;
    }

    public static byte[] zzt(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(zza2 + dataPosition);
        return createByteArray;
    }

    public static byte[][] zzu(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        byte[][] bArr = new byte[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bArr[i2] = parcel.createByteArray();
        }
        parcel.setDataPosition(dataPosition + zza2);
        return bArr;
    }

    public static boolean[] zzv(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        boolean[] createBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(zza2 + dataPosition);
        return createBooleanArray;
    }

    public static int[] zzw(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(zza2 + dataPosition);
        return createIntArray;
    }

    public static long[] zzx(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        long[] createLongArray = parcel.createLongArray();
        parcel.setDataPosition(zza2 + dataPosition);
        return createLongArray;
    }

    public static BigInteger[] zzy(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bigIntegerArr[i2] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + zza2);
        return bigIntegerArr;
    }

    public static float[] zzz(Parcel parcel, int i) {
        int zza2 = zza(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (zza2 == 0) {
            return null;
        }
        float[] createFloatArray = parcel.createFloatArray();
        parcel.setDataPosition(zza2 + dataPosition);
        return createFloatArray;
    }
}
