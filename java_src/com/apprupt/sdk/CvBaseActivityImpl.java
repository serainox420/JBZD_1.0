package com.apprupt.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import android.webkit.ValueCallback;
import com.apprupt.sdk.CvBaseActivity;
import com.apprupt.sdk.Logger;
import com.loopme.common.VideoUtils;
import io.fabric.sdk.android.services.b.b;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class CvBaseActivityImpl extends Activity implements CvBaseActivity {
    private static final Logger.log e = Logger.a("FILE_UPLOAD");

    /* renamed from: a  reason: collision with root package name */
    protected ValueCallback<Uri[]> f1752a = null;
    protected ValueCallback<Uri> b = null;
    protected String c = null;
    protected final ArrayList<CvBaseActivity.PermissionListener> d = new ArrayList<>();

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri[] uriArr;
        ValueCallback<Uri> a2 = a();
        ValueCallback<Uri[]> b = b();
        if (i != 1 || (a2 == null && b == null)) {
            e.d("Result not for me, skipping results...");
            super.onActivityResult(i, i2, intent);
            return;
        }
        e.d("Got some result form file chooser!");
        String c = c();
        if (i2 == -1) {
            if (intent == null || intent.getDataString() == null) {
                e.d("There is no data... serching for file");
                if (c != null) {
                    e.d("We've got file path, lets pass it", c);
                    uriArr = new Uri[]{Uri.parse(c)};
                } else {
                    e.d("No camera path");
                    uriArr = null;
                }
            } else {
                Uri data = intent.getData();
                e.d("data uri", data.toString());
                uriArr = new Uri[]{data};
            }
        } else {
            e.d("result is not ok", Integer.valueOf(i2));
            uriArr = null;
        }
        if (b != null && uriArr != null) {
            e.d("Sending results to callbacks");
            b.onReceiveValue(uriArr);
        }
        b((ValueCallback<Uri[]>) null);
        if (a2 != null && uriArr != null && 0 < uriArr.length) {
            Uri uri = uriArr[0];
            e.d("Sending result to callback");
            a2.onReceiveValue(uri);
        }
        a((ValueCallback<Uri>) null);
    }

    static File a(Context context, String str, String str2) {
        File file;
        IOException e2;
        try {
            file = File.createTempFile(str, str2, context.getCacheDir());
            try {
                file.setWritable(true, false);
            } catch (IOException e3) {
                e2 = e3;
                e.d("Unable to create Image or Video File (falling back to downloads directory)", e2);
                return file;
            }
        } catch (IOException e4) {
            file = null;
            e2 = e4;
        }
        return file;
    }

    static String b(String str) {
        String format = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
        char c = 65535;
        switch (str.hashCode()) {
            case -1960745709:
                if (str.equals("android.media.action.IMAGE_CAPTURE")) {
                    c = 1;
                    break;
                }
                break;
            case 701083699:
                if (str.equals("android.media.action.VIDEO_CAPTURE")) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return "Video_" + format + b.ROLL_OVER_FILE_NAME_SEPARATOR;
            case 1:
                return "Image_" + format + b.ROLL_OVER_FILE_NAME_SEPARATOR;
            default:
                return format + b.ROLL_OVER_FILE_NAME_SEPARATOR;
        }
    }

    static String c(String str) {
        char c = 65535;
        switch (str.hashCode()) {
            case -1960745709:
                if (str.equals("android.media.action.IMAGE_CAPTURE")) {
                    c = 0;
                    break;
                }
                break;
            case 701083699:
                if (str.equals("android.media.action.VIDEO_CAPTURE")) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return ".jpg";
            case 1:
                return VideoUtils.MP4_FORMAT;
            default:
                return "";
        }
    }

    static boolean a(String str, List<String> list) {
        String replace = str.replace("*", ".*");
        for (String str2 : list) {
            if (str2.matches(replace)) {
                return true;
            }
        }
        return false;
    }

    static boolean a(Activity activity) {
        return activity != null && (activity instanceof CvBaseActivity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(CvContext cvContext, String[] strArr, ValueCallback<Uri> valueCallback, ValueCallback<Uri[]> valueCallback2) {
        String str;
        String str2;
        Activity a2 = cvContext.a();
        if (!a(a2)) {
            e.d("Current activity cannot handle file input", a2);
            return false;
        }
        CvBaseActivity cvBaseActivity = (CvBaseActivity) a2;
        cvBaseActivity.a(valueCallback);
        cvBaseActivity.b(valueCallback2);
        List asList = Arrays.asList(strArr);
        if (a("image/*", asList)) {
            str = "android.media.action.IMAGE_CAPTURE";
            str2 = "image/*";
        } else if (a("video/*", asList)) {
            str = "android.media.action.VIDEO_CAPTURE";
            str2 = "video/*";
        } else {
            e.d("Invalid access type, cannot handle", strArr);
            return false;
        }
        Intent intent = new Intent(str);
        if (intent.resolveActivity(a2.getPackageManager()) != null) {
            File a3 = a(cvContext.getBaseContext(), b(str), c(str));
            if (a3 != null) {
                cvBaseActivity.a("file:" + a3.getAbsolutePath());
                intent.putExtra("output", Uri.fromFile(a3));
                a(a2, str2, intent);
                return true;
            }
            a(a2, str2, (Intent) null);
        } else {
            e.d("No camera app resolved");
            a(a2, str2, (Intent) null);
        }
        return true;
    }

    protected static void a(Activity activity, String str, Intent intent) {
        Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
        intent2.addCategory("android.intent.category.OPENABLE");
        intent2.setType(str);
        Parcelable[] parcelableArr = intent != null ? new Intent[]{intent} : new Intent[0];
        e.d("Opening chooser");
        Intent intent3 = new Intent("android.intent.action.CHOOSER");
        intent3.putExtra("android.intent.extra.INTENT", intent2);
        intent3.putExtra("android.intent.extra.TITLE", "File Chooser");
        intent3.putExtra("android.intent.extra.INITIAL_INTENTS", parcelableArr);
        activity.startActivityForResult(intent3, 1);
    }

    @Override // com.apprupt.sdk.CvBaseActivity
    public void a(ValueCallback<Uri> valueCallback) {
        this.b = valueCallback;
    }

    public ValueCallback<Uri> a() {
        return this.b;
    }

    @Override // com.apprupt.sdk.CvBaseActivity
    public void b(ValueCallback<Uri[]> valueCallback) {
        this.f1752a = valueCallback;
    }

    public ValueCallback<Uri[]> b() {
        return this.f1752a;
    }

    @Override // com.apprupt.sdk.CvBaseActivity
    public void a(String str) {
        this.c = str;
    }

    public String c() {
        return this.c;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        ArrayList arrayList = new ArrayList();
        Iterator<CvBaseActivity.PermissionListener> it = this.d.iterator();
        while (it.hasNext()) {
            CvBaseActivity.PermissionListener next = it.next();
            if (next.a(i, strArr, iArr)) {
                arrayList.add(next);
            }
        }
        if (arrayList.size() > 0) {
            this.d.removeAll(arrayList);
        }
    }
}
