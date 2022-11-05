package com.google.android.exoplayer2.text.e;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.flurry.android.AdCreative;
import com.google.android.exoplayer2.text.e.e;
import com.google.android.exoplayer2.util.l;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WebvttCueParser.java */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f3450a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    private static final Pattern b = Pattern.compile("(\\S+?):(\\S+)");
    private final StringBuilder c = new StringBuilder();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(l lVar, e.a aVar, List<d> list) {
        String x = lVar.x();
        Matcher matcher = f3450a.matcher(x);
        if (matcher.matches()) {
            return a(null, matcher, lVar, aVar, this.c, list);
        }
        Matcher matcher2 = f3450a.matcher(lVar.x());
        if (matcher2.matches()) {
            return a(x.trim(), matcher2, lVar, aVar, this.c, list);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, e.a aVar) {
        Matcher matcher = b.matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            try {
                if ("line".equals(group)) {
                    b(group2, aVar);
                } else if ("align".equals(group)) {
                    aVar.a(b(group2));
                } else if ("position".equals(group)) {
                    c(group2, aVar);
                } else if ("size".equals(group)) {
                    aVar.c(h.b(group2));
                } else {
                    Log.w("WebvttCueParser", "Unknown cue setting " + group + ":" + group2);
                }
            } catch (NumberFormatException e) {
                Log.w("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2, e.a aVar, List<d> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Stack stack = new Stack();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str2.length()) {
            char charAt = str2.charAt(i);
            switch (charAt) {
                case '&':
                    int indexOf = str2.indexOf(59, i + 1);
                    int indexOf2 = str2.indexOf(32, i + 1);
                    if (indexOf == -1) {
                        indexOf = indexOf2;
                    } else if (indexOf2 != -1) {
                        indexOf = Math.min(indexOf, indexOf2);
                    }
                    if (indexOf != -1) {
                        a(str2.substring(i + 1, indexOf), spannableStringBuilder);
                        if (indexOf == indexOf2) {
                            spannableStringBuilder.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                        }
                        i = indexOf + 1;
                        break;
                    } else {
                        spannableStringBuilder.append(charAt);
                        i++;
                        break;
                    }
                case '<':
                    if (i + 1 >= str2.length()) {
                        i++;
                        break;
                    } else {
                        boolean z = str2.charAt(i + 1) == '/';
                        int a2 = a(str2, i + 1);
                        boolean z2 = str2.charAt(a2 + (-2)) == '/';
                        String substring = str2.substring((z ? 2 : 1) + i, z2 ? a2 - 2 : a2 - 1);
                        String d = d(substring);
                        if (d != null) {
                            if (!c(d)) {
                                i = a2;
                                break;
                            } else if (z) {
                                while (!stack.isEmpty()) {
                                    a aVar2 = (a) stack.pop();
                                    a(str, aVar2, spannableStringBuilder, list, arrayList);
                                    if (aVar2.f3451a.equals(d)) {
                                        i = a2;
                                        break;
                                    }
                                }
                                i = a2;
                            } else if (!z2) {
                                stack.push(a.a(substring, spannableStringBuilder.length()));
                                i = a2;
                                break;
                            }
                        }
                        i = a2;
                        break;
                    }
                default:
                    spannableStringBuilder.append(charAt);
                    i++;
                    break;
            }
        }
        while (!stack.isEmpty()) {
            a(str, (a) stack.pop(), spannableStringBuilder, list, arrayList);
        }
        a(str, a.a(), spannableStringBuilder, list, arrayList);
        aVar.a(spannableStringBuilder);
    }

    private static boolean a(String str, Matcher matcher, l lVar, e.a aVar, StringBuilder sb, List<d> list) {
        try {
            aVar.a(h.a(matcher.group(1))).b(h.a(matcher.group(2)));
            a(matcher.group(3), aVar);
            sb.setLength(0);
            while (true) {
                String x = lVar.x();
                if (x == null || x.isEmpty()) {
                    break;
                }
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(x.trim());
            }
            a(str, sb.toString(), aVar, list);
            return true;
        } catch (NumberFormatException e) {
            Log.w("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return false;
        }
    }

    private static void b(String str, e.a aVar) throws NumberFormatException {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            aVar.b(a(str.substring(indexOf + 1)));
            str = str.substring(0, indexOf);
        } else {
            aVar.b(Integer.MIN_VALUE);
        }
        if (str.endsWith("%")) {
            aVar.a(h.b(str)).a(0);
            return;
        }
        int parseInt = Integer.parseInt(str);
        if (parseInt < 0) {
            parseInt--;
        }
        aVar.a(parseInt).a(1);
    }

    private static void c(String str, e.a aVar) throws NumberFormatException {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            aVar.c(a(str.substring(indexOf + 1)));
            str = str.substring(0, indexOf);
        } else {
            aVar.c(Integer.MIN_VALUE);
        }
        aVar.b(h.b(str));
    }

    private static int a(String str) {
        char c = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    c = 1;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals(AdCreative.kAlignmentMiddle)) {
                    c = 2;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c = 3;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START)) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 0;
            case 1:
            case 2:
                return 1;
            case 3:
                return 2;
            default:
                Log.w("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static Layout.Alignment b(String str) {
        char c = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    c = 2;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals(AdCreative.kAlignmentMiddle)) {
                    c = 3;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c = 4;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(AdCreative.kAlignmentLeft)) {
                    c = 1;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(AdCreative.kAlignmentRight)) {
                    c = 5;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START)) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 3:
                return Layout.Alignment.ALIGN_CENTER;
            case 4:
            case 5:
                return Layout.Alignment.ALIGN_OPPOSITE;
            default:
                Log.w("WebvttCueParser", "Invalid alignment value: " + str);
                return null;
        }
    }

    private static int a(String str, int i) {
        int indexOf = str.indexOf(62, i);
        return indexOf == -1 ? str.length() : indexOf + 1;
    }

    private static void a(String str, SpannableStringBuilder spannableStringBuilder) {
        char c = 65535;
        switch (str.hashCode()) {
            case 3309:
                if (str.equals("gt")) {
                    c = 1;
                    break;
                }
                break;
            case 3464:
                if (str.equals("lt")) {
                    c = 0;
                    break;
                }
                break;
            case 96708:
                if (str.equals("amp")) {
                    c = 3;
                    break;
                }
                break;
            case 3374865:
                if (str.equals("nbsp")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                spannableStringBuilder.append('<');
                return;
            case 1:
                spannableStringBuilder.append('>');
                return;
            case 2:
                spannableStringBuilder.append(' ');
                return;
            case 3:
                spannableStringBuilder.append('&');
                return;
            default:
                Log.w("WebvttCueParser", "ignoring unsupported entity: '&" + str + ";'");
                return;
        }
    }

    private static boolean c(String str) {
        char c = 65535;
        switch (str.hashCode()) {
            case 98:
                if (str.equals("b")) {
                    c = 0;
                    break;
                }
                break;
            case 99:
                if (str.equals("c")) {
                    c = 1;
                    break;
                }
                break;
            case 105:
                if (str.equals("i")) {
                    c = 2;
                    break;
                }
                break;
            case 117:
                if (str.equals("u")) {
                    c = 4;
                    break;
                }
                break;
            case 118:
                if (str.equals("v")) {
                    c = 5;
                    break;
                }
                break;
            case 3314158:
                if (str.equals(PubMaticConstants.LANGUAGE)) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            default:
                return false;
        }
    }

    private static void a(String str, a aVar, SpannableStringBuilder spannableStringBuilder, List<d> list, List<b> list2) {
        int i = aVar.b;
        int length = spannableStringBuilder.length();
        String str2 = aVar.f3451a;
        char c = 65535;
        switch (str2.hashCode()) {
            case 0:
                if (str2.equals("")) {
                    c = 6;
                    break;
                }
                break;
            case 98:
                if (str2.equals("b")) {
                    c = 0;
                    break;
                }
                break;
            case 99:
                if (str2.equals("c")) {
                    c = 3;
                    break;
                }
                break;
            case 105:
                if (str2.equals("i")) {
                    c = 1;
                    break;
                }
                break;
            case 117:
                if (str2.equals("u")) {
                    c = 2;
                    break;
                }
                break;
            case 118:
                if (str2.equals("v")) {
                    c = 5;
                    break;
                }
                break;
            case 3314158:
                if (str2.equals(PubMaticConstants.LANGUAGE)) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                spannableStringBuilder.setSpan(new StyleSpan(1), i, length, 33);
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(2), i, length, 33);
                break;
            case 2:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                break;
            case 3:
            case 4:
            case 5:
            case 6:
                break;
            default:
                return;
        }
        list2.clear();
        a(list, str, aVar, list2);
        int size = list2.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(spannableStringBuilder, list2.get(i2).b, i, length);
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, d dVar, int i, int i2) {
        if (dVar != null) {
            if (dVar.b() != -1) {
                spannableStringBuilder.setSpan(new StyleSpan(dVar.b()), i, i2, 33);
            }
            if (dVar.c()) {
                spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
            }
            if (dVar.d()) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
            }
            if (dVar.g()) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(dVar.f()), i, i2, 33);
            }
            if (dVar.i()) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(dVar.h()), i, i2, 33);
            }
            if (dVar.e() != null) {
                spannableStringBuilder.setSpan(new TypefaceSpan(dVar.e()), i, i2, 33);
            }
            if (dVar.j() != null) {
                spannableStringBuilder.setSpan(new AlignmentSpan.Standard(dVar.j()), i, i2, 33);
            }
            switch (dVar.k()) {
                case 1:
                    spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) dVar.l(), true), i, i2, 33);
                    return;
                case 2:
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(dVar.l()), i, i2, 33);
                    return;
                case 3:
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(dVar.l() / 100.0f), i, i2, 33);
                    return;
                default:
                    return;
            }
        }
    }

    private static String d(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return null;
        }
        return trim.split("[ \\.]")[0];
    }

    private static void a(List<d> list, String str, a aVar, List<b> list2) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            d dVar = list.get(i);
            int a2 = dVar.a(str, aVar.f3451a, aVar.d, aVar.c);
            if (a2 > 0) {
                list2.add(new b(a2, dVar));
            }
        }
        Collections.sort(list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebvttCueParser.java */
    /* loaded from: classes2.dex */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        public final int f3452a;
        public final d b;

        public b(int i, d dVar) {
            this.f3452a = i;
            this.b = dVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(b bVar) {
            return this.f3452a - bVar.f3452a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebvttCueParser.java */
    /* loaded from: classes2.dex */
    public static final class a {
        private static final String[] e = new String[0];

        /* renamed from: a  reason: collision with root package name */
        public final String f3451a;
        public final int b;
        public final String c;
        public final String[] d;

        private a(String str, int i, String str2, String[] strArr) {
            this.b = i;
            this.f3451a = str;
            this.c = str2;
            this.d = strArr;
        }

        public static a a(String str, int i) {
            String substring;
            String str2;
            String[] strArr;
            String trim = str.trim();
            if (trim.isEmpty()) {
                return null;
            }
            int indexOf = trim.indexOf(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            if (indexOf == -1) {
                substring = trim;
                str2 = "";
            } else {
                String trim2 = trim.substring(indexOf).trim();
                substring = trim.substring(0, indexOf);
                str2 = trim2;
            }
            String[] split = substring.split("\\.");
            String str3 = split[0];
            if (split.length > 1) {
                strArr = (String[]) Arrays.copyOfRange(split, 1, split.length);
            } else {
                strArr = e;
            }
            return new a(str3, i, str2, strArr);
        }

        public static a a() {
            return new a("", 0, "", new String[0]);
        }
    }
}
