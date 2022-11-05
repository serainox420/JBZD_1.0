package net.gotev.uploadservice;

import android.webkit.MimeTypeMap;
/* compiled from: ContentType.java */
/* loaded from: classes3.dex */
public final class a {
    public static String a(String str) {
        String str2;
        int lastIndexOf = str.lastIndexOf(".") + 1;
        if (lastIndexOf < 0 || lastIndexOf > str.length()) {
            str2 = null;
        } else {
            str2 = str.substring(lastIndexOf);
        }
        if (str2 == null || str2.isEmpty()) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str2.toLowerCase());
        if (mimeTypeFromExtension == null) {
            if ("mp4".equalsIgnoreCase(str2)) {
                return "video/mp4";
            }
            return "application/octet-stream";
        }
        return mimeTypeFromExtension;
    }
}
