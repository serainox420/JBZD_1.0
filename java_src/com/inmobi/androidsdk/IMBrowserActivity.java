package com.inmobi.androidsdk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.provider.MediaStore;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.facebook.internal.NativeProtocol;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.firebase.a.a;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.JSUtilityController;
import com.inmobi.re.controller.util.Constants;
import com.inmobi.re.controller.util.StartActivityForResultCallback;
import com.madsdk.AdView;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.openx.view.mraid.JSInterface;
import com.pubmatic.sdk.common.CommonConstants;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
@SuppressLint({"UseSparseArrays"})
/* loaded from: classes2.dex */
public class IMBrowserActivity extends Activity {
    public static final String ANIMATED = "isAnimationEnabledOnDimiss";
    public static final int BROWSER_ACTIVITY = 100;
    public static final int CLOSE_BUTTON_VIEW_ID = 225;
    public static final int CLOSE_REGION_VIEW_ID = 226;
    public static final String EXPANDDATA = "data";
    public static final int EXPAND_ACTIVITY = 102;
    public static final String EXTRA_BROWSER_ACTIVITY_TYPE = "extra_browser_type";
    public static final String EXTRA_URL = "extra_url";
    public static final int GET_IMAGE = 101;
    public static final int INTERSTITIAL_ACTIVITY = 101;
    private static IMWebView b;
    private static IMWebView.IMWebViewListener c;
    private static IMWebView d;
    private static FrameLayout e;
    private static Message f;
    private static Map<Integer, StartActivityForResultCallback> l = new HashMap();
    private static int m = 0;
    private static Activity o;

    /* renamed from: a  reason: collision with root package name */
    private IMWebView f3696a;
    private RelativeLayout g;
    private float h;
    private Boolean i;
    private CustomView j;
    private int n;
    private long k = 0;
    private WebViewClient p = new WebViewClient() { // from class: com.inmobi.androidsdk.IMBrowserActivity.4
        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            if (IMBrowserActivity.this.j != null) {
                IMBrowserActivity.this.j.setSwitchInt(CustomView.SwitchIconType.FORWARD_INACTIVE);
                IMBrowserActivity.this.j.invalidate();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (IMBrowserActivity.this.j != null) {
                if (webView.canGoForward()) {
                    IMBrowserActivity.this.j.setSwitchInt(CustomView.SwitchIconType.FORWARD_ACTIVE);
                    IMBrowserActivity.this.j.invalidate();
                } else {
                    IMBrowserActivity.this.j.setSwitchInt(CustomView.SwitchIconType.FORWARD_INACTIVE);
                    IMBrowserActivity.this.j.invalidate();
                }
            }
            CookieSyncManager.getInstance().sync();
        }
    };

