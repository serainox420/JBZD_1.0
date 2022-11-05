package com.unity3d.ads.request;

import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Looper;
import android.os.Message;
import com.millennialmedia.NativeAd;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.request.WebRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class WebRequestThread extends Thread {
    protected static final int MSG_REQUEST = 1;
    private static WebRequestHandler _handler;
    private static boolean _ready = false;
    private static final Object _readyLock = new Object();

    private static void init() {
        WebRequestThread webRequestThread = new WebRequestThread();
        webRequestThread.setName("UnityAdsWebRequestThread");
        webRequestThread.start();
        while (!_ready) {
            try {
                synchronized (_readyLock) {
                    _readyLock.wait();
                }
            } catch (InterruptedException e) {
                DeviceLog.debug("Couldn't synchronize thread");
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        if (_handler == null) {
            _handler = new WebRequestHandler();
        }
        _ready = true;
        synchronized (_readyLock) {
            _readyLock.notify();
        }
        Looper.loop();
    }

    public static void cancel() {
        if (_handler != null) {
            _handler.removeMessages(1);
            _handler.setCancelStatus(true);
        }
    }

    public static synchronized void request(String str, WebRequest.RequestType requestType, Map<String, List<String>> map, Integer num, Integer num2, IWebRequestListener iWebRequestListener) {
        synchronized (WebRequestThread.class) {
            request(str, requestType, map, null, num, num2, iWebRequestListener);
        }
    }

    public static synchronized void request(String str, WebRequest.RequestType requestType, Map<String, List<String>> map, String str2, Integer num, Integer num2, IWebRequestListener iWebRequestListener) {
        synchronized (WebRequestThread.class) {
            request(1, str, requestType, map, str2, num, num2, iWebRequestListener, new WebRequestResultReceiver(_handler, iWebRequestListener));
        }
    }

    public static synchronized void request(int i, String str, WebRequest.RequestType requestType, Map<String, List<String>> map, String str2, Integer num, Integer num2, IWebRequestListener iWebRequestListener, WebRequestResultReceiver webRequestResultReceiver) {
        synchronized (WebRequestThread.class) {
            if (!_ready) {
                init();
            }
            if (str == null || str.length() < 3) {
                iWebRequestListener.onFailed(str, "Request is NULL or too short");
            } else {
                Bundle bundle = new Bundle();
                bundle.putString("url", str);
                bundle.putString("type", requestType.name());
                bundle.putString(NativeAd.COMPONENT_ID_BODY, str2);
                bundle.putParcelable("receiver", webRequestResultReceiver);
                bundle.putInt("connectTimeout", num.intValue());
                bundle.putInt("readTimeout", num2.intValue());
                if (map != null) {
                    for (String str3 : map.keySet()) {
                        bundle.putStringArray(str3, (String[]) map.get(str3).toArray(new String[map.get(str3).size()]));
                    }
                }
                Message message = new Message();
                message.what = i;
                message.setData(bundle);
                _handler.setCancelStatus(false);
                _handler.sendMessage(message);
            }
        }
    }

    public static synchronized boolean resolve(final String str, final IResolveHostListener iResolveHostListener) {
        boolean z;
        synchronized (WebRequestThread.class) {
            if (str != null) {
                if (str.length() >= 3) {
                    new Thread(new Runnable() { // from class: com.unity3d.ads.request.WebRequestThread.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Thread thread;
                            Exception e;
                            final ConditionVariable conditionVariable = new ConditionVariable();
                            try {
                                thread = new Thread(new Runnable() { // from class: com.unity3d.ads.request.WebRequestThread.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        try {
                                            iResolveHostListener.onResolve(str, InetAddress.getByName(str).getHostAddress());
                                        } catch (UnknownHostException e2) {
                                            DeviceLog.exception("Unknown host", e2);
                                            iResolveHostListener.onFailed(str, ResolveHostError.UNKNOWN_HOST, e2.getMessage());
                                        }
                                        conditionVariable.open();
                                    }
                                });
                            } catch (Exception e2) {
                                thread = null;
                                e = e2;
                            }
                            try {
                                thread.start();
                            } catch (Exception e3) {
                                e = e3;
                                DeviceLog.exception("Exception while resolving host", e);
                                iResolveHostListener.onFailed(str, ResolveHostError.UNEXPECTED_EXCEPTION, e.getMessage());
                                if (conditionVariable.block(20000L)) {
                                }
                                return;
                            }
                            if (conditionVariable.block(20000L) && thread != null) {
                                thread.interrupt();
                                iResolveHostListener.onFailed(str, ResolveHostError.TIMEOUT, "Timeout");
                            }
                        }
                    }).start();
                    z = true;
                }
            }
            iResolveHostListener.onFailed(str, ResolveHostError.INVALID_HOST, "Host is NULL");
            z = false;
        }
        return z;
    }
}
