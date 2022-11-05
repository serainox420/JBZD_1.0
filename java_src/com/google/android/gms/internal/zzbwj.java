package com.google.android.gms.internal;

import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes2.dex */
public class zzbwj implements Closeable, Flushable {
    private static final String[] zzcsL = new String[128];
    private static final String[] zzcsM;
    private final Writer out;
    private String separator;
    private boolean zzcpd;
    private boolean zzcpe;
    private String zzcsN;
    private String zzcsO;
    private boolean zzcso;
    private int[] zzcsw = new int[32];
    private int zzcsx = 0;

    static {
        for (int i = 0; i <= 31; i++) {
            zzcsL[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        zzcsL[34] = "\\\"";
        zzcsL[92] = "\\\\";
        zzcsL[9] = "\\t";
        zzcsL[8] = "\\b";
        zzcsL[10] = "\\n";
        zzcsL[13] = "\\r";
        zzcsL[12] = "\\f";
        zzcsM = (String[]) zzcsL.clone();
        zzcsM[60] = "\\u003c";
        zzcsM[62] = "\\u003e";
        zzcsM[38] = "\\u0026";
        zzcsM[61] = "\\u003d";
        zzcsM[39] = "\\u0027";
    }

    public zzbwj(Writer writer) {
        zzqU(6);
        this.separator = ":";
        this.zzcpd = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.out = writer;
    }

    private int zzaed() {
        if (this.zzcsx == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        return this.zzcsw[this.zzcsx - 1];
    }

    private void zzaee() throws IOException {
        if (this.zzcsO != null) {
            zzaeg();
            zzjZ(this.zzcsO);
            this.zzcsO = null;
        }
    }

    private void zzaef() throws IOException {
        if (this.zzcsN == null) {
            return;
        }
        this.out.write("\n");
        int i = this.zzcsx;
        for (int i2 = 1; i2 < i; i2++) {
            this.out.write(this.zzcsN);
        }
    }

    private void zzaeg() throws IOException {
        int zzaed = zzaed();
        if (zzaed == 5) {
            this.out.write(44);
        } else if (zzaed != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        zzaef();
        zzqW(4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void zzbp(boolean z) throws IOException {
        switch (zzaed()) {
            case 1:
                zzqW(2);
                zzaef();
                return;
            case 2:
                this.out.append(',');
                zzaef();
                return;
            case 3:
            case 5:
            default:
                throw new IllegalStateException("Nesting problem.");
            case 4:
                this.out.append((CharSequence) this.separator);
                zzqW(5);
                return;
            case 6:
                break;
            case 7:
                if (!this.zzcso) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                break;
        }
        if (this.zzcso || z) {
            zzqW(7);
            return;
        }
        throw new IllegalStateException("JSON must start with an array or an object.");
    }

    private zzbwj zzc(int i, int i2, String str) throws IOException {
        int zzaed = zzaed();
        if (zzaed == i2 || zzaed == i) {
            if (this.zzcsO != null) {
                String valueOf = String.valueOf(this.zzcsO);
                throw new IllegalStateException(valueOf.length() != 0 ? "Dangling name: ".concat(valueOf) : new String("Dangling name: "));
            }
            this.zzcsx--;
            if (zzaed == i2) {
                zzaef();
            }
            this.out.write(str);
            return this;
        }
        throw new IllegalStateException("Nesting problem.");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void zzjZ(String str) throws IOException {
        String str2;
        int i = 0;
        String[] strArr = this.zzcpe ? zzcsM : zzcsL;
        this.out.write("\"");
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                str2 = strArr[charAt];
                if (str2 == null) {
                }
                if (i < i2) {
                    this.out.write(str, i, i2 - i);
                }
                this.out.write(str2);
                i = i2 + 1;
            } else {
                if (charAt == 8232) {
                    str2 = "\\u2028";
                } else if (charAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i < i2) {
                }
                this.out.write(str2);
                i = i2 + 1;
            }
        }
        if (i < length) {
            this.out.write(str, i, length - i);
        }
        this.out.write("\"");
    }

    private zzbwj zzp(int i, String str) throws IOException {
        zzbp(true);
        zzqU(i);
        this.out.write(str);
        return this;
    }

    private void zzqU(int i) {
        if (this.zzcsx == this.zzcsw.length) {
            int[] iArr = new int[this.zzcsx * 2];
            System.arraycopy(this.zzcsw, 0, iArr, 0, this.zzcsx);
            this.zzcsw = iArr;
        }
        int[] iArr2 = this.zzcsw;
        int i2 = this.zzcsx;
        this.zzcsx = i2 + 1;
        iArr2[i2] = i;
    }

    private void zzqW(int i) {
        this.zzcsw[this.zzcsx - 1] = i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
        int i = this.zzcsx;
        if (i > 1 || (i == 1 && this.zzcsw[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.zzcsx = 0;
    }

    public void flush() throws IOException {
        if (this.zzcsx == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.out.flush();
    }

    public boolean isLenient() {
        return this.zzcso;
    }

    public final void setIndent(String str) {
        if (str.length() == 0) {
            this.zzcsN = null;
            this.separator = ":";
            return;
        }
        this.zzcsN = str;
        this.separator = ": ";
    }

    public final void setLenient(boolean z) {
        this.zzcso = z;
    }

    public zzbwj zza(Number number) throws IOException {
        if (number == null) {
            return zzadP();
        }
        zzaee();
        String obj = number.toString();
        if (!this.zzcso && (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            String valueOf = String.valueOf(number);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 39).append("Numeric values must be finite, but was ").append(valueOf).toString());
        }
        zzbp(false);
        this.out.append((CharSequence) obj);
        return this;
    }

    public zzbwj zzaY(long j) throws IOException {
        zzaee();
        zzbp(false);
        this.out.write(Long.toString(j));
        return this;
    }

    public zzbwj zzadL() throws IOException {
        zzaee();
        return zzp(1, "[");
    }

    public zzbwj zzadM() throws IOException {
        return zzc(1, 2, "]");
    }

    public zzbwj zzadN() throws IOException {
        zzaee();
        return zzp(3, "{");
    }

    public zzbwj zzadO() throws IOException {
        return zzc(3, 5, "}");
    }

    public zzbwj zzadP() throws IOException {
        if (this.zzcsO != null) {
            if (!this.zzcpd) {
                this.zzcsO = null;
                return this;
            }
            zzaee();
        }
        zzbp(false);
        this.out.write("null");
        return this;
    }

    public final boolean zzaeb() {
        return this.zzcpe;
    }

    public final boolean zzaec() {
        return this.zzcpd;
    }

    public zzbwj zzbl(boolean z) throws IOException {
        zzaee();
        zzbp(false);
        this.out.write(z ? "true" : Consts.False);
        return this;
    }

    public final void zzbn(boolean z) {
        this.zzcpe = z;
    }

    public final void zzbo(boolean z) {
        this.zzcpd = z;
    }

    public zzbwj zzjV(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.zzcsO != null) {
            throw new IllegalStateException();
        }
        if (this.zzcsx == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.zzcsO = str;
        return this;
    }

    public zzbwj zzjW(String str) throws IOException {
        if (str == null) {
            return zzadP();
        }
        zzaee();
        zzbp(false);
        zzjZ(str);
        return this;
    }
}
