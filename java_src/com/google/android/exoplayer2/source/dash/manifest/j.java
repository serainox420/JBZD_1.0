package com.google.android.exoplayer2.source.dash.manifest;

import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.util.Locale;
/* compiled from: UrlTemplate.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final String[] f3403a;
    private final int[] b;
    private final String[] c;
    private final int d;

    public static j a(String str) {
        String[] strArr = new String[5];
        int[] iArr = new int[4];
        String[] strArr2 = new String[4];
        return new j(strArr, iArr, strArr2, a(str, strArr, iArr, strArr2));
    }

    private j(String[] strArr, int[] iArr, String[] strArr2, int i) {
        this.f3403a = strArr;
        this.b = iArr;
        this.c = strArr2;
        this.d = i;
    }

    public String a(String str, int i, int i2, long j) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < this.d; i3++) {
            sb.append(this.f3403a[i3]);
            if (this.b[i3] == 1) {
                sb.append(str);
            } else if (this.b[i3] == 2) {
                sb.append(String.format(Locale.US, this.c[i3], Integer.valueOf(i)));
            } else if (this.b[i3] == 3) {
                sb.append(String.format(Locale.US, this.c[i3], Integer.valueOf(i2)));
            } else if (this.b[i3] == 4) {
                sb.append(String.format(Locale.US, this.c[i3], Long.valueOf(j)));
            }
        }
        sb.append(this.f3403a[this.d]);
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int a(String str, String[] strArr, int[] iArr, String[] strArr2) {
        boolean z;
        strArr[0] = "";
        int i = 0;
        int i2 = 0;
        while (i2 < str.length()) {
            int indexOf = str.indexOf("$", i2);
            if (indexOf == -1) {
                strArr[i] = strArr[i] + str.substring(i2);
                i2 = str.length();
            } else if (indexOf != i2) {
                strArr[i] = strArr[i] + str.substring(i2, indexOf);
                i2 = indexOf;
            } else if (str.startsWith("$$", i2)) {
                strArr[i] = strArr[i] + "$";
                i2 += 2;
            } else {
                int indexOf2 = str.indexOf("$", i2 + 1);
                String substring = str.substring(i2 + 1, indexOf2);
                if (substring.equals("RepresentationID")) {
                    iArr[i] = 1;
                } else {
                    int indexOf3 = substring.indexOf("%0");
                    String str2 = "%01d";
                    if (indexOf3 != -1) {
                        str2 = substring.substring(indexOf3);
                        if (!str2.endsWith(PhoenixConstants.DEBUG_PARAM)) {
                            str2 = str2 + PhoenixConstants.DEBUG_PARAM;
                        }
                        substring = substring.substring(0, indexOf3);
                    }
                    switch (substring.hashCode()) {
                        case -1950496919:
                            if (substring.equals("Number")) {
                                z = false;
                                break;
                            }
                            z = true;
                            break;
                        case 2606829:
                            if (substring.equals("Time")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 38199441:
                            if (substring.equals("Bandwidth")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        default:
                            z = true;
                            break;
                    }
                    switch (z) {
                        case false:
                            iArr[i] = 2;
                            break;
                        case true:
                            iArr[i] = 3;
                            break;
                        case true:
                            iArr[i] = 4;
                            break;
                        default:
                            throw new IllegalArgumentException("Invalid template: " + str);
                    }
                    strArr2[i] = str2;
                }
                i++;
                strArr[i] = "";
                i2 = indexOf2 + 1;
            }
        }
        return i;
    }
}
