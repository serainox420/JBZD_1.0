package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.pubmatic.sdk.common.CommonConstants;
/* compiled from: MimeTypes.java */
/* loaded from: classes2.dex */
public final class i {
    public static boolean a(String str) {
        return "audio".equals(i(str));
    }

    public static boolean b(String str) {
        return AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.equals(i(str));
    }

    public static boolean c(String str) {
        return CommonConstants.RESPONSE_TEXT.equals(i(str));
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : str.split(",")) {
            String f = f(str2);
            if (f != null && b(f)) {
                return f;
            }
        }
        return null;
    }

    public static String e(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : str.split(",")) {
            String f = f(str2);
            if (f != null && a(f)) {
                return f;
            }
        }
        return null;
    }

    public static String f(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.startsWith("avc1") || trim.startsWith("avc3")) {
            return "video/avc";
        }
        if (trim.startsWith("hev1") || trim.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (trim.startsWith("vp9")) {
            return "video/x-vnd.on2.vp9";
        }
        if (trim.startsWith("vp8")) {
            return "video/x-vnd.on2.vp8";
        }
        if (trim.startsWith("mp4a")) {
            return "audio/mp4a-latm";
        }
        if (trim.startsWith("ac-3") || trim.startsWith("dac3")) {
            return "audio/ac3";
        }
        if (trim.startsWith("ec-3") || trim.startsWith("dec3")) {
            return "audio/eac3";
        }
        if (trim.startsWith("dtsc") || trim.startsWith("dtse")) {
            return "audio/vnd.dts";
        }
        if (trim.startsWith("dtsh") || trim.startsWith("dtsl")) {
            return "audio/vnd.dts.hd";
        }
        if (trim.startsWith("opus")) {
            return "audio/opus";
        }
        if (!trim.startsWith("vorbis")) {
            return null;
        }
        return "audio/vorbis";
    }

    public static int g(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (a(str)) {
            return 1;
        }
        if (b(str)) {
            return 2;
        }
        if (c(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str)) {
            return 3;
        }
        return ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-camera-motion".equals(str)) ? 4 : -1;
    }

    public static int h(String str) {
        return g(f(str));
    }

    private static String i(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(47);
        if (indexOf == -1) {
            throw new IllegalArgumentException("Invalid mime type: " + str);
        }
        return str.substring(0, indexOf);
    }
}
