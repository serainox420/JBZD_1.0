package com.apprupt.sdk;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Display;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowManager;
import com.apprupt.sdk.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class CvViewHelper {
    private static float c = 1.0f;

    /* renamed from: a  reason: collision with root package name */
    public static final Point f1906a = new Point();
    public static final Point b = new Point();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        c = context.getApplicationContext().getResources().getDisplayMetrics().densityDpi / 160.0f;
        b(context);
    }

    public static float a(float f) {
        return f / c;
    }

    public static int b(float f) {
        return (int) (c * f);
    }

    public static void a(Runnable runnable, boolean z) {
        if (!z || !Looper.getMainLooper().equals(Looper.myLooper())) {
            new Handler(Looper.getMainLooper()).post(runnable);
        } else {
            runnable.run();
        }
    }

    public static void a(Runnable runnable) {
        a(runnable, true);
    }

    public static void b(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (Build.VERSION.SDK_INT < 13) {
            f1906a.x = defaultDisplay.getWidth();
            f1906a.y = defaultDisplay.getHeight();
        } else {
            defaultDisplay.getSize(f1906a);
        }
        b.x = (int) (f1906a.x / c);
        b.y = (int) (f1906a.y / c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(View view) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        Logger.log a2 = Logger.a("HW");
        if (Build.VERSION.SDK_INT >= 11) {
            boolean isHardwareAccelerated = view.isHardwareAccelerated();
            if (view.getLayerType() != 1) {
                ViewParent parent = view.getParent();
                while (true) {
                    if (parent == null) {
                        z = false;
                        z2 = isHardwareAccelerated;
                        break;
                    } else if ((parent instanceof View) && ((View) parent).getLayerType() == 1) {
                        a2.d("Parent software layer!");
                        z = true;
                        z2 = false;
                        break;
                    } else {
                        parent = parent.getParent();
                    }
                }
            } else {
                a2.d("Software layer!");
                z = true;
                z2 = false;
            }
            Object[] objArr = new Object[3];
            objArr[0] = "HW Acceleration:";
            objArr[1] = true;
            if (z) {
                z3 = false;
            }
            objArr[2] = Boolean.valueOf(z3);
            a2.d(objArr);
            return z2;
        }
        return false;
    }

    public static int a(String str) {
        String group;
        int i = 255;
        Logger.log a2 = Logger.a("COLOR");
        if (str != null) {
            try {
                if (str.matches("^#?[0-9a-fA-F]{3,8}$")) {
                    String substring = str.charAt(0) == '#' ? str.substring(1) : str;
                    if (substring.length() == 3 || substring.length() == 4) {
                        StringBuilder sb = new StringBuilder();
                        for (int i2 = 0; i2 < 3; i2++) {
                            sb.append(substring.charAt(i2));
                            sb.append(substring.charAt(i2));
                        }
                        substring = sb.toString();
                    }
                    if (substring.length() == 6) {
                        substring = "ff" + substring;
                    } else if (substring.length() == 8) {
                        substring = substring.substring(6) + substring.substring(0, 6);
                    }
                    if (substring.length() != 8) {
                        a2.d("cannot transform color to understandable version", str, substring);
                        throw new IllegalArgumentException("Invalid color string " + str);
                    }
                    a2.d("parsing color as hex", str, "#" + substring, Integer.valueOf(Color.parseColor("#" + substring)));
                    return Color.parseColor("#" + substring);
                }
                Matcher matcher = Pattern.compile("rgba?\\((\\d+),(\\d+),(\\d+)(,([0-9\\.]+))?\\)", 2).matcher(str);
                if (matcher.find()) {
                    a2.d("parsing color as rgba", str);
                    int max = Math.max(Math.min(Integer.valueOf(matcher.group(1)).intValue(), 255), 0);
                    int max2 = Math.max(Math.min(Integer.valueOf(matcher.group(2)).intValue(), 255), 0);
                    int max3 = Math.max(Math.min(Integer.valueOf(matcher.group(3)).intValue(), 255), 0);
                    if (matcher.groupCount() > 4 && (group = matcher.group(5)) != null && group.length() > 0) {
                        a2.d("alpha found...", matcher.group(5));
                        i = Math.max(Math.min(Math.round(Float.valueOf(matcher.group(5)).floatValue() * 255.0f), 255), 0);
                    }
                    a2.d("parsing color as rgba", str, Integer.valueOf(max), Integer.valueOf(max2), Integer.valueOf(max3), Integer.valueOf(i), Integer.valueOf(Color.argb(i, max, max2, max3)));
                    return Color.argb(i, max, max2, max3);
                }
                a2.d("color pattern not found", str);
            } catch (IllegalArgumentException e) {
                a2.c(e, "error while parsing color");
                Logger.a().d("Cannot parse color: " + str);
            }
        } else {
            a2.d("Passed color is null!");
        }
        throw new IllegalArgumentException("Invalid color value: " + str);
    }
}
