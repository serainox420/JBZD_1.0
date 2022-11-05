package com.google.android.exoplayer2.text.e;

import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.l;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: WebvttParserUtil.java */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3454a = Pattern.compile("^NOTE(( |\t).*)?$");
    private static final Pattern b = Pattern.compile("^\ufeff?WEBVTT(( |\t).*)?$");

    public static void a(l lVar) throws SubtitleDecoderException {
        String x = lVar.x();
        if (x == null || !b.matcher(x).matches()) {
            throw new SubtitleDecoderException("Expected WEBVTT. Got " + x);
        }
    }

    public static long a(String str) throws NumberFormatException {
        long j = 0;
        String[] split = str.split("\\.", 2);
        for (String str2 : split[0].split(":")) {
            j = (j * 60) + Long.parseLong(str2);
        }
        return (Long.parseLong(split[1]) + (j * 1000)) * 1000;
    }

    public static float b(String str) throws NumberFormatException {
        if (!str.endsWith("%")) {
            throw new NumberFormatException("Percentages must end with %");
        }
        return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
    }

    public static Matcher b(l lVar) {
        String x;
        while (true) {
            String x2 = lVar.x();
            if (x2 != null) {
                if (f3454a.matcher(x2).matches()) {
                    do {
                        x = lVar.x();
                        if (x != null) {
                        }
                    } while (!x.isEmpty());
                } else {
                    Matcher matcher = f.f3450a.matcher(x2);
                    if (matcher.matches()) {
                        return matcher;
                    }
                }
            } else {
                return null;
            }
        }
    }
}
