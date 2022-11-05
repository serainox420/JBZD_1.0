package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.webkit.URLUtil;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.util.Constants;
import com.openx.view.mraid.JSInterface;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class MRAIDBasic {

    /* renamed from: a  reason: collision with root package name */
    private IMWebView f3951a;
    private Activity b;

    public MRAIDBasic(IMWebView iMWebView, Activity activity) {
        this.f3951a = iMWebView;
        this.b = activity;
    }

    public void open(final String str) {
        try {
            if (str.startsWith("http://") || (str.contains("https") && !str.contains("play.google.com") && !str.contains("market.android.com") && !str.contains("market%3A%2F%2F"))) {
                if (!URLUtil.isValidUrl(str)) {
                    this.f3951a.raiseError("Invalid url", "open");
                    return;
                }
                Intent intent = new Intent(this.b, IMBrowserActivity.class);
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> open:" + str);
                intent.putExtra("extra_url", str);
                intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 100);
                if (this.f3951a.getStateVariable() == IMWebView.ViewState.DEFAULT && !this.f3951a.mIsInterstitialAd && !this.f3951a.mWebViewIsBrowserActivity) {
                    intent.putExtra("FIRST_INSTANCE", true);
                }
                IMBrowserActivity.setWebViewListener(this.f3951a.mListener);
                try {
                    this.b.startActivity(intent);
                    if (!this.f3951a.mWebViewIsBrowserActivity) {
                        this.f3951a.fireOnShowAdScreen();
                        return;
                    }
                    return;
                } catch (Exception e) {
                    this.f3951a.raiseError("Invalid url", "open");
                    return;
                }
            }
            new Thread(new Runnable() { // from class: com.inmobi.re.container.mraidimpl.MRAIDBasic.1
                @Override // java.lang.Runnable
                public void run() {
                    String finalRedirectedUrl = InternalSDKUtil.getFinalRedirectedUrl(str);
                    if (finalRedirectedUrl != null) {
                        Intent intent2 = new Intent();
                        intent2.setAction("android.intent.action.VIEW");
                        intent2.setData(Uri.parse(finalRedirectedUrl));
                        intent2.addFlags(DriveFile.MODE_READ_ONLY);
                        try {
                            MRAIDBasic.this.b.startActivity(intent2);
                            if (MRAIDBasic.this.f3951a.mListener != null) {
                                MRAIDBasic.this.f3951a.mListener.onLeaveApplication();
                            }
                        } catch (Exception e2) {
                            MRAIDBasic.this.f3951a.raiseError("Invalid url", "open");
                        }
                    }
                }
            }).start();
        } catch (ActivityNotFoundException e2) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to perform mraid Open");
        } catch (Exception e3) {
            this.f3951a.raiseError("Invalid url", "open");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void getCurrentPosition() {
        int i;
        int i2;
        int i3;
        Throwable th;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = 0;
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> getCurrentPosition");
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f3951a.isViewable()) {
                int[] iArr = new int[2];
                this.f3951a.getLocationOnScreen(iArr);
                i5 = iArr[0];
                try {
                    i4 = iArr[1];
                    try {
                        try {
                            i9 = (int) (this.f3951a.getWidth() / this.f3951a.getDensity());
                            i8 = i5;
                            i7 = i4;
                            i6 = i9;
                            i9 = (int) (this.f3951a.getHeight() / this.f3951a.getDensity());
                        } catch (Exception e) {
                            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get current position");
                            try {
                                jSONObject.put(JSInterface.JSON_X, i5);
                                jSONObject.put(JSInterface.JSON_Y, i4);
                                jSONObject.put("width", i9);
                                jSONObject.put("height", 0);
                            } catch (JSONException e2) {
                            }
                            synchronized (this.f3951a.mutexcPos) {
                            }
                        }
                    } catch (Throwable th2) {
                        i2 = i5;
                        i = i4;
                        i3 = i9;
                        th = th2;
                        try {
                            jSONObject.put(JSInterface.JSON_X, i2);
                            jSONObject.put(JSInterface.JSON_Y, i);
                            jSONObject.put("width", i3);
                            jSONObject.put("height", 0);
                        } catch (JSONException e3) {
                        }
                        throw th;
                    }
                } catch (Exception e4) {
                    i4 = 0;
                } catch (Throwable th3) {
                    i2 = i5;
                    i = 0;
                    th = th3;
                    i3 = 0;
                    jSONObject.put(JSInterface.JSON_X, i2);
                    jSONObject.put(JSInterface.JSON_Y, i);
                    jSONObject.put("width", i3);
                    jSONObject.put("height", 0);
                    throw th;
                }
            } else {
                i6 = 0;
                i7 = 0;
                i8 = 0;
            }
            try {
                jSONObject.put(JSInterface.JSON_X, i8);
                jSONObject.put(JSInterface.JSON_Y, i7);
                jSONObject.put("width", i6);
                jSONObject.put("height", i9);
            } catch (JSONException e5) {
            }
        } catch (Exception e6) {
            i4 = 0;
            i5 = 0;
        } catch (Throwable th4) {
            i = 0;
            i2 = 0;
            i3 = 0;
            th = th4;
        }
        synchronized (this.f3951a.mutexcPos) {
            this.f3951a.curPosition = jSONObject;
            this.f3951a.acqMutexcPos.set(false);
            this.f3951a.mutexcPos.notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void getDefaultPosition() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> getDefaultPosition");
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f3951a.isViewable()) {
                int[] iArr = new int[2];
                ((View) this.f3951a.getOriginalParent()).getLocationOnScreen(iArr);
                i2 = iArr[0];
                try {
                    i = iArr[1];
                    try {
                        try {
                            i4 = (int) (((View) this.f3951a.getOriginalParent()).getWidth() / this.f3951a.getDensity());
                            i3 = i4;
                            i4 = (int) (((View) this.f3951a.getOriginalParent()).getHeight() / this.f3951a.getDensity());
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get default position" + e.getMessage());
                            try {
                                jSONObject.put(JSInterface.JSON_X, i2);
                                jSONObject.put(JSInterface.JSON_Y, i);
                                jSONObject.put("width", i4);
                                jSONObject.put("height", 0);
                            } catch (JSONException e2) {
                            }
                            synchronized (this.f3951a.mutexdPos) {
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            jSONObject.put(JSInterface.JSON_X, i2);
                            jSONObject.put(JSInterface.JSON_Y, i);
                            jSONObject.put("width", i4);
                            jSONObject.put("height", 0);
                        } catch (JSONException e3) {
                        }
                        throw th;
                    }
                } catch (Exception e4) {
                    e = e4;
                    i = 0;
                } catch (Throwable th2) {
                    th = th2;
                    i = 0;
                    jSONObject.put(JSInterface.JSON_X, i2);
                    jSONObject.put(JSInterface.JSON_Y, i);
                    jSONObject.put("width", i4);
                    jSONObject.put("height", 0);
                    throw th;
                }
            } else {
                i3 = 0;
                i = 0;
                i2 = 0;
            }
            try {
                jSONObject.put(JSInterface.JSON_X, i2);
                jSONObject.put(JSInterface.JSON_Y, i);
                jSONObject.put("width", i3);
                jSONObject.put("height", i4);
            } catch (JSONException e5) {
            }
        } catch (Exception e6) {
            e = e6;
            i = 0;
            i2 = 0;
        } catch (Throwable th3) {
            th = th3;
            i = 0;
            i2 = 0;
        }
        synchronized (this.f3951a.mutexdPos) {
            this.f3951a.defPosition = jSONObject;
            this.f3951a.acqMutexdPos.set(false);
            this.f3951a.mutexdPos.notifyAll();
        }
    }
}
