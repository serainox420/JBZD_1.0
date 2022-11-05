package com.mopub.mraid;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.Toast;
import com.amazon.device.ads.CalendarEventParameters;
import com.google.android.gms.drive.DriveFile;
import com.google.firebase.a.a;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Intents;
import com.mopub.common.util.ResponseHeader;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Utils;
import com.mopub.common.util.VersionCode;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes3.dex */
public class MraidNativeCommandHandler {
    public static final String ANDROID_CALENDAR_CONTENT_TYPE = "vnd.android.cursor.item/event";

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f4562a = {"yyyy-MM-dd'T'HH:mm:ssZZZZZ", CalendarEventParameters.DATE_FORMAT};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface c {
        void onFailure(com.mopub.mraid.a aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, Map<String, String> map) throws com.mopub.mraid.a {
        if (c(context)) {
            try {
                Map<String, Object> a2 = a(map);
                Intent type = new Intent("android.intent.action.INSERT").setType(ANDROID_CALENDAR_CONTENT_TYPE);
                for (String str : a2.keySet()) {
                    Object obj = a2.get(str);
                    if (obj instanceof Long) {
                        type.putExtra(str, ((Long) obj).longValue());
                    } else if (obj instanceof Integer) {
                        type.putExtra(str, ((Integer) obj).intValue());
                    } else {
                        type.putExtra(str, (String) obj);
                    }
                }
                type.setFlags(DriveFile.MODE_READ_ONLY);
                context.startActivity(type);
                return;
            } catch (ActivityNotFoundException e) {
                MoPubLog.d("no calendar app installed");
                throw new com.mopub.mraid.a("Action is unsupported on this device - no calendar app installed");
            } catch (IllegalArgumentException e2) {
                MoPubLog.d("create calendar: invalid parameters " + e2.getMessage());
                throw new com.mopub.mraid.a(e2);
            } catch (Exception e3) {
                MoPubLog.d("could not create calendar event");
                throw new com.mopub.mraid.a(e3);
            }
        }
        MoPubLog.d("unsupported action createCalendarEvent for devices pre-ICS");
        throw new com.mopub.mraid.a("Action is unsupported on this device (need Android version Ice Cream Sandwich or above)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, String str, c cVar) throws com.mopub.mraid.a {
        if (!isStorePictureSupported(context)) {
            MoPubLog.d("Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted.");
            throw new com.mopub.mraid.a("Error downloading file  - the device does not have an SD card mounted, or the Android permission is not granted.");
        } else if (context instanceof Activity) {
            c(context, str, cVar);
        } else {
            Toast.makeText(context, "Downloading image to Picture gallery...", 0).show();
            b(context, str, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Context context) {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return Intents.deviceCanHandleIntent(context, intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(Context context) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return Intents.deviceCanHandleIntent(context, intent);
    }

    public static boolean isStorePictureSupported(Context context) {
        return "mounted".equals(Environment.getExternalStorageState()) && DeviceUtils.isPermissionGranted(context, "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Context context) {
        return VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH) && Intents.deviceCanHandleIntent(context, new Intent("android.intent.action.INSERT").setType(ANDROID_CALENDAR_CONTENT_TYPE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(11)
    public boolean a(Activity activity, View view) {
        if (VersionCode.currentApiLevel().isBelow(VersionCode.HONEYCOMB_MR1)) {
            return false;
        }
        while (view.isHardwareAccelerated() && !Utils.bitMaskContainsFlag(view.getLayerType(), 1)) {
            if (view.getParent() instanceof View) {
                view = (View) view.getParent();
            } else {
                Window window = activity.getWindow();
                return window != null && Utils.bitMaskContainsFlag(window.getAttributes().flags, 16777216);
            }
        }
        return false;
    }

    @TargetApi(14)
    private Map<String, Object> a(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        if (!map.containsKey("description") || !map.containsKey(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START)) {
            throw new IllegalArgumentException("Missing start and description fields");
        }
        hashMap.put("title", map.get("description"));
        if (map.containsKey(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START) && map.get(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START) != null) {
            Date a2 = a(map.get(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START));
            if (a2 != null) {
                hashMap.put("beginTime", Long.valueOf(a2.getTime()));
                if (map.containsKey("end") && map.get("end") != null) {
                    Date a3 = a(map.get("end"));
                    if (a3 != null) {
                        hashMap.put("endTime", Long.valueOf(a3.getTime()));
                    } else {
                        throw new IllegalArgumentException("Invalid calendar event: end time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00");
                    }
                }
                if (map.containsKey(a.b.LOCATION)) {
                    hashMap.put("eventLocation", map.get(a.b.LOCATION));
                }
                if (map.containsKey("summary")) {
                    hashMap.put("description", map.get("summary"));
                }
                if (map.containsKey("transparency")) {
                    hashMap.put("availability", Integer.valueOf(map.get("transparency").equals("transparent") ? 1 : 0));
                }
                hashMap.put("rrule", b(map));
                return hashMap;
            }
            throw new IllegalArgumentException("Invalid calendar event: start time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00");
        }
        throw new IllegalArgumentException("Invalid calendar event: start is null.");
    }

    private Date a(String str) {
        Date date = null;
        for (String str2 : f4562a) {
            try {
                date = new SimpleDateFormat(str2, Locale.US).parse(str);
            } catch (ParseException e) {
            }
            if (date != null) {
                break;
            }
        }
        return date;
    }

    private String b(Map<String, String> map) throws IllegalArgumentException {
        StringBuilder sb = new StringBuilder();
        if (map.containsKey("frequency")) {
            String str = map.get("frequency");
            int parseInt = map.containsKey("interval") ? Integer.parseInt(map.get("interval")) : -1;
            if ("daily".equals(str)) {
                sb.append("FREQ=DAILY;");
                if (parseInt != -1) {
                    sb.append("INTERVAL=" + parseInt + ";");
                }
            } else if ("weekly".equals(str)) {
                sb.append("FREQ=WEEKLY;");
                if (parseInt != -1) {
                    sb.append("INTERVAL=" + parseInt + ";");
                }
                if (map.containsKey("daysInWeek")) {
                    String b2 = b(map.get("daysInWeek"));
                    if (b2 == null) {
                        throw new IllegalArgumentException("invalid ");
                    }
                    sb.append("BYDAY=" + b2 + ";");
                }
            } else if ("monthly".equals(str)) {
                sb.append("FREQ=MONTHLY;");
                if (parseInt != -1) {
                    sb.append("INTERVAL=" + parseInt + ";");
                }
                if (map.containsKey("daysInMonth")) {
                    String c2 = c(map.get("daysInMonth"));
                    if (c2 == null) {
                        throw new IllegalArgumentException();
                    }
                    sb.append("BYMONTHDAY=" + c2 + ";");
                }
            } else {
                throw new IllegalArgumentException("frequency is only supported for daily, weekly, and monthly.");
            }
        }
        return sb.toString();
    }

    private String b(String str) throws IllegalArgumentException {
        StringBuilder sb = new StringBuilder();
        boolean[] zArr = new boolean[7];
        String[] split = str.split(",");
        for (String str2 : split) {
            int parseInt = Integer.parseInt(str2);
            if (parseInt == 7) {
                parseInt = 0;
            }
            if (!zArr[parseInt]) {
                sb.append(a(parseInt) + ",");
                zArr[parseInt] = true;
            }
        }
        if (split.length == 0) {
            throw new IllegalArgumentException("must have at least 1 day of the week if specifying repeating weekly");
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    private String c(String str) throws IllegalArgumentException {
        StringBuilder sb = new StringBuilder();
        boolean[] zArr = new boolean[63];
        String[] split = str.split(",");
        for (String str2 : split) {
            int parseInt = Integer.parseInt(str2);
            if (!zArr[parseInt + 31]) {
                sb.append(b(parseInt) + ",");
                zArr[parseInt + 31] = true;
            }
        }
        if (split.length == 0) {
            throw new IllegalArgumentException("must have at least 1 day of the month if specifying repeating weekly");
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    private String a(int i) throws IllegalArgumentException {
        switch (i) {
            case 0:
                return "SU";
            case 1:
                return "MO";
            case 2:
                return "TU";
            case 3:
                return "WE";
            case 4:
                return "TH";
            case 5:
                return "FR";
            case 6:
                return "SA";
            default:
                throw new IllegalArgumentException("invalid day of week " + i);
        }
    }

    private String b(int i) throws IllegalArgumentException {
        if (i != 0 && i >= -31 && i <= 31) {
            return "" + i;
        }
        throw new IllegalArgumentException("invalid day of month " + i);
    }

    void b(final Context context, String str, final c cVar) {
        AsyncTasks.safeExecuteOnExecutor(new a(context, new a.InterfaceC0526a() { // from class: com.mopub.mraid.MraidNativeCommandHandler.1
            @Override // com.mopub.mraid.MraidNativeCommandHandler.a.InterfaceC0526a
            public void onSuccess() {
                MoPubLog.d("Image successfully saved.");
            }

            @Override // com.mopub.mraid.MraidNativeCommandHandler.a.InterfaceC0526a
            public void onFailure() {
                Toast.makeText(context, "Image failed to download.", 0).show();
                MoPubLog.d("Error downloading and saving image file.");
                cVar.onFailure(new com.mopub.mraid.a("Error downloading and saving image file."));
            }
        }), str);
    }

    private void c(final Context context, final String str, final c cVar) {
        new AlertDialog.Builder(context).setTitle("Save Image").setMessage("Download image to Picture gallery?").setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).setPositiveButton("Okay", new DialogInterface.OnClickListener() { // from class: com.mopub.mraid.MraidNativeCommandHandler.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MraidNativeCommandHandler.this.b(context, str, cVar);
            }
        }).setCancelable(true).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f4565a;
        private final InterfaceC0526a b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.mopub.mraid.MraidNativeCommandHandler$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public interface InterfaceC0526a {
            void onFailure();

            void onSuccess();
        }

        public a(Context context, InterfaceC0526a interfaceC0526a) {
            this.f4565a = context.getApplicationContext();
            this.b = interfaceC0526a;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public Boolean doInBackground(String[] strArr) {
            BufferedInputStream bufferedInputStream;
            Throwable th;
            FileOutputStream fileOutputStream;
            if (strArr == null || strArr.length == 0 || strArr[0] == null) {
                return false;
            }
            File a2 = a();
            a2.mkdirs();
            String str = strArr[0];
            URI create = URI.create(str);
            try {
                HttpURLConnection httpUrlConnection = MoPubHttpUrlConnection.getHttpUrlConnection(str);
                bufferedInputStream = new BufferedInputStream(httpUrlConnection.getInputStream());
                try {
                    String headerField = httpUrlConnection.getHeaderField(ResponseHeader.LOCATION.getKey());
                    if (!TextUtils.isEmpty(headerField)) {
                        create = URI.create(headerField);
                    }
                    File file = new File(a2, a(create, httpUrlConnection.getHeaderFields()));
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        try {
                            Streams.copyContent(bufferedInputStream, fileOutputStream);
                            a(file.toString());
                            Streams.closeStream(bufferedInputStream);
                            Streams.closeStream(fileOutputStream);
                            return true;
                        } catch (Exception e) {
                            Streams.closeStream(bufferedInputStream);
                            Streams.closeStream(fileOutputStream);
                            return false;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        Streams.closeStream(bufferedInputStream);
                        Streams.closeStream(fileOutputStream);
                        throw th;
                    }
                } catch (Exception e2) {
                    fileOutputStream = null;
                } catch (Throwable th3) {
                    fileOutputStream = null;
                    th = th3;
                    Streams.closeStream(bufferedInputStream);
                    Streams.closeStream(fileOutputStream);
                    throw th;
                }
            } catch (Exception e3) {
                fileOutputStream = null;
                bufferedInputStream = null;
            } catch (Throwable th4) {
                bufferedInputStream = null;
                th = th4;
                fileOutputStream = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(Boolean bool) {
            if (bool != null && bool.booleanValue()) {
                this.b.onSuccess();
            } else {
                this.b.onFailure();
            }
        }

        private String a(URI uri, Map<String, List<String>> map) {
            String str;
            Preconditions.checkNotNull(uri);
            String path = uri.getPath();
            if (path == null || map == null) {
                return null;
            }
            String name = new File(path).getName();
            List<String> list = map.get("Content-Type");
            if (list == null || list.isEmpty() || list.get(0) == null) {
                return name;
            }
            String[] split = list.get(0).split(";");
            int length = split.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (!split[i].contains("image/")) {
                    i++;
                } else {
                    String str2 = "." + str.split("/")[1];
                    if (!name.endsWith(str2)) {
                        return name + str2;
                    }
                }
            }
            return name;
        }

        private File a() {
            return new File(Environment.getExternalStorageDirectory(), "Pictures");
        }

        private void a(String str) {
            b bVar = new b(str, null);
            MediaScannerConnection mediaScannerConnection = new MediaScannerConnection(this.f4565a, bVar);
            bVar.a(mediaScannerConnection);
            mediaScannerConnection.connect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b implements MediaScannerConnection.MediaScannerConnectionClient {

        /* renamed from: a  reason: collision with root package name */
        private final String f4566a;
        private final String b;
        private MediaScannerConnection c;

        private b(String str, String str2) {
            this.f4566a = str;
            this.b = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(MediaScannerConnection mediaScannerConnection) {
            this.c = mediaScannerConnection;
        }

        @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
        public void onMediaScannerConnected() {
            if (this.c != null) {
                this.c.scanFile(this.f4566a, this.b);
            }
        }

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String str, Uri uri) {
            if (this.c != null) {
                this.c.disconnect();
            }
        }
    }
}
