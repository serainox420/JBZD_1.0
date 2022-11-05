package com.inmobi.re.controller;

import android.annotation.SuppressLint;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Environment;
import android.os.Vibrator;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.drive.DriveFile;
import com.google.firebase.a.a;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.EventLog;
import com.inmobi.re.configs.Initializer;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.mraidimpl.AudioTriggerCallback;
import com.inmobi.re.container.mraidimpl.AudioTriggerer;
import com.inmobi.re.controller.JSController;
import com.inmobi.re.controller.util.Constants;
import com.inmobi.re.controller.util.ImageProcessing;
import com.inmobi.re.controller.util.StartActivityForResultCallback;
import com.madsdk.AdView;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.openx.view.mraid.JSInterface;
import com.pubmatic.sdk.banner.mraid.Consts;
import com.pubmatic.sdk.common.CommonConstants;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class JSUtilityController extends JSController {

    /* renamed from: a  reason: collision with root package name */
    DownloadManager f3967a;
    Object b;
    int c;
    private JSDisplayController d;
    private boolean e;
    private Map<String, Boolean> f;
    private AudioTriggerCallback g;
    private boolean h;
    private boolean i;
    public static SimpleDateFormat[] formats = {new SimpleDateFormat("yyyy-MM-dd'T'hh:mmZ", Locale.ENGLISH), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.ENGLISH), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssz", Locale.ENGLISH), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH), new SimpleDateFormat("yyyyMMddHHmmssZ", Locale.ENGLISH), new SimpleDateFormat("yyyyMMddHHmm", Locale.ENGLISH), new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH), new SimpleDateFormat("yyyyMM", Locale.ENGLISH), new SimpleDateFormat("yyyy", Locale.ENGLISH)};
    public static SimpleDateFormat[] calendarUntiFormats = {new SimpleDateFormat("yyyyMMdd'T'HHmmssZ"), new SimpleDateFormat("yyyyMMdd'T'HHmm"), new SimpleDateFormat("yyyyMMdd")};

    public JSUtilityController(IMWebView iMWebView, Context context) {
        super(iMWebView, context);
        this.f3967a = null;
        this.e = false;
        this.c = 0;
        this.f = new HashMap();
        this.g = new AudioTriggerCallback() { // from class: com.inmobi.re.controller.JSUtilityController.8
            @Override // com.inmobi.re.container.mraidimpl.AudioTriggerCallback
            public void audioLevel(double d) {
                JSUtilityController.this.imWebView.raiseMicEvent(d);
            }
        };
        this.h = false;
        this.i = false;
        this.d = new JSDisplayController(iMWebView, context);
        iMWebView.addJavascriptInterface(this.d, "displayController");
    }

    public void setWebViewClosed(boolean z) {
        this.e = z;
    }

    @SuppressLint({"NewApi"})
    public void registerBroadcastListener() {
        c();
        if (this.b == null && Build.VERSION.SDK_INT > 8) {
            try {
                if (this.f3967a == null) {
                    this.f3967a = (DownloadManager) this.imWebView.getActivity().getSystemService(AdTrackerConstants.GOAL_DOWNLOAD);
                }
                this.b = new BroadcastReceiver() { // from class: com.inmobi.re.controller.JSUtilityController.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        if ("android.intent.action.DOWNLOAD_COMPLETE".equals(intent.getAction())) {
                            long longExtra = intent.getLongExtra("extra_download_id", 0L);
                            DownloadManager.Query query = new DownloadManager.Query();
                            query.setFilterById(longExtra);
                            Cursor query2 = JSUtilityController.this.f3967a.query(query);
                            if (query2.moveToFirst()) {
                                int columnIndex = query2.getColumnIndex("status");
                                if (16 == query2.getInt(columnIndex)) {
                                    JSUtilityController.this.imWebView.raiseError("download failed", "storePicture");
                                } else {
                                    if (8 == query2.getInt(columnIndex)) {
                                    }
                                }
                            }
                        }
                    }
                };
                if (!this.e) {
                    this.imWebView.getActivity().registerReceiver((BroadcastReceiver) this.b, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
                } else {
                    this.b = null;
                }
            } catch (Exception e) {
                Log.internal(Constants.RENDERING_LOG_TAG, "JSUtilityController-> registerBroadcastListener. Unable to register download listener", e);
            }
        }
    }

    @SuppressLint({"NewApi"})
    public void unRegisterBroadcastListener() {
        try {
            d();
            if (Build.VERSION.SDK_INT > 8) {
                this.imWebView.getActivity().unregisterReceiver((BroadcastReceiver) this.b);
                this.b = null;
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "JSUtilityController-> unregisterBroadcastListener. Unable to unregister download listener");
        }
    }

    @JavascriptInterface
    public void sendSMS(String str, String str2) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(27), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> sendSMS: recipient: " + str + " body: " + str2);
        try {
            Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + Uri.encode(str)));
            intent.putExtra("sms_body", str2);
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            this.imWebView.getActivity().startActivity(intent);
            this.imWebView.fireOnLeaveApplication();
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in sending SMS ", e);
            this.imWebView.raiseError("Exception in sending SMS", "sendSMS");
        }
    }

    @JavascriptInterface
    public void sendMail(String str, String str2, String str3) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(28), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> sendMail: recipient: " + str + " subject: " + str2 + " body: " + str3);
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("plain/text");
            intent.putExtra("android.intent.extra.EMAIL", new String[]{str});
            intent.putExtra("android.intent.extra.SUBJECT", str2);
            intent.putExtra("android.intent.extra.TEXT", str3);
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            this.imWebView.getActivity().startActivity(Intent.createChooser(intent, "Choose the Email Client."));
            this.imWebView.fireOnLeaveApplication();
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in sending mail ", e);
            this.imWebView.raiseError("Exception in sending mail", "sendMail");
        }
    }

    private String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.startsWith("tel:")) {
            return "tel:" + str;
        }
        return str;
    }

    @JavascriptInterface
    public void makeCall(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(29), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> makeCall: number: " + str);
        try {
            String b = b(str);
            if (b == null) {
                this.imWebView.raiseError("Bad Phone Number", "makeCall");
            } else {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(b.toString()));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                this.imWebView.getActivity().startActivity(intent);
                this.imWebView.fireOnLeaveApplication();
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in making call ", e);
            this.imWebView.raiseError("Exception in making call", "makeCall");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a() {
        Cursor query;
        String[] strArr = {AnalyticsSQLiteHelper.GENERAL_ID, "title"};
        if (Build.VERSION.SDK_INT >= 8) {
            query = this.imWebView.getActivity().getContentResolver().query(Uri.parse("content://com.android.calendar/events"), strArr, null, null, null);
        } else {
            query = this.imWebView.getActivity().getContentResolver().query(Uri.parse("content://calendar/events"), strArr, null, null, null);
        }
        if (query != null && query.moveToLast()) {
            int columnIndex = query.getColumnIndex("title");
            int columnIndex2 = query.getColumnIndex(AnalyticsSQLiteHelper.GENERAL_ID);
            String string = query.getString(columnIndex);
            String string2 = query.getString(columnIndex2);
            if (string != null) {
                return Integer.parseInt(string2);
            }
        }
        return 0;
    }

    boolean a(String str) {
        PackageManager packageManager = this.imWebView.getActivity().getPackageManager();
        return packageManager.checkPermission(str, packageManager.getNameForUid(Binder.getCallingUid())) == 0;
    }

    @JavascriptInterface
    public void createCalendarEvent(String str, final String str2, String str3, String str4, String str5, String str6, final String str7, String str8, String str9, final String str10) {
        try {
            if (a("android.permission.READ_CALENDAR") && a("android.permission.WRITE_CALENDAR")) {
                this.c = a();
            }
            ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(30), null));
            Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> createEvent: date: " + str2 + " location: " + str4 + " body: " + str5);
            if (!supports(Consts.FeatureCalendar)) {
                Log.internal(Constants.RENDERING_LOG_TAG, "createCalendarEvent called even if it is not supported");
                this.imWebView.raiseError("createCalendarEvent called even if it is not supported", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
                return;
            }
            GregorianCalendar convertDateString = convertDateString(str2);
            GregorianCalendar convertDateString2 = convertDateString(str3);
            if (convertDateString == null || convertDateString2 == null) {
                Log.debug(Constants.RENDERING_LOG_TAG, "exception");
                this.imWebView.raiseError("Date format is incorrect", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
                return;
            }
            Intent intent = new Intent(this.imWebView.getActivity(), IMBrowserActivity.class);
            intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 100);
            intent.putExtra("id", IMBrowserActivity.generateId(new StartActivityForResultCallback() { // from class: com.inmobi.re.controller.JSUtilityController.2
                @Override // com.inmobi.re.controller.util.StartActivityForResultCallback
                public void onActivityResult(int i, Intent intent2) {
                    Uri parse;
                    int timeInMillis;
                    Uri parse2;
                    try {
                        if (JSUtilityController.this.a("android.permission.READ_CALENDAR") && JSUtilityController.this.a("android.permission.WRITE_CALENDAR")) {
                            if (JSUtilityController.this.c == JSUtilityController.this.a()) {
                                Log.internal(Constants.RENDERING_LOG_TAG, "User cancelled the create calendar event");
                                return;
                            }
                            if (Build.VERSION.SDK_INT >= 8) {
                                parse = Uri.parse("content://com.android.calendar/events");
                            } else {
                                parse = Uri.parse("content://calendar/events");
                            }
                            ContentResolver contentResolver = JSUtilityController.this.imWebView.getActivity().getContentResolver();
                            ContentValues contentValues = new ContentValues();
                            if (str7.equals("tentative")) {
                                contentValues.put("eventStatus", (Integer) 0);
                            } else if (str7.equals("confirmed")) {
                                contentValues.put("eventStatus", (Integer) 1);
                            } else if (str7.equals(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_CANCELLED)) {
                                contentValues.put("eventStatus", (Integer) 2);
                            }
                            contentResolver.update(ContentUris.withAppendedId(parse, JSUtilityController.this.a()), contentValues, null, null);
                            if (str10 != null && !"".equals(str10)) {
                                try {
                                    timeInMillis = Integer.parseInt(str10) / 60000;
                                } catch (NumberFormatException e) {
                                    try {
                                        timeInMillis = ((int) (JSUtilityController.convertDateString(str10).getTimeInMillis() - JSUtilityController.convertDateString(str2).getTimeInMillis())) / 60000;
                                    } catch (Exception e2) {
                                        JSUtilityController.this.imWebView.raiseError("Reminder format is incorrect. Invalid date", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
                                        return;
                                    }
                                }
                                if (timeInMillis > 0) {
                                    JSUtilityController.this.imWebView.raiseError("Reminder format is incorrect. Reminder can be set only before the event starts", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
                                    return;
                                }
                                int i2 = -timeInMillis;
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put("hasAlarm", (Integer) 1);
                                contentResolver.update(ContentUris.withAppendedId(parse, JSUtilityController.this.a()), contentValues2, null, null);
                                if (Build.VERSION.SDK_INT >= 8) {
                                    parse2 = Uri.parse("content://com.android.calendar/reminders");
                                } else {
                                    parse2 = Uri.parse("content://calendar/reminders");
                                }
                                ContentValues contentValues3 = new ContentValues();
                                contentValues3.put("event_id", Integer.valueOf(JSUtilityController.this.a()));
                                contentValues3.put(JSInterface.JSON_METHOD, (Integer) 1);
                                contentValues3.put("minutes", Integer.valueOf(i2));
                                contentResolver.insert(parse2, contentValues3);
                            }
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        Log.internal(Constants.RENDERING_LOG_TAG, "Exception adding reminder", e3);
                    }
                }
            }));
            intent.putExtra("eventId", str);
            intent.putExtra(NativeProtocol.WEB_DIALOG_ACTION, JSInterface.ACTION_CREATE_CALENDAR_EVENT);
            intent.putExtra("description", str5);
            intent.putExtra("summary", str6);
            intent.putExtra(a.b.LOCATION, str4);
            intent.putExtra(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START, convertDateString.getTimeInMillis());
            intent.putExtra("end", convertDateString2.getTimeInMillis());
            intent.putExtra("status", str7);
            intent.putExtra("transparency", str8);
            intent.putExtra("recurrence", str9);
            if (str10 != null && !"".equals(str10)) {
                intent.putExtra("hasAlarm", true);
            }
            this.imWebView.getActivity().startActivity(intent);
            if (this.imWebView.mListener != null) {
                this.imWebView.mListener.onLeaveApplication();
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Error creating reminder event", e);
        }
    }

    public static GregorianCalendar convertDateString(String str) {
        for (SimpleDateFormat simpleDateFormat : formats) {
            try {
                Date parse = simpleDateFormat.parse(str);
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                gregorianCalendar.setTime(parse);
                return gregorianCalendar;
            } catch (Exception e) {
            }
        }
        return null;
    }

    @Override // com.inmobi.re.controller.JSController
    public void stopAllListeners() {
        try {
            this.d.stopAllListeners();
        } catch (Exception e) {
        }
    }

    @JavascriptInterface
    public void showAlert(String str) {
        Log.debug(Constants.RENDERING_LOG_TAG, str);
    }

    @JavascriptInterface
    public void log(String str) {
        Log.debug(Constants.RENDERING_LOG_TAG, "Ad Log Message: " + str);
    }

    @JavascriptInterface
    public void asyncPing(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(31), null));
        try {
            Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> asyncPing: url: " + str);
            if (!URLUtil.isValidUrl(str)) {
                this.imWebView.raiseError("Invalid url", "asyncPing");
            } else {
                c(str);
            }
        } catch (Exception e) {
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.inmobi.re.controller.JSUtilityController$3] */
    private void c(final String str) {
        new Thread() { // from class: com.inmobi.re.controller.JSUtilityController.3
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v0 */
            /* JADX WARN: Type inference failed for: r1v1 */
            /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.String] */
            /* JADX WARN: Type inference failed for: r1v2, types: [java.net.HttpURLConnection] */
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HttpURLConnection httpURLConnection;
                HttpURLConnection httpURLConnection2 = 0;
                HttpURLConnection httpURLConnection3 = null;
                try {
                    try {
                        String replaceAll = str.replaceAll("%25", "%");
                        Log.debug(Constants.RENDERING_LOG_TAG, "Pinging URL: " + replaceAll);
                        httpURLConnection = (HttpURLConnection) new URL(replaceAll).openConnection();
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Exception e) {
                    e = e;
                }
                try {
                    httpURLConnection.setConnectTimeout(20000);
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setRequestProperty("User-Agent", InternalSDKUtil.getUserAgent());
                    httpURLConnection2 = Constants.RENDERING_LOG_TAG;
                    Log.debug(httpURLConnection2, "Async Ping Connection Response Code: " + httpURLConnection.getResponseCode());
                    if (httpURLConnection == null) {
                        return;
                    }
                    httpURLConnection.disconnect();
                } catch (Exception e2) {
                    httpURLConnection3 = httpURLConnection;
                    e = e2;
                    Log.debug(Constants.RENDERING_LOG_TAG, "Error doing async Ping. ", e);
                    if (httpURLConnection3 == null) {
                        return;
                    }
                    httpURLConnection3.disconnect();
                } catch (Throwable th2) {
                    httpURLConnection2 = httpURLConnection;
                    th = th2;
                    if (httpURLConnection2 != 0) {
                        httpURLConnection2.disconnect();
                    }
                    throw th;
                }
            }
        }.start();
    }

    @JavascriptInterface
    public void playAudio(String str, boolean z, boolean z2, boolean z3, String str2, String str3, String str4) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(32), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "playAudio: url: " + str + " autoPlay: " + z + " controls: " + z2 + " loop: " + z3 + " startStyle: " + str2 + " stopStyle: " + str3 + " id:" + str4);
        this.imWebView.playAudio(str, z, z2, z3, str2, str3, str4);
    }

    @JavascriptInterface
    public void muteAudio(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(33), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> muteAudio: ");
        this.imWebView.muteAudio(str);
    }

    @JavascriptInterface
    public void unMuteAudio(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(34), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> unMuteAudio: ");
        this.imWebView.unMuteAudio(str);
    }

    @JavascriptInterface
    public boolean isAudioMuted(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(35), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> isAudioMuted: ");
        return this.imWebView.isAudioMuted(str);
    }

    @JavascriptInterface
    public void setAudioVolume(String str, int i) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(36), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> setAudioVolume: " + str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + i);
        this.imWebView.setAudioVolume(str, i);
    }

    @JavascriptInterface
    public int getAudioVolume(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(37), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> getAudioVolume: ");
        return this.imWebView.getAudioVolume(str);
    }

    @JavascriptInterface
    public void seekAudio(String str, int i) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(38), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> seekAudio: ");
        this.imWebView.seekAudio(str, i);
    }

    @JavascriptInterface
    public double getMicIntensity() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(51), null));
        return this.imWebView.getLastGoodKnownMicValue();
    }

    @JavascriptInterface
    public void playVideo(String str, boolean z, boolean z2, boolean z3, boolean z4, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(40), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> playVideo: url: " + str + " audioMuted: " + z + " autoPlay: " + z2 + " controls: " + z3 + " loop: " + z4 + " x: " + str2 + " y: " + str3 + " width: " + str4 + " height: " + str5 + " startStyle: " + str6 + " stopStyle: " + str7 + " id:" + str8);
        JSController.Dimensions dimensions = new JSController.Dimensions();
        dimensions.x = a(str2, -99999);
        dimensions.y = a(str3, -99999);
        dimensions.width = a(str4, -99999);
        dimensions.height = a(str5, -99999);
        if (dimensions.width == -99999 && dimensions.height == -99999) {
            int[] b = b();
            dimensions.x = 0;
            dimensions.y = 0;
            dimensions.width = b[0];
            dimensions.height = b[1];
        }
        this.imWebView.playVideo(str, z, z2, z3, z4, dimensions, str6, str7, str8);
    }

    private int a(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    @JavascriptInterface
    public void pauseAudio(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(39), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> pauseAudio: id :" + str);
        this.imWebView.pauseAudio(str);
    }

    @JavascriptInterface
    public void pauseVideo(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(47), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> pauseVideo: id :" + str);
        this.imWebView.pauseVideo(str);
    }

    @JavascriptInterface
    public void closeVideo(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(50), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> closeVideo: id :" + str);
        this.imWebView.closeVideo(str);
    }

    @JavascriptInterface
    public void hideVideo(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(48), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> hideVideo: id :" + str);
        this.imWebView.hideVideo(str);
    }

    @JavascriptInterface
    public void showVideo(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(49), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> showVideo: id :" + str);
        this.imWebView.showVideo(str);
    }

    @JavascriptInterface
    public void muteVideo(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(41), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> muteVideo: ");
        this.imWebView.muteVideo(str);
    }

    @JavascriptInterface
    public void unMuteVideo(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(42), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> unMuteVideo: ");
        this.imWebView.unMuteVideo(str);
    }

    @JavascriptInterface
    public void seekVideo(String str, int i) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(46), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> seekVideo: ");
        this.imWebView.seekVideo(str, i);
    }

    @JavascriptInterface
    public boolean isVideoMuted(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(43), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> isVideoMuted: ");
        return this.imWebView.isVideoMuted(str);
    }

    @JavascriptInterface
    public void setVideoVolume(String str, int i) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(44), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> setVideoVolume: ");
        this.imWebView.setVideoVolume(str, i);
    }

    @JavascriptInterface
    public int getVideoVolume(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(45), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> getVideoVolume: ");
        return this.imWebView.getVideoVolume(str);
    }

    @JavascriptInterface
    public void openExternal(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(2), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> openExternal: url: " + str);
        this.imWebView.openExternal(str);
    }

    @JavascriptInterface
    public String getScreenSize() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(17), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> getScreenSize");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i = (int) (displayMetrics.widthPixels / displayMetrics.density);
        int i2 = (int) (displayMetrics.heightPixels / displayMetrics.density);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", i);
            jSONObject.put("height", i2);
        } catch (JSONException e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get screen size");
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public String getCurrentPosition() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(18), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> getCurrentPosition");
        synchronized (this.imWebView.mutexcPos) {
            this.imWebView.sendToCPHandler();
            while (this.imWebView.acqMutexcPos.get()) {
                try {
                    this.imWebView.mutexcPos.wait();
                } catch (InterruptedException e) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "mutexcPos failed ", e);
                }
            }
            this.imWebView.acqMutexcPos.set(true);
        }
        return this.imWebView.curPosition.toString();
    }

    @JavascriptInterface
    public String getDefaultPosition() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(19), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> getDefaultPosition");
        synchronized (this.imWebView.mutexdPos) {
            this.imWebView.sendToDPHandler();
            while (this.imWebView.acqMutexdPos.get()) {
                try {
                    this.imWebView.mutexdPos.wait();
                } catch (InterruptedException e) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "mutexdPos failed ", e);
                }
            }
            this.imWebView.acqMutexdPos.set(true);
        }
        Log.debug(Constants.RENDERING_LOG_TAG, "mutexdPassed" + this.imWebView.defPosition);
        return this.imWebView.defPosition.toString();
    }

    private int[] b() {
        int[] iArr = new int[2];
        try {
            FrameLayout frameLayout = (FrameLayout) ((ViewGroup) this.imWebView.getOriginalParent()).getRootView().findViewById(16908290);
            iArr[0] = (int) (frameLayout.getWidth() / this.imWebView.getDensity());
            iArr[1] = (int) (frameLayout.getHeight() / this.imWebView.getDensity());
        } catch (Exception e) {
            iArr[1] = 0;
            iArr[0] = 0;
        }
        return iArr;
    }

    @JavascriptInterface
    public String getMaxSize() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(20), null));
        int[] b = b();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", b[0]);
            jSONObject.put("height", b[1]);
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public void postToSocial(int i, String str, String str2, String str3) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(21), null));
        if (!supports("postToSocial." + i)) {
            this.imWebView.raiseError("Social type " + i + " is not supported.", "postToSocial");
            return;
        }
        String str4 = str == null ? "" : str;
        if (str2 == null) {
            str4 = "";
        }
        if (str3 == null) {
            str3 = "";
        }
        Intent intent = new Intent(this.imWebView.getActivity(), IMBrowserActivity.class);
        int generateId = IMBrowserActivity.generateId(new StartActivityForResultCallback() { // from class: com.inmobi.re.controller.JSUtilityController.4
            @Override // com.inmobi.re.controller.util.StartActivityForResultCallback
            public void onActivityResult(int i2, Intent intent2) {
            }
        });
        intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 100);
        intent.putExtra("id", generateId);
        intent.putExtra(NativeProtocol.WEB_DIALOG_ACTION, "postToSocial");
        intent.putExtra("socialType", i);
        intent.putExtra(CommonConstants.RESPONSE_TEXT, str4);
        intent.putExtra("link", str2);
        intent.putExtra(AdView.DEFAULT_IMAGE_NAME, str3);
        this.imWebView.getActivity().startActivity(intent);
        if (this.imWebView.mListener != null) {
            this.imWebView.mListener.onLeaveApplication();
        }
    }

    @SuppressLint({"NewApi"})
    public boolean supports(String str) {
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        Boolean valueOf;
        Boolean bool4;
        Boolean bool5;
        boolean z = true;
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(22), null));
        if (str.equals("html5video") || str.equals(Consts.FeatureInlineVideo)) {
            if (Build.VERSION.SDK_INT >= 11) {
                bool = Boolean.valueOf(this.imWebView.isHardwareAccelerated() && this.imWebView.isEnabledHardwareAcceleration());
            } else {
                bool = true;
            }
            this.f.put(str, bool);
            return bool.booleanValue();
        }
        Boolean bool6 = this.f.get(str);
        if (bool6 != null) {
            return bool6.booleanValue();
        }
        PackageManager packageManager = this.imWebView.getActivity().getPackageManager();
        if (str.equals("tel")) {
            this.f.put(str, true);
            return true;
        } else if (str.equals("sms")) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setType("vnd.android-dir/mms-sms");
            if (this.imWebView.getActivity().getPackageManager().resolveActivity(intent, 65536) == null) {
                bool5 = false;
            } else {
                bool5 = true;
            }
            this.f.put(str, bool5);
            return bool5.booleanValue();
        } else if (str.equals(Consts.FeatureCalendar)) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
            if (this.imWebView.getActivity().getPackageManager().resolveActivity(intent2, 65536) == null) {
                bool4 = false;
            } else {
                bool4 = true;
            }
            this.f.put(str, bool4);
            return bool4.booleanValue();
        } else if (str.equals("microphone")) {
            if (packageManager.checkPermission("android.permission.RECORD_AUDIO", packageManager.getNameForUid(Binder.getCallingUid())) != 0) {
                z = false;
            }
            Boolean valueOf2 = Boolean.valueOf(z);
            this.f.put(str, valueOf2);
            return valueOf2.booleanValue();
        } else if (str.equals("storePicture")) {
            if (Build.VERSION.SDK_INT <= 8 || packageManager.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", packageManager.getNameForUid(Binder.getCallingUid())) != 0) {
                z = false;
            }
            Boolean valueOf3 = Boolean.valueOf(z);
            this.f.put(str, valueOf3);
            return valueOf3.booleanValue();
        } else if (str.equals("postToSocial.2") || str.equals("postToSocial.3")) {
            Boolean bool7 = true;
            this.f.put(str, bool7);
            return bool7.booleanValue();
        } else if (str.equals("takeCameraPicture")) {
            ResolveInfo resolveActivity = this.imWebView.getActivity().getPackageManager().resolveActivity(new Intent("android.media.action.IMAGE_CAPTURE"), 65536);
            boolean z2 = packageManager.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", packageManager.getNameForUid(Binder.getCallingUid())) == 0;
            if (resolveActivity == null) {
                valueOf = false;
            } else {
                if (!z2) {
                    z = false;
                }
                valueOf = Boolean.valueOf(z);
            }
            this.f.put(str, valueOf);
            return valueOf.booleanValue();
        } else if (str.equals("getGalleryImage")) {
            if (this.imWebView.getActivity().getPackageManager().resolveActivity(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 65536) == null) {
                bool3 = false;
            } else {
                bool3 = true;
            }
            this.f.put(str, bool3);
            return bool3.booleanValue();
        } else if (!str.equals("vibrate")) {
            return false;
        } else {
            Boolean valueOf4 = Boolean.valueOf(packageManager.checkPermission("android.permission.VIBRATE", packageManager.getNameForUid(Binder.getCallingUid())) == 0);
            Vibrator vibrator = (Vibrator) this.d.imWebView.getActivity().getSystemService("vibrator");
            if (vibrator == null) {
                bool2 = false;
            } else if (Build.VERSION.SDK_INT >= 11) {
                if (!valueOf4.booleanValue() || !vibrator.hasVibrator()) {
                    z = false;
                }
                bool2 = Boolean.valueOf(z);
            } else {
                bool2 = valueOf4;
            }
            this.f.put(str, bool2);
            return bool2.booleanValue();
        }
    }

    @JavascriptInterface
    public String supportsFeature(String str) {
        return String.valueOf(supports(str));
    }

    @JavascriptInterface
    @SuppressLint({"NewApi"})
    public void storePicture(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(23), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "Store picture called on URL: " + str);
        try {
            Uri parse = Uri.parse(InternalSDKUtil.getFinalRedirectedUrl(str));
            if (supports("storePicture")) {
                try {
                    DownloadManager.Request request = new DownloadManager.Request(parse);
                    request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, parse.getLastPathSegment());
                    this.f3967a.enqueue(request);
                } catch (Exception e) {
                    this.imWebView.raiseError("Unable to store.", "storePicture");
                }
            }
        } catch (Exception e2) {
            this.imWebView.raiseError("Invalid URL.", "storePicture");
        }
    }

    @JavascriptInterface
    public String takeCameraPicture() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(24), null));
        if (!supports("takeCameraPicture")) {
            Log.internal(Constants.RENDERING_LOG_TAG, "takeCameraPicture called even if it is not supported");
        } else {
            Intent intent = new Intent(this.imWebView.getActivity(), IMBrowserActivity.class);
            intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 100);
            final Uri insert = this.mContext.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new ContentValues());
            intent.putExtra("id", IMBrowserActivity.generateId(new StartActivityForResultCallback() { // from class: com.inmobi.re.controller.JSUtilityController.5
                @Override // com.inmobi.re.controller.util.StartActivityForResultCallback
                public void onActivityResult(int i, Intent intent2) {
                    String convertMediaUriToPath;
                    if (i == -1) {
                        if (intent2 == null) {
                            convertMediaUriToPath = ImageProcessing.convertMediaUriToPath(insert, JSUtilityController.this.mContext);
                        } else {
                            convertMediaUriToPath = ImageProcessing.convertMediaUriToPath(intent2.getData(), JSUtilityController.this.mContext);
                        }
                        Bitmap compressedBitmap = ImageProcessing.getCompressedBitmap(convertMediaUriToPath, JSUtilityController.this.mContext);
                        int width = compressedBitmap.getWidth();
                        int height = compressedBitmap.getHeight();
                        JSUtilityController.this.imWebView.raiseCameraPictureCapturedEvent(ImageProcessing.getBase64EncodedImage(compressedBitmap, JSUtilityController.this.mContext), width, height);
                        return;
                    }
                    JSUtilityController.this.imWebView.raiseError("User did not take a picture", "takeCameraPicture");
                }
            }));
            intent.putExtra("URI", insert);
            intent.putExtra(NativeProtocol.WEB_DIALOG_ACTION, "takeCameraPicture");
            this.imWebView.getActivity().startActivity(intent);
            if (this.imWebView.mListener != null) {
                this.imWebView.mListener.onLeaveApplication();
            }
        }
        return null;
    }

    @JavascriptInterface
    public String getSdkVersion() {
        return InMobi.getVersion();
    }

    @JavascriptInterface
    public String getGalleryImage() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(25), null));
        if (!supports("getGalleryImage")) {
            Log.internal(Constants.RENDERING_LOG_TAG, "getGalleryImage called even if it is not supported");
        } else {
            Intent intent = new Intent(this.imWebView.getActivity(), IMBrowserActivity.class);
            intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 100);
            intent.putExtra("id", IMBrowserActivity.generateId(new StartActivityForResultCallback() { // from class: com.inmobi.re.controller.JSUtilityController.6
                @Override // com.inmobi.re.controller.util.StartActivityForResultCallback
                public void onActivityResult(int i, Intent intent2) {
                    if (i == -1) {
                        Bitmap compressedBitmap = ImageProcessing.getCompressedBitmap(ImageProcessing.convertMediaUriToPath(intent2.getData(), JSUtilityController.this.mContext), JSUtilityController.this.mContext);
                        int width = compressedBitmap.getWidth();
                        int height = compressedBitmap.getHeight();
                        JSUtilityController.this.imWebView.raiseGalleryImageSelectedEvent(ImageProcessing.getBase64EncodedImage(compressedBitmap, JSUtilityController.this.mContext), width, height);
                        return;
                    }
                    JSUtilityController.this.imWebView.raiseError("User did not select a picture", "getGalleryImage");
                }
            }));
            intent.putExtra(NativeProtocol.WEB_DIALOG_ACTION, "getGalleryImage");
            this.imWebView.getActivity().startActivity(intent);
            if (this.imWebView.mListener != null) {
                this.imWebView.mListener.onLeaveApplication();
            }
        }
        return null;
    }

    @JavascriptInterface
    public void vibrate() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(26), null));
        if (!this.imWebView.isViewable()) {
            this.imWebView.raiseError("Creative not visible. Will not vibrate.", "vibrate");
        } else if (supports("vibrate")) {
            ((Vibrator) this.imWebView.getActivity().getSystemService("vibrator")).vibrate(2000L);
            new Timer().schedule(new TimerTask() { // from class: com.inmobi.re.controller.JSUtilityController.7
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    try {
                        JSUtilityController.this.imWebView.raiseVibrateCompleteEvent();
                    } catch (Exception e) {
                        Log.internal(Constants.RENDERING_LOG_TAG, "Vibrate callback execption", e);
                    }
                }
            }, 2000L);
        } else {
            Log.internal(Constants.RENDERING_LOG_TAG, "vibrate called even if it is not supported");
        }
    }

    @JavascriptInterface
    public void vibrate(String str, int i) {
        int i2;
        try {
            ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(26), null));
            if (!this.imWebView.isViewable()) {
                this.imWebView.raiseError("Creative not visible. Will not vibrate.", "vibrate");
            } else if (supports("vibrate")) {
                Vibrator vibrator = (Vibrator) this.imWebView.getActivity().getSystemService("vibrator");
                String replaceAll = str.replaceAll("\\[", "").replaceAll("\\]", "");
                if (replaceAll == null || "".equals(replaceAll.trim())) {
                    vibrator.cancel();
                    return;
                }
                String[] split = replaceAll.split(",");
                int length = split.length;
                if (length > Initializer.getConfigParams().getMaxVibPatternLength()) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "vibration pattern exceeds max length. Will be truncated to max " + Initializer.getConfigParams().getMaxVibPatternLength() + "ms");
                    i2 = Initializer.getConfigParams().getMaxVibPatternLength();
                } else {
                    i2 = length;
                }
                long[] jArr = new long[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    try {
                        jArr[i3] = Long.parseLong(split[i3]);
                        if (jArr[i3] > Initializer.getConfigParams().getMaxVibDuration()) {
                            Log.internal(Constants.RENDERING_LOG_TAG, "vibration duration exceeds max. Will only vibrate for max " + Initializer.getConfigParams().getMaxVibDuration() + "ms");
                            jArr[i3] = Initializer.getConfigParams().getMaxVibDuration();
                        }
                        if (jArr[i3] < 0) {
                            this.imWebView.raiseError("Negative duration not allowed in vibration .", "vibrate");
                        }
                    } catch (NumberFormatException e) {
                        this.imWebView.raiseError("Invalid values of pattern in vibration .", "vibrate");
                        return;
                    }
                }
                if (jArr != null && jArr.length != 0) {
                    vibrator.vibrate(jArr, i);
                }
            } else {
                this.imWebView.raiseError("Vibrate called even if it is not supported.", "vibrate");
                Log.internal(Constants.RENDERING_LOG_TAG, "vibrate called even if it is not supported");
            }
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "vibrate exception", e2);
        }
    }

    @JavascriptInterface
    public void registerMicListener() {
        if (!this.h) {
            this.h = true;
            AudioTriggerer.addEventListener(this.g);
        }
    }

    @JavascriptInterface
    public void unRegisterMicListener() {
        if (this.h) {
            this.h = false;
            AudioTriggerer.removeEventListener(this.g);
        }
    }

    private void c() {
        if (this.i) {
            registerMicListener();
        }
    }

    private void d() {
        this.i = this.h;
        unRegisterMicListener();
    }

    public void reset() {
        if (this.d != null) {
            this.d.reset();
        }
    }

    @JavascriptInterface
    public void onUserInteraction(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            HashMap<String, String> hashMap = new HashMap<>();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    hashMap.put(next, jSONObject.getString(next));
                } catch (JSONException e) {
                }
            }
            this.imWebView.userInteraction(hashMap);
        } catch (Exception e2) {
        }
    }

    @JavascriptInterface
    public void saveContent(String str, String str2) {
        this.imWebView.saveFile(str, str2);
    }

    @JavascriptInterface
    public void cancelSaveContent(String str) {
        this.imWebView.cancelSaveContent(str);
    }

    @JavascriptInterface
    public void incentCompleted(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            HashMap<Object, Object> hashMap = new HashMap<>();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    hashMap.put(next, jSONObject.get(next));
                } catch (JSONException e) {
                    this.imWebView.incentCompleted(null);
                    return;
                }
            }
            this.imWebView.incentCompleted(hashMap);
        } catch (JSONException e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "JSON error");
            this.imWebView.incentCompleted(null);
        }
    }

    @JavascriptInterface
    public void setPlayableSettings(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    hashMap.put(next, jSONObject.get(next));
                } catch (JSONException e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Playable Ads Settings map key " + next + " has invalid value");
                }
            }
            this.imWebView.getPlayableListener().onPlayableSettingsReceived(hashMap);
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception setting playable settings", e2);
        }
    }
}
