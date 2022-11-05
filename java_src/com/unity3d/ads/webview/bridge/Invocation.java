package com.unity3d.ads.webview.bridge;

import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.webview.WebViewApp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class Invocation {
    private static AtomicInteger _idCount = new AtomicInteger(0);
    private static Map<Integer, Invocation> _invocationSets;
    private int _invocationId = _idCount.getAndIncrement();
    private ArrayList<ArrayList<Object>> _invocations;
    private ArrayList<ArrayList<Object>> _responses;

    public Invocation() {
        if (_invocationSets == null) {
            _invocationSets = new HashMap();
        }
        _invocationSets.put(Integer.valueOf(this._invocationId), this);
    }

    public void addInvocation(String str, String str2, Object[] objArr, WebViewCallback webViewCallback) {
        if (this._invocations == null) {
            this._invocations = new ArrayList<>();
        }
        ArrayList<Object> arrayList = new ArrayList<>();
        arrayList.add(str);
        arrayList.add(str2);
        arrayList.add(objArr);
        arrayList.add(webViewCallback);
        this._invocations.add(arrayList);
    }

    public boolean nextInvocation() {
        if (this._invocations == null || this._invocations.size() <= 0) {
            return false;
        }
        ArrayList<Object> remove = this._invocations.remove(0);
        try {
            WebViewBridge.handleInvocation((String) remove.get(0), (String) remove.get(1), (Object[]) remove.get(2), (WebViewCallback) remove.get(3));
        } catch (Exception e) {
            DeviceLog.exception("Error handling invocation", e);
        }
        return true;
    }

    public void setInvocationResponse(CallbackStatus callbackStatus, Enum r4, Object... objArr) {
        if (this._responses == null) {
            this._responses = new ArrayList<>();
        }
        ArrayList<Object> arrayList = new ArrayList<>();
        arrayList.add(callbackStatus);
        arrayList.add(r4);
        arrayList.add(objArr);
        this._responses.add(arrayList);
    }

    public void sendInvocationCallback() {
        _invocationSets.remove(Integer.valueOf(getId()));
        WebViewApp.getCurrentApp().invokeCallback(this);
    }

    public int getId() {
        return this._invocationId;
    }

    public ArrayList<ArrayList<Object>> getResponses() {
        return this._responses;
    }

    public static synchronized Invocation getInvocationById(int i) {
        Invocation invocation;
        synchronized (Invocation.class) {
            invocation = (_invocationSets == null || !_invocationSets.containsKey(Integer.valueOf(i))) ? null : _invocationSets.get(Integer.valueOf(i));
        }
        return invocation;
    }
}
