package com.flurry.sdk;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Locale;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class mc {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3054a = Pattern.compile("/");

    public static String a(String str) {
        URI i;
        int indexOf;
        if (!TextUtils.isEmpty(str) && (i = i(str)) != null) {
            String scheme = i.getScheme();
            if (TextUtils.isEmpty(scheme)) {
                return "http" + str;
            }
            String lowerCase = scheme.toLowerCase(Locale.getDefault());
            return (scheme.equals(lowerCase) || (indexOf = str.indexOf(scheme)) < 0) ? str : lowerCase + str.substring(scheme.length() + indexOf);
        }
        return str;
    }

    public static String b(String str) {
        URI i;
        URI a2;
        if (!TextUtils.isEmpty(str) && (i = i(str)) != null) {
            URI normalize = i.normalize();
            if (!normalize.isOpaque() && (a2 = a(normalize.getScheme(), normalize.getAuthority(), "/", null, null)) != null) {
                return a2.toString();
            }
            return str;
        }
        return str;
    }

    public static String c(String str) {
        URI i;
        URI resolve;
        if (!TextUtils.isEmpty(str) && (i = i(str)) != null) {
            URI normalize = i.normalize();
            if (!normalize.isOpaque() && (resolve = normalize.resolve("./")) != null) {
                return resolve.toString();
            }
            return str;
        }
        return str;
    }

    public static String a(String str, String str2) {
        URI i;
        String str3;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && (i = i(str)) != null) {
            URI normalize = i.normalize();
            URI i2 = i(str2);
            if (i2 != null) {
                URI normalize2 = i2.normalize();
                if (!normalize.isOpaque() && !normalize2.isOpaque()) {
                    String scheme = normalize.getScheme();
                    String scheme2 = normalize2.getScheme();
                    if (scheme2 != null || scheme == null) {
                        if (scheme2 == null || scheme2.equals(scheme)) {
                            String authority = normalize.getAuthority();
                            String authority2 = normalize2.getAuthority();
                            if (authority2 != null || authority == null) {
                                if (authority2 == null || authority2.equals(authority)) {
                                    String path = normalize.getPath();
                                    String path2 = normalize2.getPath();
                                    String[] split = f3054a.split(path, -1);
                                    String[] split2 = f3054a.split(path2, -1);
                                    int length = split.length;
                                    int length2 = split2.length;
                                    int i3 = 0;
                                    while (i3 < length2 && i3 < length && split[i3].equals(split2[i3])) {
                                        i3++;
                                    }
                                    String query = normalize.getQuery();
                                    String fragment = normalize.getFragment();
                                    StringBuilder sb = new StringBuilder();
                                    if (i3 == length2 && i3 == length) {
                                        String query2 = normalize2.getQuery();
                                        String fragment2 = normalize2.getFragment();
                                        boolean equals = TextUtils.equals(query, query2);
                                        boolean equals2 = TextUtils.equals(fragment, fragment2);
                                        if (!equals || !equals2) {
                                            String str4 = (!equals || TextUtils.isEmpty(fragment)) ? query : null;
                                            if (!TextUtils.isEmpty(str4) || !TextUtils.isEmpty(fragment)) {
                                                query = str4;
                                                str3 = fragment;
                                            } else {
                                                sb.append(split[length - 1]);
                                                str3 = fragment;
                                            }
                                            fragment = str3;
                                        } else {
                                            fragment = null;
                                            query = null;
                                        }
                                    } else {
                                        int i4 = length - 1;
                                        int i5 = length2 - 1;
                                        for (int i6 = i3; i6 < i5; i6++) {
                                            sb.append("..");
                                            sb.append("/");
                                        }
                                        while (i3 < i4) {
                                            sb.append(split[i3]);
                                            sb.append("/");
                                            i3++;
                                        }
                                        if (i3 < length) {
                                            sb.append(split[i3]);
                                        }
                                        if (sb.length() == 0) {
                                            sb.append(".");
                                            sb.append("/");
                                        }
                                    }
                                    URI a2 = a(null, null, sb.toString(), query, fragment);
                                    if (a2 != null) {
                                        return a2.toString();
                                    }
                                    return str;
                                }
                                return str;
                            }
                            return str;
                        }
                        return str;
                    }
                    return str;
                }
                return str;
            }
            return str;
        }
        return str;
    }

    private static URI i(String str) {
        try {
            return new URI(str);
        } catch (URISyntaxException e) {
            return null;
        }
    }

    private static URI a(String str, String str2, String str3, String str4, String str5) {
        try {
            return new URI(str, str2, str3, str4, str5);
        } catch (URISyntaxException e) {
            return null;
        }
    }

    public static boolean d(String str) {
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            return parse.getScheme() != null && parse.getScheme().equals("market");
        }
        return false;
    }

    public static boolean e(String str) {
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            if (parse.getScheme() == null) {
                return false;
            }
            return parse.getScheme().equals("http") || parse.getScheme().equals("https");
        }
        return false;
    }

    public static boolean f(String str) {
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            return parse.getHost() != null && parse.getHost().equals("play.google.com") && parse.getScheme() != null && parse.getScheme().startsWith("http");
        }
        return false;
    }

    public static boolean g(String str) {
        String mimeTypeFromExtension;
        return !TextUtils.isEmpty(str) && (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str))) != null && mimeTypeFromExtension.startsWith("video/");
    }

    public static boolean h(String str) {
        URI i;
        if (!TextUtils.isEmpty(str) && (i = i(str)) != null) {
            return i.getScheme() == null || "http".equalsIgnoreCase(i.getScheme()) || "https".equalsIgnoreCase(i.getScheme());
        }
        return false;
    }

    public static String b(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            try {
                if (!new URI(str).isAbsolute() && !TextUtils.isEmpty(str2)) {
                    URI uri = new URI(str2);
                    return uri.getScheme() + "://" + uri.getHost() + str;
                }
                return str;
            } catch (Exception e) {
                return str;
            }
        }
        return str;
    }
}
