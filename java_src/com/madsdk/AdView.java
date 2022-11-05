package com.madsdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DownloadManager;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.provider.CalendarContract;
import android.support.v4.app.a;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.google.gson.d;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.madsdk.AppInfo;
import com.madsdk.javascript.ExpandProperties;
import com.madsdk.javascript.MraidEventsListener;
import com.madsdk.javascript.OrientationProperties;
import com.madsdk.javascript.PositionProperties;
import com.madsdk.javascript.ResizeProperties;
import com.madsdk.javascript.SizeProperties;
import com.mopub.common.AdType;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes2.dex */
public class AdView extends FrameLayout {
    public static final String DEFAULT_IMAGE_NAME = "image";
    public static final String INLINE = "inline";
    public static final String INTERSTITIAL = "interstitial";
    public static final int MIN_AD_SIZE = 50;
    private static final String STATE_DEFAULT = "default";
    private static final String STATE_EXPANDED = "expanded";
    private static final String STATE_HIDDEN = "hidden";
    private static final String STATE_LOADING = "loading";
    private static final String STATE_RESIZED = "resized";
    private int defaultHeight;
    private int defaultWidth;
    private float defaultX;
    private float defaultY;
    private ExpandProperties expandProperties;
    private boolean isInterstitial;
    private boolean isNativeBrowser;
    private boolean isViewable;
    private AdListener listener;
    private FullscreenAd mFullScreenDialog;
    private AdWebView mWebView;
    public MraidEventsListener mraidEventsListener;
    private View.OnClickListener onClickListener;
    public OrientationProperties orientationProperties;
    private String p;
    private String publication;
    private int requestedOrientation;
    private ResizeProperties resizeProperties;
    private String srh;
    private String srw;
    private String state;
    private WebViewClient webViewClient;

