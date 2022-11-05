package com.inmobi.monetization.internal.imai;

import android.content.Intent;
import android.net.Uri;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.analytics.net.AnalyticsCommon;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.configs.Initializer;
import com.inmobi.monetization.internal.imai.db.ClickData;
import com.inmobi.monetization.internal.imai.db.ClickDatabaseManager;
import com.inmobi.re.container.IMWebView;
import java.lang.ref.WeakReference;
import java.util.Random;
/* loaded from: classes2.dex */
public class IMAICore {

    /* renamed from: a  reason: collision with root package name */
    static Random f3890a = new Random();

    public static void initialize() {
        new RequestResponseManager().init();
        ClickDatabaseManager.getInstance().setDBLimit(Initializer.getConfigParams().getImai().getmMaxDb());
    }

    public static void fireErrorEvent(WeakReference<IMWebView> weakReference, String str, String str2, String str3) {
        if (weakReference != null) {
            try {
                if (weakReference.get() != null) {
                    Log.debug(Constants.LOG_TAG, "Fire error event IMAI for action: " + str2 + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str);
                    injectJavaScript(weakReference.get(), "window._im_imai.broadcastEvent('error','" + str + "','" + str2 + "','" + str3 + "')");
                }
            } catch (Exception e) {
                Log.internal(Constants.LOG_TAG, "Exception", e);
            }
        }
    }

    public static void fireOpenEmbeddedSuccessful(WeakReference<IMWebView> weakReference, String str) {
        if (weakReference != null) {
            try {
                if (weakReference.get() != null) {
                    Log.debug(Constants.LOG_TAG, "fireOpenEmbeddedSuccessful");
                    if (!weakReference.get().mWebViewIsBrowserActivity && !weakReference.get().mIsInterstitialAd) {
                        IMBrowserActivity.requestOnAdDismiss(weakReference.get().getWebviewHandler().obtainMessage(weakReference.get().getDismissMessage()));
                        weakReference.get().fireOnShowAdScreen();
                    }
                    injectJavaScript(weakReference.get(), "window._im_imai.broadcastEvent('openEmbeddedSuccessful','" + str + "')");
                }
            } catch (Exception e) {
                Log.internal(Constants.LOG_TAG, "Exception", e);
            }
        }
    }

    public static void fireOpenExternalSuccessful(WeakReference<IMWebView> weakReference, String str) {
        if (weakReference != null) {
            try {
                if (weakReference.get() != null) {
                    Log.debug(Constants.LOG_TAG, "fireOpenExternalSuccessful");
                    weakReference.get().fireOnLeaveApplication();
                    injectJavaScript(weakReference.get(), "window._im_imai.broadcastEvent('openExternalSuccessful','" + str + "')");
                }
            } catch (Exception e) {
                Log.internal(Constants.LOG_TAG, "Exception", e);
            }
        }
    }

    public static void firePingSuccessful(WeakReference<IMWebView> weakReference, String str) {
        if (weakReference != null) {
            try {
                if (weakReference.get() != null) {
                    Log.debug(Constants.LOG_TAG, "firePingSuccessful");
                    injectJavaScript(weakReference.get(), "window._im_imai.broadcastEvent('pingSuccessful','" + str + "')");
                }
            } catch (Exception e) {
                Log.internal(Constants.LOG_TAG, "Exception", e);
            }
        }
    }

    public static void firePingInWebViewSuccessful(WeakReference<IMWebView> weakReference, String str) {
        if (weakReference != null) {
            try {
                if (weakReference.get() != null) {
                    Log.debug(Constants.LOG_TAG, "firePingInWebViewSuccessful");
                    injectJavaScript(weakReference.get(), "window._im_imai.broadcastEvent('pingInWebViewSuccessful','" + str + "')");
                }
            } catch (Exception e) {
                Log.internal(Constants.LOG_TAG, "Exception", e);
            }
        }
    }

    public static void injectJavaScript(final IMWebView iMWebView, final String str) {
        try {
            iMWebView.getActivity().runOnUiThread(new Runnable() { // from class: com.inmobi.monetization.internal.imai.IMAICore.1
                @Override // java.lang.Runnable
                public void run() {
                    IMWebView.this.injectJavaScript(str);
                }
            });
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Error injecting javascript ", e);
        }
    }

