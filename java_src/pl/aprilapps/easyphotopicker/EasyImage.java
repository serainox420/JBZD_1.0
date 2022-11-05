package pl.aprilapps.easyphotopicker;

import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.preference.PreferenceManager;
import android.provider.MediaStore;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class EasyImage {

    /* loaded from: classes3.dex */
    public enum ImageSource {
        GALLERY,
        DOCUMENTS,
        CAMERA
    }

    /* loaded from: classes3.dex */
    public interface a {
        void a(Exception exc, ImageSource imageSource, int i);

        void a(List<File> list, ImageSource imageSource, int i);

        void a(ImageSource imageSource, int i);
    }

    private static Uri c(Context context) throws IOException {
        File a2 = c.a(context);
        Uri a3 = c.a(context, a2);
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putString("pl.aprilapps.easyphotopicker.photo_uri", a3.toString());
        edit.putString("pl.aprilapps.easyphotopicker.last_photo", a2.toString());
        edit.apply();
        return a3;
    }

    private static Intent a(Context context, int i) {
        c(context, i);
        Intent a2 = a();
        if (Build.VERSION.SDK_INT >= 18) {
            a2.putExtra("android.intent.extra.ALLOW_MULTIPLE", b(context).b());
        }
        return a2;
    }

    private static Intent b(Context context, int i) {
        c(context, i);
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        try {
            Uri c = c(context);
            a(context, intent, c);
            intent.putExtra("output", c);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return intent;
    }

    private static void a(Context context, Uri uri) {
        context.revokeUriPermission(uri, 3);
    }

    private static void a(Context context, Intent intent, Uri uri) {
        for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(intent, 65536)) {
            context.grantUriPermission(resolveInfo.activityInfo.packageName, uri, 3);
        }
    }

    private static void c(Context context, int i) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putInt("pl.aprilapps.easyphotopicker.type", i).commit();
    }

    private static int d(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt("pl.aprilapps.easyphotopicker.type", 0);
    }

    public static void a(Activity activity, int i) {
        activity.startActivityForResult(a((Context) activity, i), 4972);
    }

    public static void b(Activity activity, int i) {
        activity.startActivityForResult(b((Context) activity, i), 9068);
    }

    private static File e(Context context) throws IOException, URISyntaxException {
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString("pl.aprilapps.easyphotopicker.last_photo", null);
        if (string != null) {
            return new File(string);
        }
        return null;
    }

    public static void a(int i, int i2, Intent intent, Activity activity, a aVar) {
        if ((i & 876) > 0) {
            int i3 = i & (-16385);
            if (i3 == 4972 || i3 == 9068 || i3 == 2924) {
                if (i2 == -1) {
                    if (i3 == 2924 && !a(intent)) {
                        a(intent, activity, aVar);
                    } else if (i3 == 4972 && !a(intent)) {
                        b(intent, activity, aVar);
                    } else if (i3 == 9068) {
                        a(activity, aVar);
                    } else if (a(intent)) {
                        a(activity, aVar);
                    } else {
                        a(intent, activity, aVar);
                    }
                } else if (i3 == 2924) {
                    aVar.a(ImageSource.DOCUMENTS, d(activity));
                } else if (i3 == 4972) {
                    aVar.a(ImageSource.GALLERY, d(activity));
                } else {
                    aVar.a(ImageSource.CAMERA, d(activity));
                }
            }
        }
    }

    private static boolean a(Intent intent) {
        return intent == null || (intent.getData() == null && intent.getClipData() == null);
    }

    private static Intent a() {
        return new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
    }

    public static File a(Context context) {
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString("pl.aprilapps.easyphotopicker.last_photo", null);
        if (string == null) {
            return null;
        }
        File file = new File(string);
        if (!file.exists()) {
            return null;
        }
        return file;
    }

    private static void a(Intent intent, Activity activity, a aVar) {
        try {
            File a2 = c.a(activity, intent.getData());
            aVar.a(c.a(a2), ImageSource.DOCUMENTS, d(activity));
            if (b(activity).c()) {
                c.a(activity, c.a(a2));
            }
        } catch (Exception e) {
            e.printStackTrace();
            aVar.a(e, ImageSource.DOCUMENTS, d(activity));
        }
    }

    private static void b(Intent intent, Activity activity, a aVar) {
        try {
            ClipData clipData = intent.getClipData();
            ArrayList arrayList = new ArrayList();
            if (clipData == null) {
                arrayList.add(c.a(activity, intent.getData()));
            } else {
                for (int i = 0; i < clipData.getItemCount(); i++) {
                    arrayList.add(c.a(activity, clipData.getItemAt(i).getUri()));
                }
            }
            if (b(activity).c()) {
                c.a(activity, arrayList);
            }
            aVar.a(arrayList, ImageSource.GALLERY, d(activity));
        } catch (Exception e) {
            e.printStackTrace();
            aVar.a(e, ImageSource.GALLERY, d(activity));
        }
    }

    private static void a(Activity activity, a aVar) {
        try {
            String string = PreferenceManager.getDefaultSharedPreferences(activity).getString("pl.aprilapps.easyphotopicker.photo_uri", null);
            if (!TextUtils.isEmpty(string)) {
                a(activity, Uri.parse(string));
            }
            File e = e(activity);
            ArrayList arrayList = new ArrayList();
            arrayList.add(e);
            if (e == null) {
                aVar.a(new IllegalStateException("Unable to get the picture returned from camera"), ImageSource.CAMERA, d(activity));
            } else {
                if (b(activity).c()) {
                    c.a(activity, c.a(e));
                }
                aVar.a(arrayList, ImageSource.CAMERA, d(activity));
            }
            PreferenceManager.getDefaultSharedPreferences(activity).edit().remove("pl.aprilapps.easyphotopicker.last_photo").remove("pl.aprilapps.easyphotopicker.photo_uri").apply();
        } catch (Exception e2) {
            e2.printStackTrace();
            aVar.a(e2, ImageSource.CAMERA, d(activity));
        }
    }

    public static b b(Context context) {
        return new b(context);
    }
}