    public static int generateId(StartActivityForResultCallback startActivityForResultCallback) {
        m++;
        l.put(Integer.valueOf(m), startActivityForResultCallback);
        return m;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        try {
            l.get(Integer.valueOf(i)).onActivityResult(i2, intent);
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "onActivityResult failed", e2);
        }
        l.remove(Integer.valueOf(i2));
        if (this.f3696a == null) {
            finish();
        }
    }

    @Override // android.app.Activity
    @SuppressLint({"SetJavaScriptEnabled"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            CookieSyncManager.createInstance(this);
            CookieSyncManager.getInstance().startSync();
            Intent intent = getIntent();
            this.n = intent.getIntExtra(EXTRA_BROWSER_ACTIVITY_TYPE, 100);
            this.k = intent.getLongExtra(ANIMATED, 0L);
            if (this.n == 100) {
                requestWindowFeature(1);
                if (Build.VERSION.SDK_INT < 9 || Build.VERSION.SDK_INT >= 11) {
                    getWindow().setFlags(1024, 1024);
                }
                ((WindowManager) getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
                if (intent.getStringExtra(NativeProtocol.WEB_DIALOG_ACTION) != null) {
                    a(intent);
                }
                this.h = getResources().getDisplayMetrics().density;
                String stringExtra = intent.getStringExtra("extra_url");
                this.i = Boolean.valueOf(intent.getBooleanExtra("FIRST_INSTANCE", false));
                Log.debug(Constants.RENDERING_LOG_TAG, "IMBrowserActivity-> onCreate");
                this.g = new RelativeLayout(this);
                if (stringExtra != null) {
                    boolean booleanExtra = intent.getBooleanExtra("QAMODE", false);
                    this.f3696a = new IMWebView(this, c, true, true);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
                    layoutParams.addRule(10);
                    layoutParams.addRule(2, 100);
                    this.g.setBackgroundColor(-1);
                    this.g.addView(this.f3696a, layoutParams);
                    a(this.g);
                    this.f3696a.getSettings().setJavaScriptEnabled(true);
                    this.f3696a.setExternalWebViewClient(this.p);
                    this.f3696a.getSettings().setLoadWithOverviewMode(true);
                    this.f3696a.getSettings().setUseWideViewPort(true);
                    if (Build.VERSION.SDK_INT >= 8) {
                        this.f3696a.loadUrl(stringExtra, null);
                    } else {
                        this.f3696a.loadUrl(stringExtra);
                    }
                    if (booleanExtra) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("mk-carrier", "117.97.87.6");
                        hashMap.put("x-real-ip", "117.97.87.6");
                    }
                    setContentView(this.g);
                }
            } else if (this.n == 101) {
                b.setActivity(this);
                b.mInterstitialController.setActivity(this);
                b.mInterstitialController.changeContentAreaForInterstitials(this.k);
                View findViewById = findViewById(225);
                if (findViewById != null) {
                    findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            IMBrowserActivity.this.finish();
                        }
                    });
                }
                View findViewById2 = findViewById(CLOSE_REGION_VIEW_ID);
                if (findViewById2 != null) {
                    findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            IMBrowserActivity.this.finish();
                        }
                    });
                }
                b.setOnKeyListener(new View.OnKeyListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.6
                    @Override // android.view.View.OnKeyListener
                    public boolean onKey(View view, int i, KeyEvent keyEvent) {
                        if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                            IMBrowserActivity.this.finish();
                        }
                        return false;
                    }
                });
            } else if (this.n == 102) {
                if (e != null && e.getParent() != null) {
                    ((ViewGroup) e.getParent()).removeView(e);
                }
                setContentView(e);
                d.setState(IMWebView.ViewState.EXPANDED);
                d.mIsViewable = true;
                d.mExpandController.setActivity(this);
                d.setBrowserActivity(this);
                d.mExpandController.handleOrientationForExpand();
                View findViewById3 = findViewById(225);
                if (findViewById3 != null) {
                    findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (IMBrowserActivity.d != null) {
                                IMBrowserActivity.d.close();
                            }
                            IMBrowserActivity.this.finish();
                        }
                    });
                }
                View findViewById4 = findViewById(CLOSE_REGION_VIEW_ID);
                if (findViewById4 != null) {
                    findViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.8
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (IMBrowserActivity.d != null) {
                                IMBrowserActivity.d.close();
                            }
                            IMBrowserActivity.this.finish();
                        }
                    });
                }
                d.setOnKeyListener(new View.OnKeyListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.9
                    @Override // android.view.View.OnKeyListener
                    public boolean onKey(View view, int i, KeyEvent keyEvent) {
                        if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                            if (IMBrowserActivity.d != null) {
                                IMBrowserActivity.d.close();
                            }
                            IMBrowserActivity.this.finish();
                            return true;
                        }
                        return false;
                    }
                });
            }
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception rendering ad in ImBrowser Activity", e2);
        }
    }

    public static void setWebview(IMWebView iMWebView) {
        if (iMWebView != null) {
            b = iMWebView;
        }
    }

    public static void setExpandedLayout(FrameLayout frameLayout) {
        if (frameLayout != null) {
            e = frameLayout;
        }
    }

    public static void setExpandedWebview(IMWebView iMWebView) {
        if (iMWebView != null) {
            d = iMWebView;
        }
    }

    public static void setOriginalActivity(Activity activity) {
        if (activity != null) {
            o = activity;
        }
    }

    private void a(int i, String str, String str2, String str3, int i2) {
        String str4;
        String str5;
        switch (i) {
            case 1:
                str4 = "";
                break;
            case 2:
                str4 = "com.google.android.apps.plus";
                break;
            case 3:
                str4 = "com.twitter.android";
                break;
            default:
                str4 = null;
                break;
        }
        String str6 = str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str2 + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str3;
        Intent intent = new Intent();
        intent.setType("text/plain");
        intent.setPackage(str4);
        intent.putExtra("android.intent.extra.TEXT", str6);
        try {
            startActivityForResult(intent, i2);
        } catch (Exception e2) {
            try {
            } catch (UnsupportedEncodingException e3) {
                Log.internal(Constants.RENDERING_LOG_TAG, "UTF-8 encoding not supported? What sorcery is this?", e3);
            }
            switch (i) {
                case 1:
                    str5 = "https://www.facebook.com/dialog/feed?app_id=181821551957328&link=" + URLEncoder.encode(str2, "UTF-8") + "&picture=" + URLEncoder.encode(str3, "UTF-8") + "&name=&description=" + URLEncoder.encode(str, "UTF-8") + "&redirect_uri=" + URLEncoder.encode(str2, "UTF-8");
                    break;
                case 2:
                    str5 = "https://m.google.com/app/plus/x/?v=compose&content=" + URLEncoder.encode(str6, "UTF-8");
                    break;
                case 3:
                    str5 = "http://twitter.com/home?status=" + URLEncoder.encode(str6, "UTF-8");
                    break;
                default:
                    str5 = null;
                    break;
            }
            if (str5 != null) {
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setData(Uri.parse(str5));
                try {
                    startActivityForResult(intent2, i2);
                    return;
                } catch (Exception e4) {
                    onActivityResult(i2, 0, null);
                    return;
                }
            }
            Intent intent3 = new Intent();
            intent3.setType("text/plain");
            intent3.putExtra("android.intent.extra.TEXT", str6);
            try {
                startActivityForResult(intent3, i2);
            } catch (Exception e5) {
                onActivityResult(i2, 0, null);
            }
        }
    }

    private void a(long j, long j2, String str, String str2, String str3, String str4, String str5, int i) {
        JSONObject jSONObject;
        String optString;
        try {
            Intent intent = new Intent("android.intent.action.EDIT");
            intent.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
            intent.putExtra("beginTime", j);
            intent.putExtra("allDay", false);
            intent.putExtra("endTime", j2);
            intent.putExtra("title", str2);
            intent.putExtra("eventLocation", str);
            intent.putExtra("description", str3);
            if (str4.equals("transparent")) {
                intent.putExtra("availability", 1);
            } else if (str4.equals("opaque")) {
                intent.putExtra("availability", 0);
            }
            if (!"".equals(str5) && Build.VERSION.SDK_INT > 8) {
                StringBuilder sb = new StringBuilder();
                try {
                    jSONObject = new JSONObject(str5);
                    optString = jSONObject.optString("frequency");
                } catch (Exception e2) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Exception parsing recurrence rule", e2);
                }
                if (optString != null && !"".equals(optString)) {
                    if ("daily".equals(optString) || "weekly".equals(optString) || "monthly".equals(optString) || "yearly".equals(optString)) {
                        sb.append("freq=" + optString + ";");
                    }
                    String optString2 = jSONObject.optString("interval");
                    if (optString2 != null) {
                        try {
                            if (!"".equals(optString2)) {
                                sb.append("interval=" + Integer.parseInt(optString2) + ";");
                            }
                        } catch (Exception e3) {
                            if (this.f3696a != null) {
                                this.f3696a.raiseError("Interval is incorrect in recurrence rule", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
                            }
                            Log.internal(Constants.RENDERING_LOG_TAG, "Invalid interval in recurrence rule", e3);
                        }
                    }
                    String a2 = a(jSONObject.optString("expires"));
                    if (a2 != null) {
                        sb.append("until=" + a2.replace("+", "Z+").replace("-", "Z-") + ";");
                    } else if (this.f3696a != null) {
                        this.f3696a.raiseError("Date format is incorrect in until", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
                    }
                    String a3 = a(jSONObject.optJSONArray("daysInWeek"));
                    if (a3 != null) {
                        sb.append("byday=" + a3 + ";");
                    }
                    String a4 = a(jSONObject.optJSONArray("daysInMonth"), -30, 31);
                    if (a4 != null) {
                        sb.append("bymonthday=" + a4 + ";");
                    }
                    String a5 = a(jSONObject.optJSONArray("daysInYear"), -364, 365);
                    if (a5 != null) {
                        sb.append("byyearday=" + a5 + ";");
                    }
                    String a6 = a(jSONObject.optJSONArray("weeksInMonth"), -3, 4);
                    if (a6 != null) {
                        sb.append("byweekno=" + a6 + ";");
                    }
                    String a7 = a(jSONObject.optJSONArray("monthsInYear"), 1, 12);
                    if (a7 != null) {
                        sb.append("bymonth=" + a7 + ";");
                    }
                    Log.internal(Constants.RENDERING_LOG_TAG, "Recurrence rule : " + sb.toString());
                    if (!"".equals(sb.toString())) {
                        intent.putExtra("rrule", sb.toString());
                    }
                } else {
                    if (this.f3696a != null) {
                        this.f3696a.raiseError("Frequency is incorrect in recurrence rule", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
                    }
                    startActivityForResult(intent, i);
                    return;
                }
            }
            startActivityForResult(intent, i);
        } catch (Exception e4) {
            onActivityResult(i, 0, null);
        }
    }

    private String a(String str) {
        Date date;
        String str2 = null;
        if (str != null && !"".equals(str)) {
            SimpleDateFormat[] simpleDateFormatArr = JSUtilityController.formats;
            int length = simpleDateFormatArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    date = null;
                    break;
                }
                try {
                    date = simpleDateFormatArr[i].parse(str);
                    break;
                } catch (Exception e2) {
                    i++;
                }
            }
            for (SimpleDateFormat simpleDateFormat : JSUtilityController.calendarUntiFormats) {
                try {
                    str2 = simpleDateFormat.format(Long.valueOf(date.getTime()));
                    break;
                } catch (Exception e3) {
                }
            }
        }
        return str2;
    }

    private String a(JSONArray jSONArray, int i, int i2) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() != 0) {
                    StringBuilder sb = new StringBuilder();
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        int i4 = jSONArray.getInt(i3);
                        if (i4 >= i && i4 <= i2) {
                            sb.append(i4 + ",");
                        }
                    }
                    String sb2 = sb.toString();
                    int length = sb2.length();
                    if (length == 0) {
                        return null;
                    }
                    try {
                        if (sb2.charAt(length - 1) == ',') {
                            return sb2.substring(0, length - 1);
                        }
                        return sb2;
                    } catch (Exception e2) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't parse json in create calendar event", e2);
                        return sb2;
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                Log.internal(Constants.RENDERING_LOG_TAG, "Exception parsing recurrence rule", e3);
            }
        }
        return null;
    }

    private String a(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() != 0) {
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        sb.append(jSONArray.get(i) + ",");
                    }
                    String sb2 = sb.toString();
                    int length = sb2.length();
                    if (length == 0) {
                        return null;
                    }
                    try {
                        if (sb2.charAt(length - 1) == ',') {
                            return sb2.substring(0, length - 1);
                        }
                        return sb2;
                    } catch (Exception e2) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't parse json in create calendar event", e2);
                        return sb2;
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                Log.internal(Constants.RENDERING_LOG_TAG, "Exception parsing recurrence rule", e3);
            }
        }
        return null;
    }

    private void a(Intent intent) {
        String stringExtra = intent.getStringExtra(NativeProtocol.WEB_DIALOG_ACTION);
        int intExtra = intent.getIntExtra("id", 0);
        if (stringExtra.equals("takeCameraPicture")) {
            Intent intent2 = new Intent("android.media.action.IMAGE_CAPTURE");
            intent2.putExtra("output", (Uri) intent.getExtras().get("URI"));
            try {
                startActivityForResult(intent2, intExtra);
            } catch (Exception e2) {
                onActivityResult(intExtra, 0, null);
            }
        } else if (stringExtra.equals("getGalleryImage")) {
            try {
                startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), intExtra);
            } catch (Exception e3) {
                onActivityResult(intExtra, 0, null);
            }
        } else if (stringExtra.equals("postToSocial")) {
            a(intent.getIntExtra("socialType", 0), intent.getStringExtra(CommonConstants.RESPONSE_TEXT), intent.getStringExtra("link"), intent.getStringExtra(AdView.DEFAULT_IMAGE_NAME), intExtra);
        } else if (stringExtra.equals(JSInterface.ACTION_CREATE_CALENDAR_EVENT)) {
            a(intent.getLongExtra(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START, 0L), intent.getLongExtra("end", 0L), intent.getStringExtra(a.b.LOCATION), intent.getStringExtra("description"), intent.getStringExtra("summary"), intent.getStringExtra("transparency"), intent.getStringExtra("recurrence"), intExtra);
        }
    }

    private void a(ViewGroup viewGroup) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setId(100);
        linearLayout.setWeightSum(100.0f);
        linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.10
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        linearLayout.setBackgroundResource(17301658);
        linearLayout.setBackgroundColor(-7829368);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), (int) (44.0f * this.h));
        layoutParams.addRule(12);
        viewGroup.addView(linearLayout, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        layoutParams2.weight = 25.0f;
        CustomView customView = new CustomView(this, this.h, CustomView.SwitchIconType.CLOSE_ICON);
        linearLayout.addView(customView, layoutParams2);
        customView.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.11
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-7829368);
                    IMBrowserActivity.this.finish();
                } else if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-16711681);
                }
                return true;
            }
        });
        CustomView customView2 = new CustomView(this, this.h, CustomView.SwitchIconType.REFRESH);
        linearLayout.addView(customView2, layoutParams2);
        customView2.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.12
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-7829368);
                    IMBrowserActivity.this.f3696a.doHidePlayers();
                    IMBrowserActivity.this.f3696a.reload();
                } else if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-16711681);
                }
                return true;
            }
        });
        CustomView customView3 = new CustomView(this, this.h, CustomView.SwitchIconType.BACK);
        linearLayout.addView(customView3, layoutParams2);
        customView3.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-7829368);
                    if (IMBrowserActivity.this.f3696a.canGoBack()) {
                        IMBrowserActivity.this.f3696a.goBack();
                    } else {
                        IMBrowserActivity.this.finish();
                    }
                } else if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-16711681);
                }
                return true;
            }
        });
        this.j = new CustomView(this, this.h, CustomView.SwitchIconType.FORWARD_INACTIVE);
        linearLayout.addView(this.j, layoutParams2);
        this.j.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-7829368);
                    if (IMBrowserActivity.this.f3696a.canGoForward()) {
                        IMBrowserActivity.this.f3696a.goForward();
                    }
                } else if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-16711681);
                }
                return true;
            }
        });
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        try {
            CookieSyncManager.getInstance().stopSync();
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception pausing cookies");
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            CookieSyncManager.getInstance().startSync();
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception syncing cookies");
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            c = null;
            if (this.f3696a != null) {
                this.f3696a.mAudioVideoController.releaseAllPlayers();
            }
            if (f != null && this.i.booleanValue()) {
                f.sendToTarget();
                f = null;
            }
            if (b != null) {
                b.mAudioVideoController.releaseAllPlayers();
                b = null;
            }
            if (e != null && this.n == 102) {
                e = null;
            }
            if (d != null && this.n == 102) {
                d.setOnKeyListener(null);
                d = null;
            }
        } catch (Exception e2) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in onDestroy ", e2);
        }
    }

    public static void requestOnAdDismiss(Message message) {
        f = message;
    }

    public static void setWebViewListener(IMWebView.IMWebViewListener iMWebViewListener) {
        c = iMWebViewListener;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if (configuration.orientation == 2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_LANDSCAPE");
        } else {
            Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_PORTRAIT");
        }
        if (this.f3696a != null) {
            this.f3696a.onOrientationEventChange();
        }
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (d != null && this.n == 102) {
            d.close();
            finish();
        }
        super.onBackPressed();
    }
}
