package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.vision.barcode.Barcode;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class zzark implements Parcelable {
    private final int zzakD;
    private final String zzbiQ;
    private final int[] zzbiR;
    private static final int[] zzbiS = new int[Barcode.PDF417];
    public static final Parcelable.Creator<zzark> CREATOR = new Parcelable.Creator<zzark>() { // from class: com.google.android.gms.internal.zzark.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: zzgA */
        public zzark createFromParcel(Parcel parcel) {
            return new zzark(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzjV */
        public zzark[] newArray(int i) {
            return new zzark[i];
        }
    };

    public zzark(Parcel parcel) {
        this.zzbiQ = parcel.readString();
        this.zzakD = parcel.readInt();
        this.zzbiR = parcel.createIntArray();
    }

    public zzark(String str, int i) {
        this.zzbiQ = str;
        this.zzakD = i;
        if (this.zzakD == 3) {
            this.zzbiR = zzeP(str);
        } else {
            this.zzbiR = null;
        }
    }

    static synchronized int[] zzeP(String str) {
        int[] copyOf;
        boolean z;
        boolean z2;
        int i;
        int i2;
        boolean z3;
        boolean z4;
        char c;
        int i3;
        int i4;
        int parseInt;
        int i5;
        int i6;
        synchronized (zzark.class) {
            int i7 = 0;
            int length = str.length();
            boolean z5 = false;
            boolean z6 = false;
            boolean z7 = false;
            int i8 = 0;
            while (i7 < length) {
                if (i8 > 2045) {
                    throw new IllegalArgumentException("Pattern is too large!");
                }
                char charAt = str.charAt(i7);
                switch (charAt) {
                    case '*':
                        if (!z7) {
                            if (i8 != 0 && !zzjU(zzbiS[i8 - 1])) {
                                int i9 = i8 + 1;
                                zzbiS[i8] = -7;
                                z3 = z7;
                                z4 = z5;
                                c = charAt;
                                z2 = z6;
                                i = i7;
                                z = false;
                                i2 = i9;
                                break;
                            } else {
                                throw new IllegalArgumentException("Modifier must follow a token.");
                            }
                        }
                        z2 = z6;
                        i = i7;
                        z = false;
                        i2 = i8;
                        z3 = z7;
                        z4 = z5;
                        c = charAt;
                        break;
                    case '+':
                        if (!z7) {
                            if (i8 != 0 && !zzjU(zzbiS[i8 - 1])) {
                                int i10 = i8 + 1;
                                zzbiS[i8] = -8;
                                z3 = z7;
                                z4 = z5;
                                c = charAt;
                                z2 = z6;
                                i = i7;
                                z = false;
                                i2 = i10;
                                break;
                            } else {
                                throw new IllegalArgumentException("Modifier must follow a token.");
                            }
                        }
                        z2 = z6;
                        i = i7;
                        z = false;
                        i2 = i8;
                        z3 = z7;
                        z4 = z5;
                        c = charAt;
                        break;
                    case '.':
                        if (!z7) {
                            int i11 = i8 + 1;
                            zzbiS[i8] = -4;
                            z3 = z7;
                            z4 = z5;
                            c = charAt;
                            z2 = z6;
                            i = i7;
                            z = false;
                            i2 = i11;
                            break;
                        }
                        z2 = z6;
                        i = i7;
                        z = false;
                        i2 = i8;
                        z3 = z7;
                        z4 = z5;
                        c = charAt;
                        break;
                    case '[':
                        if (z7) {
                            z2 = z6;
                            i = i7;
                            z = true;
                            i2 = i8;
                            z3 = z7;
                            z4 = z5;
                            c = charAt;
                            break;
                        } else {
                            if (str.charAt(i7 + 1) == '^') {
                                i6 = i8 + 1;
                                zzbiS[i8] = -2;
                                i7++;
                            } else {
                                i6 = i8 + 1;
                                zzbiS[i8] = -1;
                            }
                            i7++;
                            z7 = true;
                            i8 = i6;
                            continue;
                        }
                    case '\\':
                        if (i7 + 1 < length) {
                            int i12 = i7 + 1;
                            char charAt2 = str.charAt(i12);
                            z = true;
                            z2 = z6;
                            i = i12;
                            i2 = i8;
                            z3 = z7;
                            z4 = z5;
                            c = charAt2;
                            break;
                        } else {
                            throw new IllegalArgumentException("Escape found at end of pattern!");
                        }
                    case ']':
                        if (z7) {
                            int i13 = zzbiS[i8 - 1];
                            if (i13 != -1 && i13 != -2) {
                                int i14 = i8 + 1;
                                zzbiS[i8] = -3;
                                z3 = false;
                                z4 = z5;
                                c = charAt;
                                z2 = false;
                                i = i7;
                                z = false;
                                i2 = i14;
                                break;
                            } else {
                                throw new IllegalArgumentException("You must define characters in a set.");
                            }
                        } else {
                            z2 = z6;
                            i = i7;
                            z = true;
                            i2 = i8;
                            z3 = z7;
                            z4 = z5;
                            c = charAt;
                            break;
                        }
                    case '{':
                        if (!z7) {
                            if (i8 != 0 && !zzjU(zzbiS[i8 - 1])) {
                                int i15 = i8 + 1;
                                zzbiS[i8] = -5;
                                z2 = z6;
                                i = i7 + 1;
                                z3 = z7;
                                z4 = true;
                                z = false;
                                i2 = i15;
                                c = charAt;
                                break;
                            } else {
                                throw new IllegalArgumentException("Modifier must follow a token.");
                            }
                        }
                        z2 = z6;
                        i = i7;
                        z = false;
                        i2 = i8;
                        z3 = z7;
                        z4 = z5;
                        c = charAt;
                        break;
                    case '}':
                        if (z5) {
                            int i16 = i8 + 1;
                            zzbiS[i8] = -6;
                            z3 = z7;
                            z4 = false;
                            c = charAt;
                            z2 = z6;
                            i = i7;
                            z = false;
                            i2 = i16;
                            break;
                        }
                        z2 = z6;
                        i = i7;
                        z = false;
                        i2 = i8;
                        z3 = z7;
                        z4 = z5;
                        c = charAt;
                        break;
                    default:
                        z2 = z6;
                        i = i7;
                        z = true;
                        i2 = i8;
                        z3 = z7;
                        z4 = z5;
                        c = charAt;
                        break;
                }
                if (z3) {
                    if (z2) {
                        i3 = i2 + 1;
                        zzbiS[i2] = c;
                        z2 = false;
                        i4 = i;
                    } else if (i + 2 >= length || str.charAt(i + 1) != '-' || str.charAt(i + 2) == ']') {
                        int i17 = i2 + 1;
                        zzbiS[i2] = c;
                        i3 = i17 + 1;
                        zzbiS[i17] = c;
                        i4 = i;
                    } else {
                        z2 = true;
                        i3 = i2 + 1;
                        zzbiS[i2] = c;
                        i4 = i + 1;
                    }
                } else if (z4) {
                    int indexOf = str.indexOf(125, i);
                    if (indexOf < 0) {
                        throw new IllegalArgumentException("Range not ended with '}'");
                    }
                    String substring = str.substring(i, indexOf);
                    int indexOf2 = substring.indexOf(44);
                    if (indexOf2 < 0) {
                        try {
                            parseInt = Integer.parseInt(substring);
                            i5 = parseInt;
                        } catch (NumberFormatException e) {
                            throw new IllegalArgumentException("Range number format incorrect", e);
                        }
                    } else {
                        i5 = Integer.parseInt(substring.substring(0, indexOf2));
                        parseInt = indexOf2 == substring.length() + (-1) ? Integer.MAX_VALUE : Integer.parseInt(substring.substring(indexOf2 + 1));
                    }
                    if (i5 > parseInt) {
                        throw new IllegalArgumentException("Range quantifier minimum is greater than maximum");
                    }
                    int i18 = i2 + 1;
                    zzbiS[i2] = i5;
                    int i19 = i18 + 1;
                    zzbiS[i18] = parseInt;
                    z6 = z2;
                    i7 = indexOf;
                    z5 = z4;
                    z7 = z3;
                    i8 = i19;
                } else if (z) {
                    i3 = i2 + 1;
                    zzbiS[i2] = c;
                    i4 = i;
                } else {
                    i3 = i2;
                    i4 = i;
                }
                z6 = z2;
                z5 = z4;
                z7 = z3;
                i8 = i3;
                i7 = i4 + 1;
            }
            if (z7) {
                throw new IllegalArgumentException("Set was not terminated!");
            }
            copyOf = Arrays.copyOf(zzbiS, i8);
        }
        return copyOf;
    }

    private static boolean zzjU(int i) {
        return i == -8 || i == -7 || i == -6 || i == -5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        String str = "? ";
        switch (this.zzakD) {
            case 0:
                str = "LITERAL: ";
                break;
            case 1:
                str = "PREFIX: ";
                break;
            case 2:
                str = "GLOB: ";
                break;
            case 3:
                str = "ADVANCED: ";
                break;
        }
        String str2 = this.zzbiQ;
        return new StringBuilder(String.valueOf(str).length() + 16 + String.valueOf(str2).length()).append("PatternMatcher{").append(str).append(str2).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzbiQ);
        parcel.writeInt(this.zzakD);
        parcel.writeIntArray(this.zzbiR);
    }
}