    public static void launchEmbeddedBrowser(WeakReference<IMWebView> weakReference, String str) {
        Intent intent = new Intent(weakReference.get().getActivity(), IMBrowserActivity.class);
        intent.putExtra("extra_url", str);
        intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 100);
        intent.setFlags(DriveFile.MODE_READ_ONLY);
        IMBrowserActivity.setWebViewListener(weakReference.get().mListener);
        if (!weakReference.get().mWebViewIsBrowserActivity && !weakReference.get().mIsInterstitialAd && weakReference.get().getStateVariable() == IMWebView.ViewState.DEFAULT) {
            intent.putExtra("FIRST_INSTANCE", true);
        }
        weakReference.get().getActivity().getApplicationContext().startActivity(intent);
    }

    public static void launchExternalApp(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.setFlags(DriveFile.MODE_READ_ONLY);
        InternalSDKUtil.getContext().startActivity(intent);
    }

    public static void ping(final WeakReference<IMWebView> weakReference, final String str, final boolean z) {
        try {
            weakReference.get().getActivity().runOnUiThread(new Runnable() { // from class: com.inmobi.monetization.internal.imai.IMAICore.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ClickData clickData = new ClickData(str, z, false, Initializer.getConfigParams().getImai().getMaxRetry());
                        RequestResponseManager requestResponseManager = new RequestResponseManager();
                        requestResponseManager.init();
                        RequestResponseManager.mNetworkQueue.add(0, clickData);
                        requestResponseManager.processClick(InternalSDKUtil.getContext(), new AnalyticsCommon.HttpRequestCallback() { // from class: com.inmobi.monetization.internal.imai.IMAICore.2.1
                            @Override // com.inmobi.commons.analytics.net.AnalyticsCommon.HttpRequestCallback
                            public void notifyResult(int i, Object obj) {
                                try {
                                    Log.internal(Constants.LOG_TAG, "Got PING callback. Status: " + i);
                                    if (i == 0) {
                                        IMAICore.firePingSuccessful(weakReference, str);
                                    } else {
                                        IMAICore.fireErrorEvent(weakReference, "IMAI Ping in http client failed", "ping", str);
                                    }
                                } catch (Exception e) {
                                    Log.internal(Constants.LOG_TAG, "Exception", e);
                                }
                            }
                        });
                    } catch (Exception e) {
                        Log.internal(Constants.LOG_TAG, "Exception ping in background", e);
                    }
                }
            });
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Failed to ping", e);
        }
    }

    public static void pingInWebview(final WeakReference<IMWebView> weakReference, final String str, final boolean z) {
        try {
            weakReference.get().getActivity().runOnUiThread(new Runnable() { // from class: com.inmobi.monetization.internal.imai.IMAICore.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ClickData clickData = new ClickData(str, z, true, Initializer.getConfigParams().getImai().getMaxRetry());
                        RequestResponseManager requestResponseManager = new RequestResponseManager();
                        requestResponseManager.init();
                        RequestResponseManager.mNetworkQueue.add(0, clickData);
                        requestResponseManager.processClick(InternalSDKUtil.getContext(), new AnalyticsCommon.HttpRequestCallback() { // from class: com.inmobi.monetization.internal.imai.IMAICore.3.1
                            @Override // com.inmobi.commons.analytics.net.AnalyticsCommon.HttpRequestCallback
                            public void notifyResult(int i, Object obj) {
                                try {
                                    Log.internal(Constants.LOG_TAG, "Got PING IN WEBVIEW callback. Status: " + i);
                                    if (i == 0) {
                                        IMAICore.firePingInWebViewSuccessful(weakReference, str);
                                    } else {
                                        IMAICore.fireErrorEvent(weakReference, "IMAI Ping in webview failed", "pingInWebview", str);
                                    }
                                } catch (Exception e) {
                                    Log.internal(Constants.LOG_TAG, "Exception", e);
                                }
                            }
                        });
                    } catch (Exception e) {
                        Log.internal(Constants.LOG_TAG, "Exception ping in background", e);
                    }
                }
            });
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Failed to ping in webview", e);
        }
    }

    public static boolean validateURL(String str) {
        if (str == null || "".equals(str.trim())) {
            Log.internal(Constants.LOG_TAG, "Null url passed");
            return false;
        }
        return true;
    }

    public static int getRandomNumber() {
        return f3890a.nextInt();
    }
}
