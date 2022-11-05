package com.smartadserver.android.library.controller.mraid;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.location.Location;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import com.google.firebase.a.a;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.openx.view.mraid.JSInterface;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import com.smartadserver.android.library.ui.SASAdView;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SASMRAIDController.java */
/* loaded from: classes.dex */
public class a {
    private SASAdView e;
    private b f;
    private d g;
    private c h;
    private boolean i;
    private String j;
    private int k;
    private boolean l;
    private float m;
    private boolean n = false;
    private int o;
    private int p;
    private int q;
    private int r;
    private static final String d = a.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public static String f5405a = "<script src=\"mraid.js\"></script>";
    public static String b = "https://ns.sascdn.com/diff/templates/js/mobile/mraid/bridges/android-sdk-mraid-bridge-2.3.js";
    public static String c = "mraidbridge";

    public a(SASAdView sASAdView) {
        this.e = sASAdView;
        Context context = this.e.getContext();
        this.k = com.smartadserver.android.library.g.c.g(this.e.getContext());
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        this.m = displayMetrics.density;
        a();
    }

    public void a() {
        this.f = new b();
        this.g = new d();
        this.h = new c();
        g();
        this.l = false;
    }

    public static String a(String str) {
        String replace = str.replace("'mraid.js'", "\"mraid.js\"").replace("<HTML", "<html").replace("</HEAD>", "</head>").replace("<BODY", "<body");
        if (!replace.contains("<html")) {
            String str2 = "<!DOCTYPE html><html><head><meta name=\"viewport\" content=\"initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\"/></head><body style=\"text-align:center;margin:0\">";
            if (!replace.contains("\"mraid.js\"")) {
                str2 = str2 + f5405a;
            }
            return str2 + replace + "</body></html>";
        } else if (replace.contains("\"mraid.js\"")) {
            return replace;
        } else {
            if (replace.contains("</head>")) {
                return replace.replace("</head>", f5405a + "</head>");
            }
            return replace.replace("<body", "<head>" + f5405a + "</head><body");
        }
    }

    public static String b(String str) {
        if (!str.contains("</head>")) {
            str = str.replace("<body", "<head></head><body");
        }
        return str.replace("</head>", "<script>function setClickableAreasOnView(){function t(e){var t=[];var n=document.getElementsByTagName(\"*\");for(var r=0;r<n.length;r++){if(n[r].getAttribute(e)){t.push(n[r])}}return t}var e=document.getElementsByTagName(\"a\");for(i=0;i<e.length;i++){if(e[i].getAttribute(\"data-sas-touch-mode\")==null){e[i].setAttribute(\"data-sas-touch-mode\",\"1\")}}var e=t(\"data-sas-touch-mode\");var n=[];for(i=0;i<e.length;i++){var r=e[i].getBoundingClientRect();n.push(\"\"+e[i].getAttribute(\"data-sas-touch-mode\")+\",\"+Math.round(r.left)+\" \"+Math.round(r.top)+\" \"+Math.round(r.left+r.width)+\" \"+Math.round(r.top+r.height))}mraidbridge.setClickableAreas(n.join(\";\"));window.setTimeout(setClickableAreasOnView,1000)}window.setTimeout(setClickableAreasOnView,100);</script></head>");
    }

    @JavascriptInterface
    public void sendMessage(String str) {
        SASAdView.b messageHandler = this.e.getMessageHandler();
        if (messageHandler != null) {
            messageHandler.a(str);
        }
    }

    @JavascriptInterface
    public String getBase64Screenshot(int i) {
        Bitmap s;
        if (this.e == null || (s = this.e.s()) == null) {
            return null;
        }
        return com.smartadserver.android.library.g.c.a(s, i);
    }

    @JavascriptInterface
    public void callJS(String str) {
        this.e.b(str);
    }

    public void b() {
        if (!this.e.p()) {
            a("expanded", false);
        }
        if ("expanded".equals(this.j) || "resized".equals(this.j)) {
            close();
        }
        a();
        this.j = null;
    }

    private void g() {
        h();
        this.f.f5415a = this.o;
        this.f.b = this.p;
    }

