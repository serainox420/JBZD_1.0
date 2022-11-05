package pl.jbzd.core.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.flurry.android.Constants;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: CoreUtils.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static int f6089a = 0;
    private static int b = 0;

    public static int a(int i) {
        return (int) (i * Resources.getSystem().getDisplayMetrics().density);
    }

    public static int a(Context context) {
        if (b == 0) {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f6089a = point.x;
            b = point.y;
        }
        return b;
    }

    public static int b(Context context) {
        if (f6089a == 0) {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f6089a = point.x;
            b = point.y;
        }
        return f6089a;
    }

    public static boolean c(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            StringBuilder sb = new StringBuilder();
            byte[] digest = messageDigest.digest(str.getBytes());
            for (byte b2 : digest) {
                sb.append(Integer.toHexString((b2 & Constants.UNKNOWN) | 256).substring(1, 3));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            return "";
        }
    }

    public static void d(Context context) {
        try {
            a(context.getCacheDir());
        } catch (Exception e) {
        }
    }

    public static boolean a(File file) {
        if (file != null) {
            if (file.isDirectory()) {
                for (String str : file.list()) {
                    if (!a(new File(file, str))) {
                        return false;
                    }
                }
                return file.delete();
            } else if (file.isFile()) {
                return file.delete();
            } else {
                return false;
            }
        }
        return false;
    }

    public static Drawable a(int i, Context context) {
        return Build.VERSION.SDK_INT >= 21 ? context.getResources().getDrawable(i, context.getTheme()) : context.getResources().getDrawable(i);
    }

    public static int b(int i, Context context) {
        return Build.VERSION.SDK_INT >= 23 ? android.support.v4.content.b.c(context, i) : context.getResources().getColor(i);
    }
}
