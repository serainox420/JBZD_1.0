package com.applovin.impl.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public class di extends AppLovinSdkUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f1655a = "0123456789abcdef".toCharArray();
    private static final char[] b = "-'".toCharArray();

    public static float a(float f) {
        return 1000.0f * f;
    }

    public static Bitmap a(Context context, int i, int i2) {
        int i3 = 1;
        Bitmap bitmap = null;
        FileInputStream fileInputStream = null;
        FileInputStream fileInputStream2 = null;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeResource(context.getResources(), i);
            if (options.outHeight > i2 || options.outWidth > i2) {
                i3 = (int) Math.pow(2.0d, (int) Math.ceil(Math.log(i2 / Math.max(options.outHeight, options.outWidth)) / Math.log(0.5d)));
            }
            new BitmapFactory.Options().inSampleSize = i3;
            bitmap = BitmapFactory.decodeResource(context.getResources(), i);
            try {
                fileInputStream.close();
                fileInputStream2.close();
            } catch (Exception e) {
            }
        } catch (Exception e2) {
            try {
                fileInputStream.close();
                fileInputStream2.close();
            } catch (Exception e3) {
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
                fileInputStream2.close();
            } catch (Exception e4) {
            }
            throw th;
        }
        return bitmap;
    }

    public static Bitmap a(File file, int i) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        FileInputStream fileInputStream3;
        BitmapFactory.Options options;
        FileInputStream fileInputStream4;
        int i2 = 1;
        FileInputStream fileInputStream5 = null;
        try {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inJustDecodeBounds = true;
            fileInputStream = new FileInputStream(file);
            try {
                BitmapFactory.decodeStream(fileInputStream, null, options2);
                fileInputStream.close();
                if (options2.outHeight > i || options2.outWidth > i) {
                    i2 = (int) Math.pow(2.0d, (int) Math.ceil(Math.log(i / Math.max(options2.outHeight, options2.outWidth)) / Math.log(0.5d)));
                }
                options = new BitmapFactory.Options();
                options.inSampleSize = i2;
                fileInputStream4 = new FileInputStream(file);
            } catch (Exception e) {
                fileInputStream2 = null;
                fileInputStream3 = fileInputStream;
            } catch (Throwable th) {
                th = th;
            }
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream4, null, options);
                fileInputStream4.close();
                try {
                    fileInputStream.close();
                    fileInputStream4.close();
                    return decodeStream;
                } catch (Exception e2) {
                    return decodeStream;
                }
            } catch (Exception e3) {
                fileInputStream2 = fileInputStream4;
                fileInputStream3 = fileInputStream;
                try {
                    fileInputStream3.close();
                    fileInputStream2.close();
                } catch (Exception e4) {
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream5 = fileInputStream4;
                try {
                    fileInputStream.close();
                    fileInputStream5.close();
                } catch (Exception e5) {
                }
                throw th;
            }
        } catch (Exception e6) {
            fileInputStream2 = null;
            fileInputStream3 = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public static AppLovinAdImpl a() {
        return new AppLovinAdImpl.Builder().setHtml("").setSize(AppLovinAdSize.BANNER).setType(AppLovinAdType.REGULAR).setVideoFilename("").setTarget(AppLovinAdImpl.AdTarget.DEFAULT).setCloseStyle(com.applovin.impl.adview.v.WhiteXOnOpaqueBlack).setVideoCloseDelay(BitmapDescriptorFactory.HUE_RED).setCloseDelay(BitmapDescriptorFactory.HUE_RED).setCountdownLength(0).setCurrentAdIdNumber(-1L).setClCode("").build();
    }

    public static String a(String str) {
        return (str == null || str.length() <= 4) ? "NOKEY" : str.substring(str.length() - 4);
    }

    public static String a(String str, AppLovinSdkImpl appLovinSdkImpl) {
        return a(str, (Integer) appLovinSdkImpl.a(bx.n), (String) appLovinSdkImpl.a(bx.m));
    }

    private static String a(String str, Integer num, String str2) {
        if (str2 == null) {
            throw new IllegalArgumentException("No algorithm specified");
        }
        if (str == null || str.length() < 1) {
            return "";
        }
        if (str2.length() < 1 || "none".equals(str2)) {
            return str;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str2);
            messageDigest.update(str.getBytes("UTF-8"));
            String a2 = a(messageDigest.digest());
            return (a2 == null || num.intValue() <= 0) ? a2 : a2.substring(0, Math.min(num.intValue(), a2.length()));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Programming error: UTF-8 is not know encoding", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("Unknown algorithm \"" + str2 + "\"", e2);
        }
    }

    public static String a(String str, String str2) {
        if (str == null) {
            str = "";
        }
        return str2.replace("{PLACEMENT}", c(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Collection collection, String str, int i) {
        if (str == null) {
            throw new IllegalArgumentException("No glue specified");
        }
        if (collection == null || collection.size() < 1) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (i2 >= i) {
                break;
            }
            i2++;
            sb.append(str2).append(str);
        }
        if (sb.length() > str.length()) {
            sb.setLength(sb.length() - str.length());
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Map map) {
        if (map == null || map.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(entry.getKey()).append('=').append(entry.getValue());
        }
        return sb.toString();
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("No data specified");
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            cArr[i * 2] = f1655a[(bArr[i] & 240) >>> 4];
            cArr[(i * 2) + 1] = f1655a[bArr[i] & 15];
        }
        return new String(cArr);
    }

    public static boolean a(AppLovinSdk appLovinSdk, String str) {
        for (String str2 : ((String) ((AppLovinSdkImpl) appLovinSdk).a(bx.C)).split(",")) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    public static long b(float f) {
        return Math.round(f);
    }

    public static String b(String str) {
        return a(str, (Integer) (-1), "SHA-1");
    }

    public static long c(float f) {
        return b(a(f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(String str) {
        if (isValidString(str)) {
            try {
                return URLEncoder.encode(str, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                throw new UnsupportedOperationException(e);
            }
        }
        return "";
    }
}