    @TargetApi(17)
    private void h() {
        Display defaultDisplay = ((WindowManager) this.e.getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealMetrics(displayMetrics);
        } else {
            defaultDisplay.getMetrics(displayMetrics);
        }
        this.q = (int) (displayMetrics.widthPixels / this.m);
        this.r = (int) (displayMetrics.heightPixels / this.m);
        int[] expandParentViewMaxSize = this.e.getExpandParentViewMaxSize();
        if (expandParentViewMaxSize != null) {
            this.o = (int) (expandParentViewMaxSize[0] / this.m);
            this.p = (int) (expandParentViewMaxSize[1] / this.m);
        } else {
            this.o = this.q;
            this.p = this.r;
        }
        com.smartadserver.android.library.g.c.a(d, "maxWidth:" + this.o + ",maxHeight:" + this.p + ",screenW:" + this.q + ",screenH:" + this.r);
    }

    @JavascriptInterface
    public void close() {
        com.smartadserver.android.library.g.c.a(d, "close()");
        boolean d2 = com.smartadserver.android.library.g.c.d();
        boolean z = this.e.l != null && this.e.l.c();
        if ("expanded".equals(this.j) || "resized".equals(this.j) || z) {
            a("default", d2);
            this.e.a();
            this.e.o();
            return;
        }
        if (this.j != null) {
            a("hidden", d2);
        }
        this.e.c();
    }

    @JavascriptInterface
    public void open(String str) {
        com.smartadserver.android.library.g.c.a(d, "open(\"" + str + "\")");
        this.e.a(str);
    }

    @JavascriptInterface
    public void expand() {
        expand(null);
    }

    @JavascriptInterface
    public void setEnableStateChangeEvent(final boolean z) {
        this.e.a(new Runnable() { // from class: com.smartadserver.android.library.controller.mraid.a.1
            @Override // java.lang.Runnable
            public void run() {
                a.this.e.setEnableStateChangeEvent(z);
            }
        });
    }

