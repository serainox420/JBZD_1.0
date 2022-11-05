package com.google.android.gms.internal;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
/* loaded from: classes2.dex */
public class zzbwh implements Closeable {
    private static final char[] zzcsn = ")]}'\n".toCharArray();
    private final Reader in;
    private long zzcst;
    private int zzcsu;
    private String zzcsv;
    private int zzcsx;
    private String[] zzcsy;
    private int[] zzcsz;
    private boolean zzcso = false;
    private final char[] zzcsp = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int zzcsq = 0;
    private int zzcsr = 0;
    private int zzcss = 0;
    private int[] zzcsw = new int[32];

    static {
        zzbvm.zzcqg = new zzbvm() { // from class: com.google.android.gms.internal.zzbwh.1
            @Override // com.google.android.gms.internal.zzbvm
            public void zzi(zzbwh zzbwhVar) throws IOException {
                if (zzbwhVar instanceof zzbvx) {
                    ((zzbvx) zzbwhVar).zzadI();
                    return;
                }
                int i = zzbwhVar.zzcss;
                if (i == 0) {
                    i = zzbwhVar.zzadS();
                }
                if (i == 13) {
                    zzbwhVar.zzcss = 9;
                } else if (i == 12) {
                    zzbwhVar.zzcss = 8;
                } else if (i == 14) {
                    zzbwhVar.zzcss = 10;
                } else {
                    String valueOf = String.valueOf(zzbwhVar.zzadF());
                    int lineNumber = zzbwhVar.getLineNumber();
                    int columnNumber = zzbwhVar.getColumnNumber();
                    String path = zzbwhVar.getPath();
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 70 + String.valueOf(path).length()).append("Expected a name but was ").append(valueOf).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
                }
            }
        };
    }

    public zzbwh(Reader reader) {
        this.zzcsx = 0;
        int[] iArr = this.zzcsw;
        int i = this.zzcsx;
        this.zzcsx = i + 1;
        iArr[i] = 6;
        this.zzcsy = new String[32];
        this.zzcsz = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.in = reader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getColumnNumber() {
        return (this.pos - this.zzcsr) + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLineNumber() {
        return this.zzcsq + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int zzadS() throws IOException {
        int i = this.zzcsw[this.zzcsx - 1];
        if (i == 1) {
            this.zzcsw[this.zzcsx - 1] = 2;
        } else if (i == 2) {
            switch (zzbm(true)) {
                case 44:
                    break;
                case 59:
                    zzadX();
                    break;
                case 93:
                    this.zzcss = 4;
                    return 4;
                default:
                    throw zzjY("Unterminated array");
            }
        } else if (i == 3 || i == 5) {
            this.zzcsw[this.zzcsx - 1] = 4;
            if (i == 5) {
                switch (zzbm(true)) {
                    case 44:
                        break;
                    case 59:
                        zzadX();
                        break;
                    case 125:
                        this.zzcss = 2;
                        return 2;
                    default:
                        throw zzjY("Unterminated object");
                }
            }
            int zzbm = zzbm(true);
            switch (zzbm) {
                case 34:
                    this.zzcss = 13;
                    return 13;
                case 39:
                    zzadX();
                    this.zzcss = 12;
                    return 12;
                case 125:
                    if (i == 5) {
                        throw zzjY("Expected name");
                    }
                    this.zzcss = 2;
                    return 2;
                default:
                    zzadX();
                    this.pos--;
                    if (!zzc((char) zzbm)) {
                        throw zzjY("Expected name");
                    }
                    this.zzcss = 14;
                    return 14;
            }
        } else if (i == 4) {
            this.zzcsw[this.zzcsx - 1] = 5;
            switch (zzbm(true)) {
                case 58:
                    break;
                case 59:
                case 60:
                default:
                    throw zzjY("Expected ':'");
                case 61:
                    zzadX();
                    if ((this.pos < this.limit || zzqV(1)) && this.zzcsp[this.pos] == '>') {
                        this.pos++;
                        break;
                    }
                    break;
            }
        } else if (i == 6) {
            if (this.zzcso) {
                zzaea();
            }
            this.zzcsw[this.zzcsx - 1] = 7;
        } else if (i == 7) {
            if (zzbm(false) == -1) {
                this.zzcss = 17;
                return 17;
            }
            zzadX();
            this.pos--;
        } else if (i == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        switch (zzbm(true)) {
            case 34:
                if (this.zzcsx == 1) {
                    zzadX();
                }
                this.zzcss = 9;
                return 9;
            case 39:
                zzadX();
                this.zzcss = 8;
                return 8;
            case 44:
            case 59:
                break;
            case 91:
                this.zzcss = 3;
                return 3;
            case 93:
                if (i == 1) {
                    this.zzcss = 4;
                    return 4;
                }
                break;
            case 123:
                this.zzcss = 1;
                return 1;
            default:
                this.pos--;
                if (this.zzcsx == 1) {
                    zzadX();
                }
                int zzadT = zzadT();
                if (zzadT != 0) {
                    return zzadT;
                }
                int zzadU = zzadU();
                if (zzadU != 0) {
                    return zzadU;
                }
                if (!zzc(this.zzcsp[this.pos])) {
                    throw zzjY("Expected value");
                }
                zzadX();
                this.zzcss = 10;
                return 10;
        }
        if (i == 1 || i == 2) {
            zzadX();
            this.pos--;
            this.zzcss = 7;
            return 7;
        }
        throw zzjY("Unexpected value");
    }

    private int zzadT() throws IOException {
        String str;
        String str2;
        int i;
        char c = this.zzcsp[this.pos];
        if (c == 't' || c == 'T') {
            str = "true";
            str2 = "TRUE";
            i = 5;
        } else if (c == 'f' || c == 'F') {
            str = Consts.False;
            str2 = "FALSE";
            i = 6;
        } else if (c != 'n' && c != 'N') {
            return 0;
        } else {
            str = "null";
            str2 = "NULL";
            i = 7;
        }
        int length = str.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.pos + i2 >= this.limit && !zzqV(i2 + 1)) {
                return 0;
            }
            char c2 = this.zzcsp[this.pos + i2];
            if (c2 != str.charAt(i2) && c2 != str2.charAt(i2)) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || zzqV(length + 1)) && zzc(this.zzcsp[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.zzcss = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:?, code lost:
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:?, code lost:
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
        if (r3 != 2) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
        if (r4 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
        if (r6 != Long.MIN_VALUE) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
        if (r5 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002d, code lost:
        if (r5 == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002f, code lost:
        r15.zzcst = r6;
        r15.pos += r10;
        r15.zzcss = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0052, code lost:
        if (zzc(r2) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00dc, code lost:
        r6 = -r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00e0, code lost:
        if (r3 == 2) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00e3, code lost:
        if (r3 == 4) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00e6, code lost:
        if (r3 != 7) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00e8, code lost:
        r15.zzcsu = r10;
        r15.zzcss = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00f0, code lost:
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int zzadU() throws IOException {
        char c;
        boolean z;
        boolean z2;
        char[] cArr = this.zzcsp;
        int i = this.pos;
        long j = 0;
        boolean z3 = false;
        boolean z4 = true;
        char c2 = 0;
        int i2 = 0;
        int i3 = this.limit;
        int i4 = i;
        while (true) {
            if (i4 + i2 == i3) {
                if (i2 == cArr.length) {
                    return 0;
                }
                if (zzqV(i2 + 1)) {
                    i4 = this.pos;
                    i3 = this.limit;
                }
            }
            char c3 = cArr[i4 + i2];
            switch (c3) {
                case '+':
                    if (c2 != 5) {
                        return 0;
                    }
                    c = 6;
                    z = z4;
                    z2 = z3;
                    break;
                case '-':
                    if (c2 == 0) {
                        c = 1;
                        boolean z5 = z4;
                        z2 = true;
                        z = z5;
                        break;
                    } else if (c2 != 5) {
                        return 0;
                    } else {
                        c = 6;
                        z = z4;
                        z2 = z3;
                        break;
                    }
                case '.':
                    if (c2 != 2) {
                        return 0;
                    }
                    c = 3;
                    z = z4;
                    z2 = z3;
                    break;
                case 'E':
                case 'e':
                    if (c2 != 2 && c2 != 4) {
                        return 0;
                    }
                    c = 5;
                    z = z4;
                    z2 = z3;
                    break;
                    break;
                default:
                    if (c3 >= '0' && c3 <= '9') {
                        if (c2 != 1 && c2 != 0) {
                            if (c2 != 2) {
                                if (c2 != 3) {
                                    if (c2 != 5 && c2 != 6) {
                                        c = c2;
                                        z = z4;
                                        z2 = z3;
                                        break;
                                    } else {
                                        c = 7;
                                        z = z4;
                                        z2 = z3;
                                        break;
                                    }
                                } else {
                                    c = 4;
                                    z = z4;
                                    z2 = z3;
                                    break;
                                }
                            } else if (j != 0) {
                                long j2 = (10 * j) - (c3 - '0');
                                boolean z6 = (j > -922337203685477580L || (j == -922337203685477580L && j2 < j)) & z4;
                                z2 = z3;
                                j = j2;
                                char c4 = c2;
                                z = z6;
                                c = c4;
                                break;
                            } else {
                                return 0;
                            }
                        } else {
                            j = -(c3 - '0');
                            c = 2;
                            z = z4;
                            z2 = z3;
                            break;
                        }
                    }
                    break;
            }
            i2++;
            z3 = z2;
            z4 = z;
            c2 = c;
        }
    }

    private String zzadV() throws IOException {
        String sb;
        StringBuilder sb2 = null;
        int i = 0;
        while (true) {
            if (this.pos + i < this.limit) {
                switch (this.zzcsp[this.pos + i]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        zzadX();
                        break;
                    default:
                        i++;
                }
            } else if (i >= this.zzcsp.length) {
                if (sb2 == null) {
                    sb2 = new StringBuilder();
                }
                sb2.append(this.zzcsp, this.pos, i);
                this.pos = i + this.pos;
                if (!zzqV(1)) {
                    i = 0;
                } else {
                    i = 0;
                }
            } else if (zzqV(i + 1)) {
            }
        }
        if (sb2 == null) {
            sb = new String(this.zzcsp, this.pos, i);
        } else {
            sb2.append(this.zzcsp, this.pos, i);
            sb = sb2.toString();
        }
        this.pos = i + this.pos;
        return sb;
    }

    private void zzadW() throws IOException {
        do {
            int i = 0;
            while (this.pos + i < this.limit) {
                switch (this.zzcsp[this.pos + i]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        this.pos = i + this.pos;
                        return;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        zzadX();
                        this.pos = i + this.pos;
                        return;
                    default:
                        i++;
                }
            }
            this.pos = i + this.pos;
        } while (zzqV(1));
    }

    private void zzadX() throws IOException {
        if (!this.zzcso) {
            throw zzjY("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void zzadY() throws IOException {
        char c;
        do {
            if (this.pos >= this.limit && !zzqV(1)) {
                return;
            }
            char[] cArr = this.zzcsp;
            int i = this.pos;
            this.pos = i + 1;
            c = cArr[i];
            if (c == '\n') {
                this.zzcsq++;
                this.zzcsr = this.pos;
                return;
            }
        } while (c != '\r');
    }

    private char zzadZ() throws IOException {
        int i;
        if (this.pos != this.limit || zzqV(1)) {
            char[] cArr = this.zzcsp;
            int i2 = this.pos;
            this.pos = i2 + 1;
            char c = cArr[i2];
            switch (c) {
                case '\n':
                    this.zzcsq++;
                    this.zzcsr = this.pos;
                    return c;
                case 'b':
                    return '\b';
                case 'f':
                    return '\f';
                case 'n':
                    return '\n';
                case 'r':
                    return '\r';
                case 't':
                    return '\t';
                case 'u':
                    if (this.pos + 4 > this.limit && !zzqV(4)) {
                        throw zzjY("Unterminated escape sequence");
                    }
                    int i3 = this.pos;
                    int i4 = i3 + 4;
                    char c2 = 0;
                    for (int i5 = i3; i5 < i4; i5++) {
                        char c3 = this.zzcsp[i5];
                        char c4 = (char) (c2 << 4);
                        if (c3 >= '0' && c3 <= '9') {
                            i = c3 - '0';
                        } else if (c3 >= 'a' && c3 <= 'f') {
                            i = (c3 - 'a') + 10;
                        } else if (c3 < 'A' || c3 > 'F') {
                            String valueOf = String.valueOf(new String(this.zzcsp, this.pos, 4));
                            throw new NumberFormatException(valueOf.length() != 0 ? "\\u".concat(valueOf) : new String("\\u"));
                        } else {
                            i = (c3 - 'A') + 10;
                        }
                        c2 = (char) (c4 + i);
                    }
                    this.pos += 4;
                    return c2;
                default:
                    return c;
            }
        }
        throw zzjY("Unterminated escape sequence");
    }

    private void zzaea() throws IOException {
        zzbm(true);
        this.pos--;
        if (this.pos + zzcsn.length <= this.limit || zzqV(zzcsn.length)) {
            for (int i = 0; i < zzcsn.length; i++) {
                if (this.zzcsp[this.pos + i] != zzcsn[i]) {
                    return;
                }
            }
            this.pos += zzcsn.length;
        }
    }

    private int zzbm(boolean z) throws IOException {
        char[] cArr = this.zzcsp;
        int i = this.pos;
        int i2 = this.limit;
        while (true) {
            if (i == i2) {
                this.pos = i;
                if (!zzqV(1)) {
                    if (!z) {
                        return -1;
                    }
                    String valueOf = String.valueOf("End of input at line ");
                    throw new EOFException(new StringBuilder(String.valueOf(valueOf).length() + 30).append(valueOf).append(getLineNumber()).append(" column ").append(getColumnNumber()).toString());
                }
                i = this.pos;
                i2 = this.limit;
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.zzcsq++;
                this.zzcsr = i3;
                i = i3;
            } else if (c == ' ' || c == '\r') {
                i = i3;
            } else if (c == '\t') {
                i = i3;
            } else if (c == '/') {
                this.pos = i3;
                if (i3 == i2) {
                    this.pos--;
                    boolean zzqV = zzqV(2);
                    this.pos++;
                    if (!zzqV) {
                        return c;
                    }
                }
                zzadX();
                switch (cArr[this.pos]) {
                    case '*':
                        this.pos++;
                        if (!zzjX("*/")) {
                            throw zzjY("Unterminated comment");
                        }
                        i = this.pos + 2;
                        i2 = this.limit;
                        continue;
                    case '/':
                        this.pos++;
                        zzadY();
                        i = this.pos;
                        i2 = this.limit;
                        continue;
                    default:
                        return c;
                }
            } else if (c != '#') {
                this.pos = i3;
                return c;
            } else {
                this.pos = i3;
                zzadX();
                zzadY();
                i = this.pos;
                i2 = this.limit;
            }
        }
    }

    private boolean zzc(char c) throws IOException {
        switch (c) {
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
            case ',':
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                break;
            default:
                return true;
            case '#':
            case '/':
            case ';':
            case '=':
            case '\\':
                zzadX();
                break;
        }
        return false;
    }

    private String zzd(char c) throws IOException {
        char[] cArr = this.zzcsp;
        StringBuilder sb = new StringBuilder();
        do {
            int i = this.pos;
            int i2 = this.limit;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.pos = i4;
                    sb.append(cArr, i, (i4 - i) - 1);
                    return sb.toString();
                }
                if (c2 == '\\') {
                    this.pos = i4;
                    sb.append(cArr, i, (i4 - i) - 1);
                    sb.append(zzadZ());
                    i = this.pos;
                    i2 = this.limit;
                    i4 = i;
                } else if (c2 == '\n') {
                    this.zzcsq++;
                    this.zzcsr = i4;
                }
                i3 = i4;
            }
            sb.append(cArr, i, i3 - i);
            this.pos = i3;
        } while (zzqV(1));
        throw zzjY("Unterminated string");
    }

    private void zze(char c) throws IOException {
        char[] cArr = this.zzcsp;
        do {
            int i = this.pos;
            int i2 = this.limit;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.pos = i4;
                    return;
                }
                if (c2 == '\\') {
                    this.pos = i4;
                    zzadZ();
                    i4 = this.pos;
                    i2 = this.limit;
                } else if (c2 == '\n') {
                    this.zzcsq++;
                    this.zzcsr = i4;
                }
                i3 = i4;
            }
            this.pos = i3;
        } while (zzqV(1));
        throw zzjY("Unterminated string");
    }

    private boolean zzjX(String str) throws IOException {
        while (true) {
            if (this.pos + str.length() <= this.limit || zzqV(str.length())) {
                if (this.zzcsp[this.pos] != '\n') {
                    for (int i = 0; i < str.length(); i++) {
                        if (this.zzcsp[this.pos + i] == str.charAt(i)) {
                        }
                    }
                    return true;
                }
                this.zzcsq++;
                this.zzcsr = this.pos + 1;
                this.pos++;
            } else {
                return false;
            }
        }
    }

    private IOException zzjY(String str) throws IOException {
        int lineNumber = getLineNumber();
        int columnNumber = getColumnNumber();
        String path = getPath();
        throw new zzbwk(new StringBuilder(String.valueOf(str).length() + 45 + String.valueOf(path).length()).append(str).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
    }

    private void zzqU(int i) {
        if (this.zzcsx == this.zzcsw.length) {
            int[] iArr = new int[this.zzcsx * 2];
            int[] iArr2 = new int[this.zzcsx * 2];
            String[] strArr = new String[this.zzcsx * 2];
            System.arraycopy(this.zzcsw, 0, iArr, 0, this.zzcsx);
            System.arraycopy(this.zzcsz, 0, iArr2, 0, this.zzcsx);
            System.arraycopy(this.zzcsy, 0, strArr, 0, this.zzcsx);
            this.zzcsw = iArr;
            this.zzcsz = iArr2;
            this.zzcsy = strArr;
        }
        int[] iArr3 = this.zzcsw;
        int i2 = this.zzcsx;
        this.zzcsx = i2 + 1;
        iArr3[i2] = i;
    }

    private boolean zzqV(int i) throws IOException {
        char[] cArr = this.zzcsp;
        this.zzcsr -= this.pos;
        if (this.limit != this.pos) {
            this.limit -= this.pos;
            System.arraycopy(cArr, this.pos, cArr, 0, this.limit);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            int read = this.in.read(cArr, this.limit, cArr.length - this.limit);
            if (read == -1) {
                return false;
            }
            this.limit = read + this.limit;
            if (this.zzcsq == 0 && this.zzcsr == 0 && this.limit > 0 && cArr[0] == 65279) {
                this.pos++;
                this.zzcsr++;
                i++;
            }
        } while (this.limit < i);
        return true;
    }

    public void beginArray() throws IOException {
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        if (i == 3) {
            zzqU(1);
            this.zzcsz[this.zzcsx - 1] = 0;
            this.zzcss = 0;
            return;
        }
        String valueOf = String.valueOf(zzadF());
        int lineNumber = getLineNumber();
        int columnNumber = getColumnNumber();
        String path = getPath();
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 74 + String.valueOf(path).length()).append("Expected BEGIN_ARRAY but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
    }

    public void beginObject() throws IOException {
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        if (i == 1) {
            zzqU(3);
            this.zzcss = 0;
            return;
        }
        String valueOf = String.valueOf(zzadF());
        int lineNumber = getLineNumber();
        int columnNumber = getColumnNumber();
        String path = getPath();
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 75 + String.valueOf(path).length()).append("Expected BEGIN_OBJECT but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.zzcss = 0;
        this.zzcsw[0] = 8;
        this.zzcsx = 1;
        this.in.close();
    }

    public void endArray() throws IOException {
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        if (i != 4) {
            String valueOf = String.valueOf(zzadF());
            int lineNumber = getLineNumber();
            int columnNumber = getColumnNumber();
            String path = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 72 + String.valueOf(path).length()).append("Expected END_ARRAY but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
        }
        this.zzcsx--;
        int[] iArr = this.zzcsz;
        int i2 = this.zzcsx - 1;
        iArr[i2] = iArr[i2] + 1;
        this.zzcss = 0;
    }

    public void endObject() throws IOException {
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        if (i != 2) {
            String valueOf = String.valueOf(zzadF());
            int lineNumber = getLineNumber();
            int columnNumber = getColumnNumber();
            String path = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 73 + String.valueOf(path).length()).append("Expected END_OBJECT but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
        }
        this.zzcsx--;
        this.zzcsy[this.zzcsx] = null;
        int[] iArr = this.zzcsz;
        int i2 = this.zzcsx - 1;
        iArr[i2] = iArr[i2] + 1;
        this.zzcss = 0;
    }

    public String getPath() {
        StringBuilder append = new StringBuilder().append('$');
        int i = this.zzcsx;
        for (int i2 = 0; i2 < i; i2++) {
            switch (this.zzcsw[i2]) {
                case 1:
                case 2:
                    append.append('[').append(this.zzcsz[i2]).append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    append.append('.');
                    if (this.zzcsy[i2] != null) {
                        append.append(this.zzcsy[i2]);
                        break;
                    } else {
                        break;
                    }
            }
        }
        return append.toString();
    }

    public boolean hasNext() throws IOException {
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        return (i == 2 || i == 4) ? false : true;
    }

    public final boolean isLenient() {
        return this.zzcso;
    }

    public boolean nextBoolean() throws IOException {
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        if (i == 5) {
            this.zzcss = 0;
            int[] iArr = this.zzcsz;
            int i2 = this.zzcsx - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        } else if (i == 6) {
            this.zzcss = 0;
            int[] iArr2 = this.zzcsz;
            int i3 = this.zzcsx - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return false;
        } else {
            String valueOf = String.valueOf(zzadF());
            int lineNumber = getLineNumber();
            int columnNumber = getColumnNumber();
            String path = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 72 + String.valueOf(path).length()).append("Expected a boolean but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
        }
    }

    public double nextDouble() throws IOException {
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        if (i == 15) {
            this.zzcss = 0;
            int[] iArr = this.zzcsz;
            int i2 = this.zzcsx - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.zzcst;
        }
        if (i == 16) {
            this.zzcsv = new String(this.zzcsp, this.pos, this.zzcsu);
            this.pos += this.zzcsu;
        } else if (i == 8 || i == 9) {
            this.zzcsv = zzd(i == 8 ? '\'' : '\"');
        } else if (i == 10) {
            this.zzcsv = zzadV();
        } else if (i != 11) {
            String valueOf = String.valueOf(zzadF());
            int lineNumber = getLineNumber();
            int columnNumber = getColumnNumber();
            String path = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 71 + String.valueOf(path).length()).append("Expected a double but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
        }
        this.zzcss = 11;
        double parseDouble = Double.parseDouble(this.zzcsv);
        if (!this.zzcso && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            int lineNumber2 = getLineNumber();
            int columnNumber2 = getColumnNumber();
            String path2 = getPath();
            throw new zzbwk(new StringBuilder(String.valueOf(path2).length() + 102).append("JSON forbids NaN and infinities: ").append(parseDouble).append(" at line ").append(lineNumber2).append(" column ").append(columnNumber2).append(" path ").append(path2).toString());
        }
        this.zzcsv = null;
        this.zzcss = 0;
        int[] iArr2 = this.zzcsz;
        int i3 = this.zzcsx - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return parseDouble;
    }

    public int nextInt() throws IOException {
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        if (i == 15) {
            int i2 = (int) this.zzcst;
            if (this.zzcst != i2) {
                long j = this.zzcst;
                int lineNumber = getLineNumber();
                int columnNumber = getColumnNumber();
                String path = getPath();
                throw new NumberFormatException(new StringBuilder(String.valueOf(path).length() + 89).append("Expected an int but was ").append(j).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
            }
            this.zzcss = 0;
            int[] iArr = this.zzcsz;
            int i3 = this.zzcsx - 1;
            iArr[i3] = iArr[i3] + 1;
            return i2;
        }
        if (i == 16) {
            this.zzcsv = new String(this.zzcsp, this.pos, this.zzcsu);
            this.pos += this.zzcsu;
        } else if (i != 8 && i != 9) {
            String valueOf = String.valueOf(zzadF());
            int lineNumber2 = getLineNumber();
            int columnNumber2 = getColumnNumber();
            String path2 = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 69 + String.valueOf(path2).length()).append("Expected an int but was ").append(valueOf).append(" at line ").append(lineNumber2).append(" column ").append(columnNumber2).append(" path ").append(path2).toString());
        } else {
            this.zzcsv = zzd(i == 8 ? '\'' : '\"');
            try {
                int parseInt = Integer.parseInt(this.zzcsv);
                this.zzcss = 0;
                int[] iArr2 = this.zzcsz;
                int i4 = this.zzcsx - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        }
        this.zzcss = 11;
        double parseDouble = Double.parseDouble(this.zzcsv);
        int i5 = (int) parseDouble;
        if (i5 != parseDouble) {
            String str = this.zzcsv;
            int lineNumber3 = getLineNumber();
            int columnNumber3 = getColumnNumber();
            String path3 = getPath();
            throw new NumberFormatException(new StringBuilder(String.valueOf(str).length() + 69 + String.valueOf(path3).length()).append("Expected an int but was ").append(str).append(" at line ").append(lineNumber3).append(" column ").append(columnNumber3).append(" path ").append(path3).toString());
        }
        this.zzcsv = null;
        this.zzcss = 0;
        int[] iArr3 = this.zzcsz;
        int i6 = this.zzcsx - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return i5;
    }

    public long nextLong() throws IOException {
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        if (i == 15) {
            this.zzcss = 0;
            int[] iArr = this.zzcsz;
            int i2 = this.zzcsx - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.zzcst;
        }
        if (i == 16) {
            this.zzcsv = new String(this.zzcsp, this.pos, this.zzcsu);
            this.pos += this.zzcsu;
        } else if (i != 8 && i != 9) {
            String valueOf = String.valueOf(zzadF());
            int lineNumber = getLineNumber();
            int columnNumber = getColumnNumber();
            String path = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 69 + String.valueOf(path).length()).append("Expected a long but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
        } else {
            this.zzcsv = zzd(i == 8 ? '\'' : '\"');
            try {
                long parseLong = Long.parseLong(this.zzcsv);
                this.zzcss = 0;
                int[] iArr2 = this.zzcsz;
                int i3 = this.zzcsx - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        }
        this.zzcss = 11;
        double parseDouble = Double.parseDouble(this.zzcsv);
        long j = (long) parseDouble;
        if (j != parseDouble) {
            String str = this.zzcsv;
            int lineNumber2 = getLineNumber();
            int columnNumber2 = getColumnNumber();
            String path2 = getPath();
            throw new NumberFormatException(new StringBuilder(String.valueOf(str).length() + 69 + String.valueOf(path2).length()).append("Expected a long but was ").append(str).append(" at line ").append(lineNumber2).append(" column ").append(columnNumber2).append(" path ").append(path2).toString());
        }
        this.zzcsv = null;
        this.zzcss = 0;
        int[] iArr3 = this.zzcsz;
        int i4 = this.zzcsx - 1;
        iArr3[i4] = iArr3[i4] + 1;
        return j;
    }

    public String nextName() throws IOException {
        String zzd;
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        if (i == 14) {
            zzd = zzadV();
        } else if (i == 12) {
            zzd = zzd('\'');
        } else if (i != 13) {
            String valueOf = String.valueOf(zzadF());
            int lineNumber = getLineNumber();
            int columnNumber = getColumnNumber();
            String path = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 69 + String.valueOf(path).length()).append("Expected a name but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
        } else {
            zzd = zzd('\"');
        }
        this.zzcss = 0;
        this.zzcsy[this.zzcsx - 1] = zzd;
        return zzd;
    }

    public void nextNull() throws IOException {
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        if (i == 7) {
            this.zzcss = 0;
            int[] iArr = this.zzcsz;
            int i2 = this.zzcsx - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        String valueOf = String.valueOf(zzadF());
        int lineNumber = getLineNumber();
        int columnNumber = getColumnNumber();
        String path = getPath();
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 67 + String.valueOf(path).length()).append("Expected null but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
    }

    public String nextString() throws IOException {
        String str;
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        if (i == 10) {
            str = zzadV();
        } else if (i == 8) {
            str = zzd('\'');
        } else if (i == 9) {
            str = zzd('\"');
        } else if (i == 11) {
            str = this.zzcsv;
            this.zzcsv = null;
        } else if (i == 15) {
            str = Long.toString(this.zzcst);
        } else if (i != 16) {
            String valueOf = String.valueOf(zzadF());
            int lineNumber = getLineNumber();
            int columnNumber = getColumnNumber();
            String path = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 71 + String.valueOf(path).length()).append("Expected a string but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
        } else {
            str = new String(this.zzcsp, this.pos, this.zzcsu);
            this.pos += this.zzcsu;
        }
        this.zzcss = 0;
        int[] iArr = this.zzcsz;
        int i2 = this.zzcsx - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    public final void setLenient(boolean z) {
        this.zzcso = z;
    }

    public void skipValue() throws IOException {
        int i = 0;
        do {
            int i2 = this.zzcss;
            if (i2 == 0) {
                i2 = zzadS();
            }
            if (i2 == 3) {
                zzqU(1);
                i++;
            } else if (i2 == 1) {
                zzqU(3);
                i++;
            } else if (i2 == 4) {
                this.zzcsx--;
                i--;
            } else if (i2 == 2) {
                this.zzcsx--;
                i--;
            } else if (i2 == 14 || i2 == 10) {
                zzadW();
            } else if (i2 == 8 || i2 == 12) {
                zze('\'');
            } else if (i2 == 9 || i2 == 13) {
                zze('\"');
            } else if (i2 == 16) {
                this.pos += this.zzcsu;
            }
            this.zzcss = 0;
        } while (i != 0);
        int[] iArr = this.zzcsz;
        int i3 = this.zzcsx - 1;
        iArr[i3] = iArr[i3] + 1;
        this.zzcsy[this.zzcsx - 1] = "null";
    }

    public String toString() {
        String valueOf = String.valueOf(getClass().getSimpleName());
        int lineNumber = getLineNumber();
        return new StringBuilder(String.valueOf(valueOf).length() + 39).append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(getColumnNumber()).toString();
    }

    public zzbwi zzadF() throws IOException {
        int i = this.zzcss;
        if (i == 0) {
            i = zzadS();
        }
        switch (i) {
            case 1:
                return zzbwi.BEGIN_OBJECT;
            case 2:
                return zzbwi.END_OBJECT;
            case 3:
                return zzbwi.BEGIN_ARRAY;
            case 4:
                return zzbwi.END_ARRAY;
            case 5:
            case 6:
                return zzbwi.BOOLEAN;
            case 7:
                return zzbwi.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return zzbwi.STRING;
            case 12:
            case 13:
            case 14:
                return zzbwi.NAME;
            case 15:
            case 16:
                return zzbwi.NUMBER;
            case 17:
                return zzbwi.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }
}