    /* JADX INFO: Access modifiers changed from: private */
    public void setViewable(boolean z) {
        this.isViewable = z;
        this.mWebView.loadUrl("javascript: mraid.fireEvent('viewableChange', '" + z + "');");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPropertiesChecked() {
        return (this.resizeProperties.height >= 50 || this.resizeProperties.width >= 50) && Math.abs(this.resizeProperties.offsetX) <= this.defaultWidth && Math.abs(this.resizeProperties.offsetY) <= this.defaultHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SizeProperties getScreenSize() {
        SizeProperties sizeProperties = new SizeProperties();
        Display defaultDisplay = ((Activity) getContext()).getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        sizeProperties.width = pxToDp(displayMetrics.widthPixels);
        sizeProperties.height = pxToDp(displayMetrics.heightPixels);
        return sizeProperties;
    }

    public static int pxToDp(float f) {
        return (int) ((f / Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static int dpToPx(int i) {
        return (int) ((Resources.getSystem().getDisplayMetrics().density * i) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void close() {
        if ("expanded".equals(this.state) || this.isInterstitial) {
            ((Activity) getContext()).setRequestedOrientation(this.requestedOrientation);
            this.mFullScreenDialog.removeWebView();
            addView(this.mWebView);
            this.mFullScreenDialog.dismiss();
            setState("default");
        } else if ("resized".equals(this.state)) {
            setDefaultSize();
            setState("default");
        }
    }

    private void setDefaultSize() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = this.defaultHeight;
        layoutParams.width = this.defaultWidth;
        setLayoutParams(layoutParams);
        this.mWebView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    }

    public AdView(Context context) {
        super(context);
        this.state = "loading";
        this.isViewable = false;
        this.webViewClient = new WebViewClient() { // from class: com.madsdk.AdView.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                AdView.this.state = "default";
                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('ready');");
                AdView.this.setViewable(true);
            }
        };
        this.isInterstitial = false;
        this.onClickListener = new View.OnClickListener() { // from class: com.madsdk.AdView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AdView.this.listener != null) {
                    AdView.this.listener.onClick();
                }
            }
        };
        this.expandProperties = new ExpandProperties();
        this.resizeProperties = new ResizeProperties();
        this.orientationProperties = new OrientationProperties();
        this.mraidEventsListener = new MraidEventsListener() { // from class: com.madsdk.AdView.3
            @Override // com.madsdk.javascript.MraidEventsListener
            public void open(String str) {
                Utils.openBrowser(AdView.this.isNativeBrowser, str, AdView.this.getContext());
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void useCustomClose(boolean z) {
                if (!z) {
                    if (AdView.this.mFullScreenDialog != null) {
                        AdView.this.mFullScreenDialog.showButton();
                    }
                } else if (AdView.this.mFullScreenDialog != null) {
                    AdView.this.mFullScreenDialog.hideButton();
                }
                AdView.this.expandProperties.useCustomClose = z;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void close() {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdView.this.close();
                    }
                });
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void expand() {
                if (!AdView.this.isInterstitial && !"expanded".equals(getState())) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.setState("expanded");
                            AdView.this.openDialog();
                        }
                    });
                }
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public String getState() {
                return AdView.this.state;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public boolean isViewable() {
                return AdView.this.isViewable;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setExpandProperties(ExpandProperties expandProperties) {
                useCustomClose(expandProperties.useCustomClose);
                if (expandProperties.height != 0) {
                    AdView.this.expandProperties.height = expandProperties.height;
                }
                if (expandProperties.width != 0) {
                    AdView.this.expandProperties.width = expandProperties.width;
                }
                AdView.this.expandProperties.useCustomClose = expandProperties.useCustomClose;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setOrientationProperties(OrientationProperties orientationProperties) {
                AdView.this.orientationProperties = orientationProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public PositionProperties getCurrentPosition() {
                PositionProperties positionProperties = new PositionProperties();
                positionProperties.x = AdView.pxToDp(AdView.this.getX());
                positionProperties.y = AdView.pxToDp(AdView.this.getY());
                positionProperties.width = AdView.pxToDp(AdView.this.getWidth());
                positionProperties.height = AdView.pxToDp(AdView.this.getHeight());
                return positionProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public PositionProperties getDefaultPosition() {
                PositionProperties positionProperties = new PositionProperties();
                positionProperties.x = AdView.pxToDp(AdView.this.defaultX);
                positionProperties.y = AdView.pxToDp(AdView.this.defaultY);
                positionProperties.width = AdView.pxToDp(AdView.this.defaultWidth);
                positionProperties.height = AdView.pxToDp(AdView.this.defaultHeight);
                return positionProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public SizeProperties getScreenSize() {
                return AdView.this.getScreenSize();
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public SizeProperties getMaxSize() {
                Rect rect = new Rect();
                SizeProperties sizeProperties = new SizeProperties();
                AdView.this.getWindowVisibleDisplayFrame(rect);
                sizeProperties.height = AdView.pxToDp(rect.bottom - rect.top);
                sizeProperties.width = AdView.pxToDp(rect.right - rect.left);
                return sizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public ExpandProperties getExpandProperties() {
                return AdView.this.expandProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public ResizeProperties getResizeProperties() {
                return AdView.this.resizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public OrientationProperties getOrientationProperties() {
                return AdView.this.orientationProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public String getPlacementType() {
                return AdView.this.isInterstitial ? "interstitial" : "inline";
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setResizeProperties(ResizeProperties resizeProperties) {
                AdView.this.resizeProperties = resizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void resize() {
                if ("expanded".equals(AdView.this.state)) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.3
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'The ad is expanded', 'resize');");
                        }
                    });
                } else {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.4
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!AdView.this.isPropertiesChecked()) {
                                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'The close region can't be offscreen', 'resize');");
                                return;
                            }
                            ViewGroup.LayoutParams layoutParams = AdView.this.getLayoutParams();
                            layoutParams.height = AdView.dpToPx(AdView.this.resizeProperties.height);
                            layoutParams.width = AdView.dpToPx(AdView.this.resizeProperties.width);
                            AdView.this.setLayoutParams(layoutParams);
                            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) AdView.this.mWebView.getLayoutParams();
                            if (AdView.this.resizeProperties.allowOffscreen) {
                                layoutParams2.height = AdView.dpToPx(AdView.this.resizeProperties.height);
                                layoutParams2.width = AdView.dpToPx(AdView.this.resizeProperties.width);
                            } else {
                                layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                            }
                            layoutParams2.leftMargin = AdView.this.resizeProperties.offsetX;
                            layoutParams2.topMargin = AdView.this.resizeProperties.offsetY;
                            AdView.this.mWebView.setLayoutParams(layoutParams2);
                            AdView.this.setState("resized");
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('sizeChanged');");
                        }
                    });
                }
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void storePicture(String str) {
                DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
                String substring = str.substring(str.lastIndexOf(47) + 1, str.lastIndexOf(46));
                if (substring.isEmpty()) {
                    substring = AdView.DEFAULT_IMAGE_NAME;
                }
                request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, substring);
                request.allowScanningByMediaScanner();
                request.setNotificationVisibility(1);
                ((DownloadManager) AdView.this.getContext().getSystemService(AdTrackerConstants.GOAL_DOWNLOAD)).enqueue(request);
                Toast.makeText(AdView.this.getContext(), R.string.image_is_downloading_message, 0).show();
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void playVideo(String str) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent.setDataAndType(Uri.parse(str), "video/mp4");
                AdView.this.getContext().startActivity(intent);
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void createCalendarEvent(final CalendarEvent calendarEvent) {
                ContentResolver contentResolver = AdView.this.getContext().getContentResolver();
                ContentValues contentValues = new ContentValues();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ", Locale.getDefault());
                try {
                    contentValues.put("dtstart", Long.valueOf(simpleDateFormat.parse(calendarEvent.start).getTime()));
                    try {
                        contentValues.put("dtend", Long.valueOf(simpleDateFormat.parse(calendarEvent.end).getTime()));
                        contentValues.put("title", calendarEvent.summary);
                        contentValues.put("description", calendarEvent.description);
                        contentValues.put("eventLocation", calendarEvent.location);
                        contentValues.put("eventTimezone", TimeZone.getDefault().getID());
                        contentValues.put("calendar_id", calendarEvent.id);
                        contentValues.put("eventStatus", calendarEvent.status);
                        if (a.b(AdView.this.getContext(), "android.permission.WRITE_CALENDAR") != 0) {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Write calendar permission is not granted', 'createCalendarEvent');");
                        } else if (contentResolver.insert(CalendarContract.Events.CONTENT_URI, contentValues) == null) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.7
                                @Override // java.lang.Runnable
                                public void run() {
                                    AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Calendar event is not added', 'createCalendarEvent');");
                                }
                            });
                        } else {
                            Toast.makeText(AdView.this.getContext(), R.string.calendar_event_is_added, 0).show();
                        }
                    } catch (ParseException e) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.6
                            @Override // java.lang.Runnable
                            public void run() {
                                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Date is not parceble: " + calendarEvent.end + "', 'createCalendarEvent');");
                            }
                        });
                    }
                } catch (ParseException e2) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.5
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Date is not parceble: " + calendarEvent.start + "', 'createCalendarEvent');");
                        }
                    });
                }
            }
        };
        init();
    }

    public AdView(Context context, String str, Boolean bool, AdListener adListener) {
        super(context);
        this.state = "loading";
        this.isViewable = false;
        this.webViewClient = new WebViewClient() { // from class: com.madsdk.AdView.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str2) {
                AdView.this.state = "default";
                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('ready');");
                AdView.this.setViewable(true);
            }
        };
        this.isInterstitial = false;
        this.onClickListener = new View.OnClickListener() { // from class: com.madsdk.AdView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AdView.this.listener != null) {
                    AdView.this.listener.onClick();
                }
            }
        };
        this.expandProperties = new ExpandProperties();
        this.resizeProperties = new ResizeProperties();
        this.orientationProperties = new OrientationProperties();
        this.mraidEventsListener = new MraidEventsListener() { // from class: com.madsdk.AdView.3
            @Override // com.madsdk.javascript.MraidEventsListener
            public void open(String str2) {
                Utils.openBrowser(AdView.this.isNativeBrowser, str2, AdView.this.getContext());
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void useCustomClose(boolean z) {
                if (!z) {
                    if (AdView.this.mFullScreenDialog != null) {
                        AdView.this.mFullScreenDialog.showButton();
                    }
                } else if (AdView.this.mFullScreenDialog != null) {
                    AdView.this.mFullScreenDialog.hideButton();
                }
                AdView.this.expandProperties.useCustomClose = z;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void close() {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdView.this.close();
                    }
                });
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void expand() {
                if (!AdView.this.isInterstitial && !"expanded".equals(getState())) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.setState("expanded");
                            AdView.this.openDialog();
                        }
                    });
                }
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public String getState() {
                return AdView.this.state;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public boolean isViewable() {
                return AdView.this.isViewable;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setExpandProperties(ExpandProperties expandProperties) {
                useCustomClose(expandProperties.useCustomClose);
                if (expandProperties.height != 0) {
                    AdView.this.expandProperties.height = expandProperties.height;
                }
                if (expandProperties.width != 0) {
                    AdView.this.expandProperties.width = expandProperties.width;
                }
                AdView.this.expandProperties.useCustomClose = expandProperties.useCustomClose;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setOrientationProperties(OrientationProperties orientationProperties) {
                AdView.this.orientationProperties = orientationProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public PositionProperties getCurrentPosition() {
                PositionProperties positionProperties = new PositionProperties();
                positionProperties.x = AdView.pxToDp(AdView.this.getX());
                positionProperties.y = AdView.pxToDp(AdView.this.getY());
                positionProperties.width = AdView.pxToDp(AdView.this.getWidth());
                positionProperties.height = AdView.pxToDp(AdView.this.getHeight());
                return positionProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public PositionProperties getDefaultPosition() {
                PositionProperties positionProperties = new PositionProperties();
                positionProperties.x = AdView.pxToDp(AdView.this.defaultX);
                positionProperties.y = AdView.pxToDp(AdView.this.defaultY);
                positionProperties.width = AdView.pxToDp(AdView.this.defaultWidth);
                positionProperties.height = AdView.pxToDp(AdView.this.defaultHeight);
                return positionProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public SizeProperties getScreenSize() {
                return AdView.this.getScreenSize();
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public SizeProperties getMaxSize() {
                Rect rect = new Rect();
                SizeProperties sizeProperties = new SizeProperties();
                AdView.this.getWindowVisibleDisplayFrame(rect);
                sizeProperties.height = AdView.pxToDp(rect.bottom - rect.top);
                sizeProperties.width = AdView.pxToDp(rect.right - rect.left);
                return sizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public ExpandProperties getExpandProperties() {
                return AdView.this.expandProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public ResizeProperties getResizeProperties() {
                return AdView.this.resizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public OrientationProperties getOrientationProperties() {
                return AdView.this.orientationProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public String getPlacementType() {
                return AdView.this.isInterstitial ? "interstitial" : "inline";
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setResizeProperties(ResizeProperties resizeProperties) {
                AdView.this.resizeProperties = resizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void resize() {
                if ("expanded".equals(AdView.this.state)) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.3
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'The ad is expanded', 'resize');");
                        }
                    });
                } else {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.4
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!AdView.this.isPropertiesChecked()) {
                                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'The close region can't be offscreen', 'resize');");
                                return;
                            }
                            ViewGroup.LayoutParams layoutParams = AdView.this.getLayoutParams();
                            layoutParams.height = AdView.dpToPx(AdView.this.resizeProperties.height);
                            layoutParams.width = AdView.dpToPx(AdView.this.resizeProperties.width);
                            AdView.this.setLayoutParams(layoutParams);
                            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) AdView.this.mWebView.getLayoutParams();
                            if (AdView.this.resizeProperties.allowOffscreen) {
                                layoutParams2.height = AdView.dpToPx(AdView.this.resizeProperties.height);
                                layoutParams2.width = AdView.dpToPx(AdView.this.resizeProperties.width);
                            } else {
                                layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                            }
                            layoutParams2.leftMargin = AdView.this.resizeProperties.offsetX;
                            layoutParams2.topMargin = AdView.this.resizeProperties.offsetY;
                            AdView.this.mWebView.setLayoutParams(layoutParams2);
                            AdView.this.setState("resized");
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('sizeChanged');");
                        }
                    });
                }
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void storePicture(String str2) {
                DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str2));
                String substring = str2.substring(str2.lastIndexOf(47) + 1, str2.lastIndexOf(46));
                if (substring.isEmpty()) {
                    substring = AdView.DEFAULT_IMAGE_NAME;
                }
                request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, substring);
                request.allowScanningByMediaScanner();
                request.setNotificationVisibility(1);
                ((DownloadManager) AdView.this.getContext().getSystemService(AdTrackerConstants.GOAL_DOWNLOAD)).enqueue(request);
                Toast.makeText(AdView.this.getContext(), R.string.image_is_downloading_message, 0).show();
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void playVideo(String str2) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
                intent.setDataAndType(Uri.parse(str2), "video/mp4");
                AdView.this.getContext().startActivity(intent);
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void createCalendarEvent(final CalendarEvent calendarEvent) {
                ContentResolver contentResolver = AdView.this.getContext().getContentResolver();
                ContentValues contentValues = new ContentValues();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ", Locale.getDefault());
                try {
                    contentValues.put("dtstart", Long.valueOf(simpleDateFormat.parse(calendarEvent.start).getTime()));
                    try {
                        contentValues.put("dtend", Long.valueOf(simpleDateFormat.parse(calendarEvent.end).getTime()));
                        contentValues.put("title", calendarEvent.summary);
                        contentValues.put("description", calendarEvent.description);
                        contentValues.put("eventLocation", calendarEvent.location);
                        contentValues.put("eventTimezone", TimeZone.getDefault().getID());
                        contentValues.put("calendar_id", calendarEvent.id);
                        contentValues.put("eventStatus", calendarEvent.status);
                        if (a.b(AdView.this.getContext(), "android.permission.WRITE_CALENDAR") != 0) {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Write calendar permission is not granted', 'createCalendarEvent');");
                        } else if (contentResolver.insert(CalendarContract.Events.CONTENT_URI, contentValues) == null) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.7
                                @Override // java.lang.Runnable
                                public void run() {
                                    AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Calendar event is not added', 'createCalendarEvent');");
                                }
                            });
                        } else {
                            Toast.makeText(AdView.this.getContext(), R.string.calendar_event_is_added, 0).show();
                        }
                    } catch (ParseException e) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.6
                            @Override // java.lang.Runnable
                            public void run() {
                                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Date is not parceble: " + calendarEvent.end + "', 'createCalendarEvent');");
                            }
                        });
                    }
                } catch (ParseException e2) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.5
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Date is not parceble: " + calendarEvent.start + "', 'createCalendarEvent');");
                        }
                    });
                }
            }
        };
        this.isNativeBrowser = bool.booleanValue();
        this.listener = adListener;
        init();
        if (str != null) {
            loadAd(str);
        }
    }

    private void init() {
        this.mWebView = new AdWebView(getContext(), this.mraidEventsListener, this.webViewClient);
        addView(this.mWebView, new FrameLayout.LayoutParams(-1, -1));
        this.defaultX = getX();
        this.defaultY = getY();
        this.defaultHeight = getHeight();
        this.defaultWidth = getWidth();
        SizeProperties screenSize = getScreenSize();
        this.expandProperties.width = screenSize.width;
        this.expandProperties.height = screenSize.height;
        setOnClickListener(this.onClickListener);
        this.mWebView.setOnClickListener(this.onClickListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openDialog() {
        char c = 65535;
        removeView(this.mWebView);
        this.mFullScreenDialog = new FullscreenAd();
        this.mFullScreenDialog.setMraidEventsListener(this.mraidEventsListener);
        this.mFullScreenDialog.addWebView(this.mWebView, new FrameLayout.LayoutParams(-1, -1), this.expandProperties.useCustomClose);
        this.mFullScreenDialog.setListener((InterstitialAdListener) this.listener);
        Activity activity = (Activity) getContext();
        this.requestedOrientation = activity.getRequestedOrientation();
        if (this.orientationProperties.allowOrientationChange) {
            activity.setRequestedOrientation(-1);
        } else {
            activity.setRequestedOrientation(5);
        }
        String str = this.orientationProperties.forceOrientation;
        switch (str.hashCode()) {
            case 729267099:
                if (str.equals("portrait")) {
                    c = 0;
                    break;
                }
                break;
            case 1430647483:
                if (str.equals("landscape")) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                activity.setRequestedOrientation(7);
                break;
            case 1:
                activity.setRequestedOrientation(6);
                break;
        }
        this.mFullScreenDialog.show(activity.getFragmentManager(), "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAd(String str) {
        this.mWebView.loadAd(str);
        if (this.listener != null) {
            this.listener.onLoad();
        }
    }

    public AdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.state = "loading";
        this.isViewable = false;
        this.webViewClient = new WebViewClient() { // from class: com.madsdk.AdView.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str2) {
                AdView.this.state = "default";
                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('ready');");
                AdView.this.setViewable(true);
            }
        };
        this.isInterstitial = false;
        this.onClickListener = new View.OnClickListener() { // from class: com.madsdk.AdView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AdView.this.listener != null) {
                    AdView.this.listener.onClick();
                }
            }
        };
        this.expandProperties = new ExpandProperties();
        this.resizeProperties = new ResizeProperties();
        this.orientationProperties = new OrientationProperties();
        this.mraidEventsListener = new MraidEventsListener() { // from class: com.madsdk.AdView.3
            @Override // com.madsdk.javascript.MraidEventsListener
            public void open(String str2) {
                Utils.openBrowser(AdView.this.isNativeBrowser, str2, AdView.this.getContext());
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void useCustomClose(boolean z) {
                if (!z) {
                    if (AdView.this.mFullScreenDialog != null) {
                        AdView.this.mFullScreenDialog.showButton();
                    }
                } else if (AdView.this.mFullScreenDialog != null) {
                    AdView.this.mFullScreenDialog.hideButton();
                }
                AdView.this.expandProperties.useCustomClose = z;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void close() {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdView.this.close();
                    }
                });
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void expand() {
                if (!AdView.this.isInterstitial && !"expanded".equals(getState())) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.setState("expanded");
                            AdView.this.openDialog();
                        }
                    });
                }
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public String getState() {
                return AdView.this.state;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public boolean isViewable() {
                return AdView.this.isViewable;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setExpandProperties(ExpandProperties expandProperties) {
                useCustomClose(expandProperties.useCustomClose);
                if (expandProperties.height != 0) {
                    AdView.this.expandProperties.height = expandProperties.height;
                }
                if (expandProperties.width != 0) {
                    AdView.this.expandProperties.width = expandProperties.width;
                }
                AdView.this.expandProperties.useCustomClose = expandProperties.useCustomClose;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setOrientationProperties(OrientationProperties orientationProperties) {
                AdView.this.orientationProperties = orientationProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public PositionProperties getCurrentPosition() {
                PositionProperties positionProperties = new PositionProperties();
                positionProperties.x = AdView.pxToDp(AdView.this.getX());
                positionProperties.y = AdView.pxToDp(AdView.this.getY());
                positionProperties.width = AdView.pxToDp(AdView.this.getWidth());
                positionProperties.height = AdView.pxToDp(AdView.this.getHeight());
                return positionProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public PositionProperties getDefaultPosition() {
                PositionProperties positionProperties = new PositionProperties();
                positionProperties.x = AdView.pxToDp(AdView.this.defaultX);
                positionProperties.y = AdView.pxToDp(AdView.this.defaultY);
                positionProperties.width = AdView.pxToDp(AdView.this.defaultWidth);
                positionProperties.height = AdView.pxToDp(AdView.this.defaultHeight);
                return positionProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public SizeProperties getScreenSize() {
                return AdView.this.getScreenSize();
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public SizeProperties getMaxSize() {
                Rect rect = new Rect();
                SizeProperties sizeProperties = new SizeProperties();
                AdView.this.getWindowVisibleDisplayFrame(rect);
                sizeProperties.height = AdView.pxToDp(rect.bottom - rect.top);
                sizeProperties.width = AdView.pxToDp(rect.right - rect.left);
                return sizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public ExpandProperties getExpandProperties() {
                return AdView.this.expandProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public ResizeProperties getResizeProperties() {
                return AdView.this.resizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public OrientationProperties getOrientationProperties() {
                return AdView.this.orientationProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public String getPlacementType() {
                return AdView.this.isInterstitial ? "interstitial" : "inline";
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setResizeProperties(ResizeProperties resizeProperties) {
                AdView.this.resizeProperties = resizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void resize() {
                if ("expanded".equals(AdView.this.state)) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.3
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'The ad is expanded', 'resize');");
                        }
                    });
                } else {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.4
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!AdView.this.isPropertiesChecked()) {
                                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'The close region can't be offscreen', 'resize');");
                                return;
                            }
                            ViewGroup.LayoutParams layoutParams = AdView.this.getLayoutParams();
                            layoutParams.height = AdView.dpToPx(AdView.this.resizeProperties.height);
                            layoutParams.width = AdView.dpToPx(AdView.this.resizeProperties.width);
                            AdView.this.setLayoutParams(layoutParams);
                            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) AdView.this.mWebView.getLayoutParams();
                            if (AdView.this.resizeProperties.allowOffscreen) {
                                layoutParams2.height = AdView.dpToPx(AdView.this.resizeProperties.height);
                                layoutParams2.width = AdView.dpToPx(AdView.this.resizeProperties.width);
                            } else {
                                layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                            }
                            layoutParams2.leftMargin = AdView.this.resizeProperties.offsetX;
                            layoutParams2.topMargin = AdView.this.resizeProperties.offsetY;
                            AdView.this.mWebView.setLayoutParams(layoutParams2);
                            AdView.this.setState("resized");
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('sizeChanged');");
                        }
                    });
                }
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void storePicture(String str2) {
                DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str2));
                String substring = str2.substring(str2.lastIndexOf(47) + 1, str2.lastIndexOf(46));
                if (substring.isEmpty()) {
                    substring = AdView.DEFAULT_IMAGE_NAME;
                }
                request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, substring);
                request.allowScanningByMediaScanner();
                request.setNotificationVisibility(1);
                ((DownloadManager) AdView.this.getContext().getSystemService(AdTrackerConstants.GOAL_DOWNLOAD)).enqueue(request);
                Toast.makeText(AdView.this.getContext(), R.string.image_is_downloading_message, 0).show();
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void playVideo(String str2) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
                intent.setDataAndType(Uri.parse(str2), "video/mp4");
                AdView.this.getContext().startActivity(intent);
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void createCalendarEvent(final CalendarEvent calendarEvent) {
                ContentResolver contentResolver = AdView.this.getContext().getContentResolver();
                ContentValues contentValues = new ContentValues();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ", Locale.getDefault());
                try {
                    contentValues.put("dtstart", Long.valueOf(simpleDateFormat.parse(calendarEvent.start).getTime()));
                    try {
                        contentValues.put("dtend", Long.valueOf(simpleDateFormat.parse(calendarEvent.end).getTime()));
                        contentValues.put("title", calendarEvent.summary);
                        contentValues.put("description", calendarEvent.description);
                        contentValues.put("eventLocation", calendarEvent.location);
                        contentValues.put("eventTimezone", TimeZone.getDefault().getID());
                        contentValues.put("calendar_id", calendarEvent.id);
                        contentValues.put("eventStatus", calendarEvent.status);
                        if (a.b(AdView.this.getContext(), "android.permission.WRITE_CALENDAR") != 0) {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Write calendar permission is not granted', 'createCalendarEvent');");
                        } else if (contentResolver.insert(CalendarContract.Events.CONTENT_URI, contentValues) == null) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.7
                                @Override // java.lang.Runnable
                                public void run() {
                                    AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Calendar event is not added', 'createCalendarEvent');");
                                }
                            });
                        } else {
                            Toast.makeText(AdView.this.getContext(), R.string.calendar_event_is_added, 0).show();
                        }
                    } catch (ParseException e) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.6
                            @Override // java.lang.Runnable
                            public void run() {
                                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Date is not parceble: " + calendarEvent.end + "', 'createCalendarEvent');");
                            }
                        });
                    }
                } catch (ParseException e2) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.5
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Date is not parceble: " + calendarEvent.start + "', 'createCalendarEvent');");
                        }
                    });
                }
            }
        };
        init();
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.AdView, 0, 0);
        try {
            this.publication = obtainStyledAttributes.getString(R.styleable.AdView_publication);
            this.srw = obtainStyledAttributes.getString(R.styleable.AdView_srw);
            this.srh = obtainStyledAttributes.getString(R.styleable.AdView_srh);
            this.p = obtainStyledAttributes.getString(R.styleable.AdView_p);
            this.isNativeBrowser = obtainStyledAttributes.getBoolean(R.styleable.AdView_isNativeBrowser, false);
            load();
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void load() {
        loadAd(this.publication, this.srw, this.srh, this.isNativeBrowser, this.p);
    }

    public void loadAd(final String str, final String str2, final String str3, boolean z, final String str4) {
        this.isNativeBrowser = z;
        AppInfo.request(getContext(), new AppInfo.Listener() { // from class: com.madsdk.AdView.4
            @Override // com.madsdk.AppInfo.Listener
            public void onAppInfoLoaded(AppInfo appInfo) {
                AdView.this.loadBanner(str, str2, str3, appInfo, str4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadBanner(String str, String str2, String str3, AppInfo appInfo, String str4) {
        String url = AdRequest.getUrl(appInfo, str2, str3, str, 0, this.isInterstitial ? 1 : 0, 1, str4);
        Log.d(getClass().getCanonicalName(), url);
        new OkHttpClient().newCall(new Request.Builder().url(url).build()).enqueue(new Callback() { // from class: com.madsdk.AdView.5
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                if (AdView.this.listener != null) {
                    AdView.this.listener.onLoadFailed(iOException.getMessage());
                }
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                final AdResponse adResponse = (AdResponse) new d().a(response.body().string(), (Class<Object>) AdResponse.class);
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (adResponse.html == null) {
                            if (AdView.this.listener != null) {
                                AdView.this.listener.onLoadFailed(adResponse.msg);
                                return;
                            }
                            return;
                        }
                        Log.d(AdType.HTML, adResponse.html);
                        AdView.this.loadAd(adResponse.html);
                    }
                });
            }
        });
    }

    public AdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.state = "loading";
        this.isViewable = false;
        this.webViewClient = new WebViewClient() { // from class: com.madsdk.AdView.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str2) {
                AdView.this.state = "default";
                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('ready');");
                AdView.this.setViewable(true);
            }
        };
        this.isInterstitial = false;
        this.onClickListener = new View.OnClickListener() { // from class: com.madsdk.AdView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AdView.this.listener != null) {
                    AdView.this.listener.onClick();
                }
            }
        };
        this.expandProperties = new ExpandProperties();
        this.resizeProperties = new ResizeProperties();
        this.orientationProperties = new OrientationProperties();
        this.mraidEventsListener = new MraidEventsListener() { // from class: com.madsdk.AdView.3
            @Override // com.madsdk.javascript.MraidEventsListener
            public void open(String str2) {
                Utils.openBrowser(AdView.this.isNativeBrowser, str2, AdView.this.getContext());
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void useCustomClose(boolean z) {
                if (!z) {
                    if (AdView.this.mFullScreenDialog != null) {
                        AdView.this.mFullScreenDialog.showButton();
                    }
                } else if (AdView.this.mFullScreenDialog != null) {
                    AdView.this.mFullScreenDialog.hideButton();
                }
                AdView.this.expandProperties.useCustomClose = z;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void close() {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdView.this.close();
                    }
                });
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void expand() {
                if (!AdView.this.isInterstitial && !"expanded".equals(getState())) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.setState("expanded");
                            AdView.this.openDialog();
                        }
                    });
                }
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public String getState() {
                return AdView.this.state;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public boolean isViewable() {
                return AdView.this.isViewable;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setExpandProperties(ExpandProperties expandProperties) {
                useCustomClose(expandProperties.useCustomClose);
                if (expandProperties.height != 0) {
                    AdView.this.expandProperties.height = expandProperties.height;
                }
                if (expandProperties.width != 0) {
                    AdView.this.expandProperties.width = expandProperties.width;
                }
                AdView.this.expandProperties.useCustomClose = expandProperties.useCustomClose;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setOrientationProperties(OrientationProperties orientationProperties) {
                AdView.this.orientationProperties = orientationProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public PositionProperties getCurrentPosition() {
                PositionProperties positionProperties = new PositionProperties();
                positionProperties.x = AdView.pxToDp(AdView.this.getX());
                positionProperties.y = AdView.pxToDp(AdView.this.getY());
                positionProperties.width = AdView.pxToDp(AdView.this.getWidth());
                positionProperties.height = AdView.pxToDp(AdView.this.getHeight());
                return positionProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public PositionProperties getDefaultPosition() {
                PositionProperties positionProperties = new PositionProperties();
                positionProperties.x = AdView.pxToDp(AdView.this.defaultX);
                positionProperties.y = AdView.pxToDp(AdView.this.defaultY);
                positionProperties.width = AdView.pxToDp(AdView.this.defaultWidth);
                positionProperties.height = AdView.pxToDp(AdView.this.defaultHeight);
                return positionProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public SizeProperties getScreenSize() {
                return AdView.this.getScreenSize();
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public SizeProperties getMaxSize() {
                Rect rect = new Rect();
                SizeProperties sizeProperties = new SizeProperties();
                AdView.this.getWindowVisibleDisplayFrame(rect);
                sizeProperties.height = AdView.pxToDp(rect.bottom - rect.top);
                sizeProperties.width = AdView.pxToDp(rect.right - rect.left);
                return sizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public ExpandProperties getExpandProperties() {
                return AdView.this.expandProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public ResizeProperties getResizeProperties() {
                return AdView.this.resizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public OrientationProperties getOrientationProperties() {
                return AdView.this.orientationProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public String getPlacementType() {
                return AdView.this.isInterstitial ? "interstitial" : "inline";
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setResizeProperties(ResizeProperties resizeProperties) {
                AdView.this.resizeProperties = resizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void resize() {
                if ("expanded".equals(AdView.this.state)) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.3
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'The ad is expanded', 'resize');");
                        }
                    });
                } else {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.4
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!AdView.this.isPropertiesChecked()) {
                                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'The close region can't be offscreen', 'resize');");
                                return;
                            }
                            ViewGroup.LayoutParams layoutParams = AdView.this.getLayoutParams();
                            layoutParams.height = AdView.dpToPx(AdView.this.resizeProperties.height);
                            layoutParams.width = AdView.dpToPx(AdView.this.resizeProperties.width);
                            AdView.this.setLayoutParams(layoutParams);
                            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) AdView.this.mWebView.getLayoutParams();
                            if (AdView.this.resizeProperties.allowOffscreen) {
                                layoutParams2.height = AdView.dpToPx(AdView.this.resizeProperties.height);
                                layoutParams2.width = AdView.dpToPx(AdView.this.resizeProperties.width);
                            } else {
                                layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                            }
                            layoutParams2.leftMargin = AdView.this.resizeProperties.offsetX;
                            layoutParams2.topMargin = AdView.this.resizeProperties.offsetY;
                            AdView.this.mWebView.setLayoutParams(layoutParams2);
                            AdView.this.setState("resized");
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('sizeChanged');");
                        }
                    });
                }
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void storePicture(String str2) {
                DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str2));
                String substring = str2.substring(str2.lastIndexOf(47) + 1, str2.lastIndexOf(46));
                if (substring.isEmpty()) {
                    substring = AdView.DEFAULT_IMAGE_NAME;
                }
                request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, substring);
                request.allowScanningByMediaScanner();
                request.setNotificationVisibility(1);
                ((DownloadManager) AdView.this.getContext().getSystemService(AdTrackerConstants.GOAL_DOWNLOAD)).enqueue(request);
                Toast.makeText(AdView.this.getContext(), R.string.image_is_downloading_message, 0).show();
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void playVideo(String str2) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
                intent.setDataAndType(Uri.parse(str2), "video/mp4");
                AdView.this.getContext().startActivity(intent);
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void createCalendarEvent(final CalendarEvent calendarEvent) {
                ContentResolver contentResolver = AdView.this.getContext().getContentResolver();
                ContentValues contentValues = new ContentValues();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ", Locale.getDefault());
                try {
                    contentValues.put("dtstart", Long.valueOf(simpleDateFormat.parse(calendarEvent.start).getTime()));
                    try {
                        contentValues.put("dtend", Long.valueOf(simpleDateFormat.parse(calendarEvent.end).getTime()));
                        contentValues.put("title", calendarEvent.summary);
                        contentValues.put("description", calendarEvent.description);
                        contentValues.put("eventLocation", calendarEvent.location);
                        contentValues.put("eventTimezone", TimeZone.getDefault().getID());
                        contentValues.put("calendar_id", calendarEvent.id);
                        contentValues.put("eventStatus", calendarEvent.status);
                        if (a.b(AdView.this.getContext(), "android.permission.WRITE_CALENDAR") != 0) {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Write calendar permission is not granted', 'createCalendarEvent');");
                        } else if (contentResolver.insert(CalendarContract.Events.CONTENT_URI, contentValues) == null) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.7
                                @Override // java.lang.Runnable
                                public void run() {
                                    AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Calendar event is not added', 'createCalendarEvent');");
                                }
                            });
                        } else {
                            Toast.makeText(AdView.this.getContext(), R.string.calendar_event_is_added, 0).show();
                        }
                    } catch (ParseException e) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.6
                            @Override // java.lang.Runnable
                            public void run() {
                                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Date is not parceble: " + calendarEvent.end + "', 'createCalendarEvent');");
                            }
                        });
                    }
                } catch (ParseException e2) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.5
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Date is not parceble: " + calendarEvent.start + "', 'createCalendarEvent');");
                        }
                    });
                }
            }
        };
    }

    @TargetApi(21)
    public AdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.state = "loading";
        this.isViewable = false;
        this.webViewClient = new WebViewClient() { // from class: com.madsdk.AdView.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str2) {
                AdView.this.state = "default";
                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('ready');");
                AdView.this.setViewable(true);
            }
        };
        this.isInterstitial = false;
        this.onClickListener = new View.OnClickListener() { // from class: com.madsdk.AdView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AdView.this.listener != null) {
                    AdView.this.listener.onClick();
                }
            }
        };
        this.expandProperties = new ExpandProperties();
        this.resizeProperties = new ResizeProperties();
        this.orientationProperties = new OrientationProperties();
        this.mraidEventsListener = new MraidEventsListener() { // from class: com.madsdk.AdView.3
            @Override // com.madsdk.javascript.MraidEventsListener
            public void open(String str2) {
                Utils.openBrowser(AdView.this.isNativeBrowser, str2, AdView.this.getContext());
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void useCustomClose(boolean z) {
                if (!z) {
                    if (AdView.this.mFullScreenDialog != null) {
                        AdView.this.mFullScreenDialog.showButton();
                    }
                } else if (AdView.this.mFullScreenDialog != null) {
                    AdView.this.mFullScreenDialog.hideButton();
                }
                AdView.this.expandProperties.useCustomClose = z;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void close() {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdView.this.close();
                    }
                });
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void expand() {
                if (!AdView.this.isInterstitial && !"expanded".equals(getState())) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.setState("expanded");
                            AdView.this.openDialog();
                        }
                    });
                }
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public String getState() {
                return AdView.this.state;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public boolean isViewable() {
                return AdView.this.isViewable;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setExpandProperties(ExpandProperties expandProperties) {
                useCustomClose(expandProperties.useCustomClose);
                if (expandProperties.height != 0) {
                    AdView.this.expandProperties.height = expandProperties.height;
                }
                if (expandProperties.width != 0) {
                    AdView.this.expandProperties.width = expandProperties.width;
                }
                AdView.this.expandProperties.useCustomClose = expandProperties.useCustomClose;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setOrientationProperties(OrientationProperties orientationProperties) {
                AdView.this.orientationProperties = orientationProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public PositionProperties getCurrentPosition() {
                PositionProperties positionProperties = new PositionProperties();
                positionProperties.x = AdView.pxToDp(AdView.this.getX());
                positionProperties.y = AdView.pxToDp(AdView.this.getY());
                positionProperties.width = AdView.pxToDp(AdView.this.getWidth());
                positionProperties.height = AdView.pxToDp(AdView.this.getHeight());
                return positionProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public PositionProperties getDefaultPosition() {
                PositionProperties positionProperties = new PositionProperties();
                positionProperties.x = AdView.pxToDp(AdView.this.defaultX);
                positionProperties.y = AdView.pxToDp(AdView.this.defaultY);
                positionProperties.width = AdView.pxToDp(AdView.this.defaultWidth);
                positionProperties.height = AdView.pxToDp(AdView.this.defaultHeight);
                return positionProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public SizeProperties getScreenSize() {
                return AdView.this.getScreenSize();
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public SizeProperties getMaxSize() {
                Rect rect = new Rect();
                SizeProperties sizeProperties = new SizeProperties();
                AdView.this.getWindowVisibleDisplayFrame(rect);
                sizeProperties.height = AdView.pxToDp(rect.bottom - rect.top);
                sizeProperties.width = AdView.pxToDp(rect.right - rect.left);
                return sizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public ExpandProperties getExpandProperties() {
                return AdView.this.expandProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public ResizeProperties getResizeProperties() {
                return AdView.this.resizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public OrientationProperties getOrientationProperties() {
                return AdView.this.orientationProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public String getPlacementType() {
                return AdView.this.isInterstitial ? "interstitial" : "inline";
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void setResizeProperties(ResizeProperties resizeProperties) {
                AdView.this.resizeProperties = resizeProperties;
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void resize() {
                if ("expanded".equals(AdView.this.state)) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.3
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'The ad is expanded', 'resize');");
                        }
                    });
                } else {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.4
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!AdView.this.isPropertiesChecked()) {
                                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'The close region can't be offscreen', 'resize');");
                                return;
                            }
                            ViewGroup.LayoutParams layoutParams = AdView.this.getLayoutParams();
                            layoutParams.height = AdView.dpToPx(AdView.this.resizeProperties.height);
                            layoutParams.width = AdView.dpToPx(AdView.this.resizeProperties.width);
                            AdView.this.setLayoutParams(layoutParams);
                            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) AdView.this.mWebView.getLayoutParams();
                            if (AdView.this.resizeProperties.allowOffscreen) {
                                layoutParams2.height = AdView.dpToPx(AdView.this.resizeProperties.height);
                                layoutParams2.width = AdView.dpToPx(AdView.this.resizeProperties.width);
                            } else {
                                layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                            }
                            layoutParams2.leftMargin = AdView.this.resizeProperties.offsetX;
                            layoutParams2.topMargin = AdView.this.resizeProperties.offsetY;
                            AdView.this.mWebView.setLayoutParams(layoutParams2);
                            AdView.this.setState("resized");
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('sizeChanged');");
                        }
                    });
                }
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void storePicture(String str2) {
                DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str2));
                String substring = str2.substring(str2.lastIndexOf(47) + 1, str2.lastIndexOf(46));
                if (substring.isEmpty()) {
                    substring = AdView.DEFAULT_IMAGE_NAME;
                }
                request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, substring);
                request.allowScanningByMediaScanner();
                request.setNotificationVisibility(1);
                ((DownloadManager) AdView.this.getContext().getSystemService(AdTrackerConstants.GOAL_DOWNLOAD)).enqueue(request);
                Toast.makeText(AdView.this.getContext(), R.string.image_is_downloading_message, 0).show();
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void playVideo(String str2) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
                intent.setDataAndType(Uri.parse(str2), "video/mp4");
                AdView.this.getContext().startActivity(intent);
            }

            @Override // com.madsdk.javascript.MraidEventsListener
            public void createCalendarEvent(final CalendarEvent calendarEvent) {
                ContentResolver contentResolver = AdView.this.getContext().getContentResolver();
                ContentValues contentValues = new ContentValues();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ", Locale.getDefault());
                try {
                    contentValues.put("dtstart", Long.valueOf(simpleDateFormat.parse(calendarEvent.start).getTime()));
                    try {
                        contentValues.put("dtend", Long.valueOf(simpleDateFormat.parse(calendarEvent.end).getTime()));
                        contentValues.put("title", calendarEvent.summary);
                        contentValues.put("description", calendarEvent.description);
                        contentValues.put("eventLocation", calendarEvent.location);
                        contentValues.put("eventTimezone", TimeZone.getDefault().getID());
                        contentValues.put("calendar_id", calendarEvent.id);
                        contentValues.put("eventStatus", calendarEvent.status);
                        if (a.b(AdView.this.getContext(), "android.permission.WRITE_CALENDAR") != 0) {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Write calendar permission is not granted', 'createCalendarEvent');");
                        } else if (contentResolver.insert(CalendarContract.Events.CONTENT_URI, contentValues) == null) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.7
                                @Override // java.lang.Runnable
                                public void run() {
                                    AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Calendar event is not added', 'createCalendarEvent');");
                                }
                            });
                        } else {
                            Toast.makeText(AdView.this.getContext(), R.string.calendar_event_is_added, 0).show();
                        }
                    } catch (ParseException e) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.6
                            @Override // java.lang.Runnable
                            public void run() {
                                AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Date is not parceble: " + calendarEvent.end + "', 'createCalendarEvent');");
                            }
                        });
                    }
                } catch (ParseException e2) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.madsdk.AdView.3.5
                        @Override // java.lang.Runnable
                        public void run() {
                            AdView.this.mWebView.loadUrl("javascript: mraid.fireEvent('error', 'Date is not parceble: " + calendarEvent.start + "', 'createCalendarEvent');");
                        }
                    });
                }
            }
        };
    }

    public void loadData(String str, Boolean bool) {
        this.isNativeBrowser = bool.booleanValue();
        init();
        if (str != null) {
            loadAd(str);
        }
    }

    public void showAsInterstitial() {
        openDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(String str) {
        this.state = str;
        this.mWebView.loadUrl("javascript: mraid.fireEvent('stateChange', '" + str + "');");
    }

    public void setListener(AdListener adListener) {
        this.listener = adListener;
    }

    public void setInterstitial(boolean z) {
        this.isInterstitial = z;
    }
}