    @JavascriptInterface
    public void expand(final String str) {
        com.smartadserver.android.library.g.c.a(d, "expand():url:" + str);
        this.e.a(new Runnable() { // from class: com.smartadserver.android.library.controller.mraid.a.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z = true;
                boolean b2 = a.this.e.i != null ? a.this.e.i.b() : false;
                if (a.this.j == null || "loading".equals(a.this.j) || "hidden".equals(a.this.j)) {
                    com.smartadserver.android.library.g.c.a(a.d, "CAN NOT EXPAND: invalid state : " + a.this.j);
                    return;
                }
                if (a.this.e.p()) {
                    a.this.a("expanded", true);
                }
                SASAdView sASAdView = a.this.e;
                String str2 = str;
                if (a.this.h.f5416a) {
                    z = false;
                }
                sASAdView.a(str2, -1, -1, z, a.this.h.b);
                boolean equals = "interstitial".equals(a.this.getPlacementType());
                if (str == null && (!a.this.d() || b2)) {
                    a.this.a(b2);
                } else if (str == null && !equals && !(a.this.e.getCurrentAdElement() instanceof SASNativeVideoAdElement)) {
                    a.this.e.b(new View.OnClickListener() { // from class: com.smartadserver.android.library.controller.mraid.a.2.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            a.this.close();
                        }
                    });
                }
            }
        });
    }

    public void a(String str, String str2) {
        this.e.b("if (typeof mraid != 'undefined') mraid.fireErrorEvent(\"" + str + (str2 != null ? "\",\"" + str2 : "") + "\")");
    }

    @JavascriptInterface
    public void resize() {
        com.smartadserver.android.library.g.c.a(d, "resize method called");
        if (!"hidden".equals(this.j)) {
            if ("expanded".equals(this.j)) {
                a("Can not resize a container in EXPANDED state", (String) null);
            } else if (!this.l) {
                a("Can not resize a container with no resize properties set first", "Call mraid.setResizeProperties(properties) first");
            } else {
                final int i = this.g.f5417a < 0 ? this.g.f5417a : (int) (this.g.f5417a * this.m);
                final int i2 = this.g.b < 0 ? this.g.b : (int) (this.g.b * this.m);
                final int i3 = (int) (this.g.d * this.m);
                final int i4 = (int) (this.g.e * this.m);
                this.e.a(new Runnable() { // from class: com.smartadserver.android.library.controller.mraid.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (a.this.e.p()) {
                            a.this.a("resized", true);
                        }
                        a.this.e.a((String) null, i, i2, i3, i4, false, a.this.g.f, false, "none", false);
                        if (!"none".equals(a.this.g.c)) {
                            a.this.e.b(new View.OnClickListener() { // from class: com.smartadserver.android.library.controller.mraid.a.3.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    a.this.close();
                                }
                            });
                            a.this.e.o.setCloseButtonPosition(a.this.g.b());
                        }
                    }
                });
            }
        }
    }

    @JavascriptInterface
    public String getState() {
        com.smartadserver.android.library.g.c.a(d, "getState() return: " + this.j);
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        boolean z2 = false;
        boolean z3 = "resized".equals(this.j) && "resized".equals(str);
        boolean z4 = !z || z3 || this.e.getWindowToken() == null;
        if (this.j == null || !this.j.equals(str) || z3) {
            com.smartadserver.android.library.g.c.a(d, "setState(\"" + str + "\" current:" + this.j + ") from thread:" + Thread.currentThread().getName());
            if (!"interstitial".equals(getPlacementType()) || !"expanded".equals(this.j) || !"default".equals(str)) {
                z2 = true;
            }
            this.j = str;
            if (z2) {
                this.n = true;
                if (z4) {
                    Runnable runnable = new Runnable() { // from class: com.smartadserver.android.library.controller.mraid.a.4
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.c();
                        }
                    };
                    if (com.smartadserver.android.library.g.c.d()) {
                        runnable.run();
                    } else {
                        this.e.a(runnable);
                    }
                }
            }
        }
    }

    @JavascriptInterface
    public void setState(String str) {
        a(str, false);
    }

    public void c() {
        if (!"loading".equals(this.j) && this.n) {
            this.n = false;
            this.e.b("if (typeof mraid != 'undefined') mraid.fireStateChangeEvent(\"" + this.j + "\")");
            com.smartadserver.android.library.g.c.a(d, "mraid.fireStateChangeEvent(\"" + this.j + "\")");
            if ("expanded".equals(this.j)) {
                this.e.a(0);
            } else if ("default".equals(this.j)) {
                this.e.a(1);
            } else if ("hidden".equals(this.j)) {
                this.e.a(2);
            } else if ("resized".equals(this.j)) {
                this.e.a(3);
            }
        }
    }

    public void a(int i, int i2) {
        this.e.b("if (typeof mraid != 'undefined') mraid.fireSizeChangeEvent(\"" + ((int) (i / this.m)) + "\",\"" + ((int) (i2 / this.m)) + "\")");
    }

    public void a(int i) {
        if (i != this.k) {
            com.smartadserver.android.library.g.c.a(d, "onOrientationChange(\"" + i + "\")");
            this.k = i;
            g();
            if ("resized".equals(this.j)) {
                this.e.post(new Runnable() { // from class: com.smartadserver.android.library.controller.mraid.a.5
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.e.setEnableStateChangeEvent(false);
                        a.this.resize();
                        a.this.e.setEnableStateChangeEvent(true);
                    }
                });
            }
            if (!"loading".equals(this.j)) {
                this.e.b("if (typeof mraid != 'undefined') mraid.fireOrientationChangeEvent(\"" + this.k + "\")");
            }
        }
    }

    @JavascriptInterface
    public void setExpandProperties(String str) {
        com.smartadserver.android.library.g.c.a(d, "setExpandProperties(" + str + ")");
        try {
            this.f.a(str);
        } catch (JSONException e) {
            com.smartadserver.android.library.g.c.a(d, "Fail setting expand properties: " + str);
        }
        a(false);
    }

    public void a(boolean z) {
        boolean z2 = false;
        if (this.e.j() && (z || !d() || getPlacementType() == "inline")) {
            z2 = true;
        }
        if (!this.e.r() || !z2) {
            this.e.o();
            if (z2) {
                this.e.a(new View.OnClickListener() { // from class: com.smartadserver.android.library.controller.mraid.a.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        a.this.close();
                    }
                });
            }
        }
    }

    @JavascriptInterface
    public String getExpandProperties() {
        return this.f.a();
    }

    @JavascriptInterface
    public void setExpandUseCustomCloseProperty(boolean z) {
        if (this.f != null) {
            this.f.c = z;
        }
        a(false);
    }

    public boolean d() {
        return this.f.c;
    }

    @JavascriptInterface
    public void setCloseOnClick(boolean z) {
        this.e.setCloseOnclick(z);
    }

    @JavascriptInterface
    public void setResizeProperties(String str) {
        com.smartadserver.android.library.g.c.a(d, "setResizeProperties(" + str + ")");
        try {
            this.g.a(str);
            this.l = true;
        } catch (JSONException e) {
            com.smartadserver.android.library.g.c.a(d, "Fail setting resize properties: " + str);
        }
    }

    @JavascriptInterface
    public String getResizeProperties() {
        return this.g.a();
    }

    @JavascriptInterface
    public void setOrientationProperties(String str) {
        com.smartadserver.android.library.g.c.a(d, "setOrientationProperties(" + str + ")");
        try {
            this.h.a(str);
        } catch (JSONException e) {
            com.smartadserver.android.library.g.c.a(d, "Fail setting orientation properties: " + str);
        }
    }

    @JavascriptInterface
    public String getOrientationProperties() {
        return this.h.a();
    }

    @JavascriptInterface
    public String getMaxSizeString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", this.o);
            jSONObject.put("height", this.p);
            return jSONObject.toString();
        } catch (JSONException e) {
            return "";
        }
    }

    @JavascriptInterface
    public String getScreenSizeString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", this.q);
            jSONObject.put("height", this.r);
            return jSONObject.toString();
        } catch (JSONException e) {
            return "";
        }
    }

    @JavascriptInterface
    public String getCurrentPosition() {
        Rect currentBounds = this.e.getCurrentBounds();
        int[] neededPadding = this.e.getNeededPadding();
        currentBounds.top -= neededPadding[1];
        currentBounds.bottom -= neededPadding[1];
        return a(currentBounds);
    }

    @JavascriptInterface
    public String getDefaultPosition() {
        Rect defaultBounds = this.e.getDefaultBounds();
        int[] neededPadding = this.e.getNeededPadding();
        defaultBounds.left -= neededPadding[0];
        defaultBounds.right -= neededPadding[0];
        defaultBounds.top -= neededPadding[1];
        defaultBounds.bottom -= neededPadding[1];
        return a(defaultBounds);
    }

    public String a(Rect rect) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(JSInterface.JSON_X, rect.left / this.m);
            jSONObject.put(JSInterface.JSON_Y, rect.top / this.m);
            jSONObject.put("width", rect.width() / this.m);
            jSONObject.put("height", rect.height() / this.m);
            return jSONObject.toString();
        } catch (JSONException e) {
            return "";
        }
    }

    @JavascriptInterface
    public int getExpandPolicy() {
        int expandPolicy = this.e.getExpandPolicy();
        com.smartadserver.android.library.g.c.a(d, "getExpandPolicy return: " + expandPolicy);
        return expandPolicy;
    }

    @JavascriptInterface
    public void setExpandPolicy(int i) {
        com.smartadserver.android.library.g.c.a(d, "setExpandPolicy(" + i + ")");
        this.e.setExpandPolicy(i);
    }

    public void b(boolean z) {
        if (this.i != z) {
            com.smartadserver.android.library.g.c.a(d, "setViewable(" + z + ")");
            this.i = z;
            if (!"loading".equals(this.j)) {
                com.smartadserver.android.library.g.c.a(d, "fireViewableChangeEvent(" + this.i + ")");
                this.e.b("if (typeof mraid != 'undefined') mraid.fireViewableChangeEvent(" + this.i + ")");
            }
        }
    }

    @JavascriptInterface
    public boolean isViewable() {
        return this.i;
    }

    @JavascriptInterface
    public void request(String str, String str2) {
        com.smartadserver.android.library.g.c.a(d, "request(\"" + str + "\", \"" + str2 + "\")");
        this.e.e.a(str, "proxy".equals(str2));
    }

    @JavascriptInterface
    public void createEvent(long j, String str, String str2, long j2) {
        String clickPixelUrl = this.e.n.getClickPixelUrl();
        if (clickPixelUrl != null && !clickPixelUrl.equals("")) {
            this.e.e.a(clickPixelUrl, true);
        }
        boolean z = j2 == 0;
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
        intent.putExtra("beginTime", j);
        if (z) {
            intent.putExtra("allDay", true);
        } else {
            intent.putExtra("allDay", false);
            intent.putExtra("endTime", j2);
        }
        intent.putExtra("title", str);
        intent.putExtra("description", str2);
        if (intent.resolveActivity(this.e.getContext().getPackageManager()) != null) {
            this.e.getContext().startActivity(intent);
        } else {
            com.smartadserver.android.library.g.c.c("Can not launch calendar activity");
        }
    }

    @JavascriptInterface
    public void createCalendarEvent(String str) {
        String clickPixelUrl = this.e.n.getClickPixelUrl();
        if (clickPixelUrl != null && !clickPixelUrl.equals("")) {
            this.e.e.a(clickPixelUrl, true);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            long optLong = jSONObject.optLong(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START, -1L);
            long optLong2 = jSONObject.optLong("end", -1L);
            String optString = jSONObject.optString("description", "");
            String optString2 = jSONObject.optString("summary", "");
            String optString3 = jSONObject.optString(a.b.LOCATION, "");
            JSONObject optJSONObject = jSONObject.optJSONObject("recurrence");
            String optString4 = jSONObject.optString("transparency", "");
            boolean z = optLong2 == -1 || optLong2 - optLong == 86400000;
            if (optLong == -1) {
                a("Can not create calendar event: invalid start date", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
            } else if (optLong >= optLong2 && optLong2 != -1) {
                a("Can not create calendar event: start date is posterior to end date", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
            } else {
                Intent intent = new Intent("android.intent.action.EDIT");
                intent.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
                intent.putExtra("beginTime", optLong);
                if (z) {
                    intent.putExtra("allDay", true);
                } else {
                    intent.putExtra("allDay", false);
                    intent.putExtra("endTime", optLong2);
                }
                intent.putExtra("title", optString2);
                intent.putExtra("description", optString);
                intent.putExtra("eventLocation", optString3);
                if ("opaque".equals(optString4)) {
                    intent.putExtra("availability", 0);
                } else {
                    intent.putExtra("availability", 1);
                }
                if (optJSONObject != null) {
                    String a2 = com.smartadserver.android.library.g.c.a(optJSONObject);
                    if (a2.length() > 0) {
                        intent.putExtra("rrule", a2);
                    }
                }
                if (intent.resolveActivity(this.e.getContext().getPackageManager()) != null) {
                    this.e.getContext().startActivity(intent);
                } else {
                    com.smartadserver.android.library.g.c.c("Can not launch calendar activity");
                }
            }
        } catch (JSONException e) {
            a("Can not create calendar event: incorrect JSON format", JSInterface.ACTION_CREATE_CALENDAR_EVENT);
        }
    }

    @JavascriptInterface
    public String getPlacementType() {
        String str = this.e instanceof SASInterstitialView ? "interstitial" : "inline";
        com.smartadserver.android.library.g.c.a(d, "getPlacementType() return: " + str);
        return str;
    }

    @JavascriptInterface
    public int getOrientation() {
        int g = com.smartadserver.android.library.g.c.g(this.e.getContext());
        if (g != this.k) {
            this.k = g;
        }
        com.smartadserver.android.library.g.c.a(d, "getOrientation() return " + this.k);
        return this.k;
    }

    @JavascriptInterface
    public boolean isLandscapeDevice() {
        return com.smartadserver.android.library.g.c.h(this.e.getContext());
    }

    public void e() {
        this.e.b("if (typeof mraid != 'undefined') mraid.fireLocationChangeEvent(" + getLocation() + ");");
    }

    @JavascriptInterface
    public String getLocation() {
        Location location;
        String str = null;
        if (this.e.getLocation() != null) {
            str = "{lat:" + location.getLatitude() + ",lon:" + location.getLongitude() + ",acc:" + location.getAccuracy() + "}";
        }
        com.smartadserver.android.library.g.c.a(d, "getLocation: " + str);
        return str;
    }

    @JavascriptInterface
    public void setClickableAreas(String str) {
        com.smartadserver.android.library.g.c.a(d, "setClickableAreas: " + str);
        this.e.setClickableAreas(str);
    }

    @JavascriptInterface
    public void executeJSFromNative(String str) {
        com.smartadserver.android.library.g.c.a(d, "executeJS");
        this.e.b(str);
    }
}
