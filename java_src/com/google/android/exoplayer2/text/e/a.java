package com.google.android.exoplayer2.text.e;

import android.text.TextUtils;
import com.google.android.exoplayer2.util.l;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: CssParser.java */
/* loaded from: classes2.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3444a = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    private final l b = new l();
    private final StringBuilder c = new StringBuilder();

    public d a(l lVar) {
        this.c.setLength(0);
        int d = lVar.d();
        c(lVar);
        this.b.a(lVar.f3511a, lVar.d());
        this.b.c(d);
        String b = b(this.b, this.c);
        if (b == null || !"{".equals(a(this.b, this.c))) {
            return null;
        }
        d dVar = new d();
        a(dVar, b);
        boolean z = false;
        String str = null;
        while (!z) {
            int d2 = this.b.d();
            str = a(this.b, this.c);
            z = str == null || "}".equals(str);
            if (!z) {
                this.b.c(d2);
                a(this.b, dVar, this.c);
            }
        }
        if ("}".equals(str)) {
            return dVar;
        }
        return null;
    }

    private static String b(l lVar, StringBuilder sb) {
        b(lVar);
        if (lVar.b() >= 5 && "::cue".equals(lVar.e(5))) {
            int d = lVar.d();
            String a2 = a(lVar, sb);
            if (a2 == null) {
                return null;
            }
            if ("{".equals(a2)) {
                lVar.c(d);
                return "";
            }
            String d2 = "(".equals(a2) ? d(lVar) : null;
            String a3 = a(lVar, sb);
            if (")".equals(a3) && a3 != null) {
                return d2;
            }
            return null;
        }
        return null;
    }

    private static String d(l lVar) {
        int d = lVar.d();
        int c = lVar.c();
        int i = d;
        boolean z = false;
        while (i < c && !z) {
            int i2 = i + 1;
            z = ((char) lVar.f3511a[i]) == ')';
            i = i2;
        }
        return lVar.e((i - 1) - lVar.d()).trim();
    }

    private static void a(l lVar, d dVar, StringBuilder sb) {
        b(lVar);
        String d = d(lVar, sb);
        if (!"".equals(d) && ":".equals(a(lVar, sb))) {
            b(lVar);
            String c = c(lVar, sb);
            if (c != null && !"".equals(c)) {
                int d2 = lVar.d();
                String a2 = a(lVar, sb);
                if (!";".equals(a2)) {
                    if ("}".equals(a2)) {
                        lVar.c(d2);
                    } else {
                        return;
                    }
                }
                if ("color".equals(d)) {
                    dVar.a(com.google.android.exoplayer2.util.d.b(c));
                } else if ("background-color".equals(d)) {
                    dVar.b(com.google.android.exoplayer2.util.d.b(c));
                } else if ("text-decoration".equals(d)) {
                    if ("underline".equals(c)) {
                        dVar.a(true);
                    }
                } else if ("font-family".equals(d)) {
                    dVar.d(c);
                } else if ("font-weight".equals(d)) {
                    if ("bold".equals(c)) {
                        dVar.b(true);
                    }
                } else if ("font-style".equals(d) && "italic".equals(c)) {
                    dVar.c(true);
                }
            }
        }
    }

    static void b(l lVar) {
        boolean z = true;
        while (lVar.b() > 0 && z) {
            z = e(lVar) || f(lVar);
        }
    }

    static String a(l lVar, StringBuilder sb) {
        b(lVar);
        if (lVar.b() == 0) {
            return null;
        }
        String d = d(lVar, sb);
        return "".equals(d) ? "" + ((char) lVar.f()) : d;
    }

    private static boolean e(l lVar) {
        switch (a(lVar, lVar.d())) {
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
                lVar.d(1);
                return true;
            default:
                return false;
        }
    }

    static void c(l lVar) {
        do {
        } while (!TextUtils.isEmpty(lVar.x()));
    }

    private static char a(l lVar, int i) {
        return (char) lVar.f3511a[i];
    }

    private static String c(l lVar, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int d = lVar.d();
            String a2 = a(lVar, sb);
            if (a2 == null) {
                return null;
            }
            if ("}".equals(a2) || ";".equals(a2)) {
                lVar.c(d);
                z = true;
            } else {
                sb2.append(a2);
            }
        }
        return sb2.toString();
    }

    private static boolean f(l lVar) {
        int d = lVar.d();
        int c = lVar.c();
        byte[] bArr = lVar.f3511a;
        if (d + 2 <= c) {
            int i = d + 1;
            if (bArr[d] == 47) {
                int i2 = i + 1;
                if (bArr[i] == 42) {
                    while (true) {
                        int i3 = i2;
                        if (i3 + 1 < c) {
                            i2 = i3 + 1;
                            if (((char) bArr[i3]) == '*' && ((char) bArr[i2]) == '/') {
                                c = i2 + 1;
                                i2 = c;
                            }
                        } else {
                            lVar.d(c - lVar.d());
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private static String d(l lVar, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int d = lVar.d();
        int c = lVar.c();
        while (d < c && !z) {
            char c2 = (char) lVar.f3511a[d];
            if ((c2 >= 'A' && c2 <= 'Z') || ((c2 >= 'a' && c2 <= 'z') || ((c2 >= '0' && c2 <= '9') || c2 == '#' || c2 == '-' || c2 == '.' || c2 == '_'))) {
                d++;
                sb.append(c2);
            } else {
                z = true;
            }
        }
        lVar.d(d - lVar.d());
        return sb.toString();
    }

    private void a(d dVar, String str) {
        if (!"".equals(str)) {
            int indexOf = str.indexOf(91);
            if (indexOf != -1) {
                Matcher matcher = f3444a.matcher(str.substring(indexOf));
                if (matcher.matches()) {
                    dVar.c(matcher.group(1));
                }
                str = str.substring(0, indexOf);
            }
            String[] split = str.split("\\.");
            String str2 = split[0];
            int indexOf2 = str2.indexOf(35);
            if (indexOf2 != -1) {
                dVar.b(str2.substring(0, indexOf2));
                dVar.a(str2.substring(indexOf2 + 1));
            } else {
                dVar.b(str2);
            }
            if (split.length > 1) {
                dVar.a((String[]) Arrays.copyOfRange(split, 1, split.length));
            }
        }
    }
}
