package com.google.android.gms.internal;

import com.facebook.appevents.AppEventsConstants;
import com.flurry.android.Constants;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
class zzazz {
    private static final Pattern zzbDA = Pattern.compile("[.]");
    private static final Inet4Address zzbDB = (Inet4Address) zzgC("127.0.0.1");
    private static final Inet4Address zzbDC = (Inet4Address) zzgC("0.0.0.0");

    private static InetAddress zzH(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException e) {
            throw new AssertionError(e);
        }
    }

    private static int zza(byte b, byte b2, byte b3, byte b4) {
        return (b << 24) | ((b2 & Constants.UNKNOWN) << 16) | ((b3 & Constants.UNKNOWN) << 8) | (b4 & Constants.UNKNOWN);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(InetAddress inetAddress) {
        if (inetAddress instanceof Inet4Address) {
            return inetAddress.getHostAddress();
        }
        byte[] address = inetAddress.getAddress();
        int[] iArr = new int[8];
        for (int i = 0; i < 8; i++) {
            iArr[i] = zza((byte) 0, (byte) 0, address[i * 2], address[(i * 2) + 1]);
        }
        zzd(iArr);
        return zze(iArr);
    }

    private static void zzd(int[] iArr) {
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < iArr.length + 1; i4++) {
            if (i4 >= iArr.length || iArr[i4] != 0) {
                if (i >= 0) {
                    int i5 = i4 - i;
                    if (i5 > i2) {
                        i2 = i5;
                    } else {
                        i = i3;
                    }
                    i3 = i;
                    i = -1;
                }
            } else if (i < 0) {
                i = i4;
            }
        }
        if (i2 >= 2) {
            Arrays.fill(iArr, i3, i3 + i2, -1);
        }
    }

    private static String zze(int[] iArr) {
        StringBuilder sb = new StringBuilder(39);
        int i = 0;
        boolean z = false;
        while (i < iArr.length) {
            boolean z2 = iArr[i] >= 0;
            if (z2) {
                if (z) {
                    sb.append(':');
                }
                sb.append(Integer.toHexString(iArr[i]));
            } else if (i == 0 || z) {
                sb.append("::");
            }
            i++;
            z = z2;
        }
        return sb.toString();
    }

    private static byte[] zzgA(String str) {
        int length;
        int i;
        int i2;
        String[] split = str.split(":", 10);
        if (split.length < 3 || split.length > 9) {
            return null;
        }
        int i3 = -1;
        for (int i4 = 1; i4 < split.length - 1; i4++) {
            if (split[i4].length() == 0) {
                if (i3 >= 0) {
                    return null;
                }
                i3 = i4;
            }
        }
        if (i3 >= 0) {
            int length2 = (split.length - i3) - 1;
            if (split[0].length() == 0) {
                i2 = i3 - 1;
                if (i2 != 0) {
                    return null;
                }
            } else {
                i2 = i3;
            }
            if (split[split.length - 1].length() == 0 && length2 - 1 != 0) {
                return null;
            }
            int i5 = length2;
            length = i2;
            i = i5;
        } else {
            length = split.length;
            i = 0;
        }
        int i6 = 8 - (length + i);
        if (i3 < 0 ? i6 != 0 : i6 < 1) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(16);
        for (int i7 = 0; i7 < length; i7++) {
            try {
                allocate.putShort(zzgB(split[i7]));
            } catch (NumberFormatException e) {
                return null;
            }
        }
        for (int i8 = 0; i8 < i6; i8++) {
            allocate.putShort((short) 0);
        }
        while (i > 0) {
            allocate.putShort(zzgB(split[split.length - i]));
            i--;
        }
        return allocate.array();
    }

    private static short zzgB(String str) {
        int parseInt = Integer.parseInt(str, 16);
        if (parseInt > 65535) {
            throw new NumberFormatException();
        }
        return (short) parseInt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InetAddress zzgC(String str) {
        byte[] zzgw = zzgw(str);
        if (zzgw == null) {
            throw zzh("'%s' is not an IP string literal.", str);
        }
        return zzH(zzgw);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzgv(String str) {
        return zzgw(str) != null;
    }

    private static byte[] zzgw(String str) {
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '.') {
                z = true;
            } else if (charAt == ':') {
                if (z) {
                    return null;
                }
                z2 = true;
            } else if (Character.digit(charAt, 16) == -1) {
                return null;
            }
        }
        if (!z2) {
            if (!z) {
                return null;
            }
            return zzgy(str);
        } else if (!z || (str = zzgx(str)) != null) {
            return zzgA(str);
        } else {
            return null;
        }
    }

    private static String zzgx(String str) {
        int lastIndexOf = str.lastIndexOf(58);
        String substring = str.substring(0, lastIndexOf + 1);
        byte[] zzgy = zzgy(str.substring(lastIndexOf + 1));
        if (zzgy == null) {
            return null;
        }
        String hexString = Integer.toHexString(((zzgy[0] & Constants.UNKNOWN) << 8) | (zzgy[1] & Constants.UNKNOWN));
        String hexString2 = Integer.toHexString((zzgy[3] & Constants.UNKNOWN) | ((zzgy[2] & Constants.UNKNOWN) << 8));
        return new StringBuilder(String.valueOf(substring).length() + 1 + String.valueOf(hexString).length() + String.valueOf(hexString2).length()).append(substring).append(hexString).append(":").append(hexString2).toString();
    }

    private static byte[] zzgy(String str) {
        int i = 0;
        byte[] bArr = new byte[4];
        try {
            String[] split = zzbDA.split(str, 4);
            int length = split.length;
            int i2 = 0;
            while (i < length) {
                int i3 = i2 + 1;
                bArr[i2] = zzgz(split[i]);
                i++;
                i2 = i3;
            }
            if (i2 == 4) {
                return bArr;
            }
            return null;
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private static byte zzgz(String str) {
        int parseInt = Integer.parseInt(str);
        if (parseInt > 255 || (str.startsWith(AppEventsConstants.EVENT_PARAM_VALUE_NO) && str.length() > 1)) {
            throw new NumberFormatException();
        }
        return (byte) parseInt;
    }

    private static IllegalArgumentException zzh(String str, Object... objArr) {
        return new IllegalArgumentException(String.format(Locale.ROOT, str, objArr));
    }
}
