package pl.jbzd.core.a;

import android.app.ActivityManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.support.v4.app.aj;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.Log;
import android.util.Patterns;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import pl.jbzd.R;
/* compiled from: NotificationUtils.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static String f6091a = d.class.getSimpleName();
    private Context b;

    public d(Context context) {
        this.b = context;
    }

    public void a(String str, String str2, String str3, Intent intent) {
        a(str, str2, str3, intent, null);
    }

    public void a(String str, String str2, String str3, Intent intent, String str4) {
        intent.setFlags(603979776);
        PendingIntent activity = PendingIntent.getActivity(this.b, 0, intent, 134217728);
        aj.d dVar = new aj.d(this.b);
        Uri parse = Uri.parse("android.resource://" + this.b.getPackageName() + "/raw/notification");
        if (!TextUtils.isEmpty(str4)) {
            if (str4 != null && str4.length() > 4 && Patterns.WEB_URL.matcher(str4).matches()) {
                Bitmap a2 = a(str4);
                if (a2 != null) {
                    a(a2, dVar, R.mipmap.ic_launcher, str, str2, str3, activity, parse);
                    return;
                } else {
                    a(dVar, R.mipmap.ic_launcher, str, str2, str3, activity, parse);
                    return;
                }
            }
            return;
        }
        a(dVar, R.mipmap.ic_launcher, str, str2, str3, activity, parse);
        a();
    }

    private void a(aj.d dVar, int i, String str, String str2, String str3, PendingIntent pendingIntent, Uri uri) {
        aj.f fVar = new aj.f();
        Log.e("MyFirebase", "showSmallNotification - title: " + str);
        Log.e("MyFirebase", "showSmallNotification - message: " + str2);
        fVar.a(str2);
        ((NotificationManager) this.b.getSystemService("notification")).notify(100, dVar.a(i).c(str).a(0L).c(true).a((CharSequence) str).a(pendingIntent).a(uri).a(fVar).a(R.mipmap.ic_launcher).a(BitmapFactory.decodeResource(this.b.getResources(), i)).b(str2).a());
    }

    private void a(Bitmap bitmap, aj.d dVar, int i, String str, String str2, String str3, PendingIntent pendingIntent, Uri uri) {
        int width = bitmap.getWidth();
        int i2 = width >> 1;
        if (bitmap.getHeight() > i2) {
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, width, i2);
        }
        aj.b bVar = new aj.b();
        bVar.a(str);
        bVar.b(b(str2).toString());
        bVar.a(bitmap);
        ((NotificationManager) this.b.getSystemService("notification")).notify(101, dVar.a(i).c(str).a(0L).c(true).a((CharSequence) str).a(pendingIntent).a(uri).a(bVar).a(R.mipmap.ic_launcher).a(BitmapFactory.decodeResource(this.b.getResources(), i)).b(str2).a());
    }

    private Spanned b(String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Html.fromHtml(str, 0);
        }
        return Html.fromHtml(str);
    }

    public Bitmap a(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            return BitmapFactory.decodeStream(httpURLConnection.getInputStream());
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void a() {
        try {
            RingtoneManager.getRingtone(this.b, Uri.parse("android.resource://" + this.b.getPackageName() + "/raw/notification")).play();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean a(Context context) {
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
            if (runningAppProcessInfo.importance == 100) {
                String[] strArr = runningAppProcessInfo.pkgList;
                for (String str : strArr) {
                    if (str.equals(context.getPackageName())) {
                        return false;
                    }
                }
                continue;
            }
        }
        return true;
    }

    public static void b(Context context) {
        ((NotificationManager) context.getSystemService("notification")).cancelAll();
    }
}
