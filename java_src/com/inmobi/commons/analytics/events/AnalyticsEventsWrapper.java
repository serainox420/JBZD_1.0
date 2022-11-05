package com.inmobi.commons.analytics.events;

import android.content.Intent;
import android.os.Bundle;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.db.AnalyticsEventsQueue;
import com.inmobi.commons.analytics.db.FunctionEndSession;
import com.inmobi.commons.analytics.db.FunctionLevelBegin;
import com.inmobi.commons.analytics.db.FunctionLevelEnd;
import com.inmobi.commons.analytics.db.FunctionSetUserAttribute;
import com.inmobi.commons.analytics.db.FunctionStartSession;
import com.inmobi.commons.analytics.db.FunctionTagEvent;
import com.inmobi.commons.analytics.db.FunctionTagTransaction;
import com.inmobi.commons.analytics.net.AnalyticsNetworkManager;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.Map;
/* loaded from: classes2.dex */
public final class AnalyticsEventsWrapper {

    /* renamed from: a  reason: collision with root package name */
    private static AnalyticsEventsWrapper f3743a;
    private static boolean c = false;
    private AnalyticsEventsQueue b;

    /* loaded from: classes2.dex */
    public enum IMItemType {
        CONSUMABLE,
        DURABLE,
        PERSONALIZATION
    }

    /* loaded from: classes2.dex */
    public enum IMSectionStatus {
        COMPLETED,
        FAILED,
        CANCELED
    }

    public static boolean isEventsUser() {
        return c;
    }

    public static void setIsEventsUser() {
        c = true;
    }

    private AnalyticsEventsWrapper() {
    }

    public static synchronized AnalyticsEventsWrapper getInstance() {
        AnalyticsEventsWrapper analyticsEventsWrapper;
        synchronized (AnalyticsEventsWrapper.class) {
            if (AnalyticsUtils.getWebviewUserAgent() == null) {
                AnalyticsUtils.setWebviewUserAgent(InternalSDKUtil.getUserAgent());
            }
            if (f3743a == null) {
                f3743a = new AnalyticsEventsWrapper();
                AnalyticsUtils.setStartHandle(false);
                AnalyticsNetworkManager.startInstance();
            }
            f3743a.b = AnalyticsEventsQueue.getInstance();
            analyticsEventsWrapper = f3743a;
        }
        return analyticsEventsWrapper;
    }

    public void startSession(String str, Map<String, String> map) {
        if (str != null) {
            try {
                if (!str.trim().equals("")) {
                    if (map != null && map.size() > 10) {
                        a("attribute map cannot exceed 10 values");
                    } else {
                        this.b.addElement(new FunctionStartSession(InternalSDKUtil.getContext(), str, map));
                        this.b.processFunctions();
                    }
                }
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Init exception", e);
                return;
            }
        }
        a("appid cannot be null or empty");
    }

    public void endSession(Map<String, String> map) {
        if (map != null) {
            try {
                if (map.size() > 10) {
                    a("attribute map cannot exceed 10 values");
                }
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "End Session Exception", e);
                return;
            }
        }
        this.b.addElement(new FunctionEndSession(InternalSDKUtil.getContext(), map));
        this.b.processFunctions();
    }

    public void beginSection(int i, String str, Map<String, String> map) {
        try {
            if (str == null) {
                a("arguments cannot be null");
            } else if (map != null && map.size() > 10) {
                a("attribute map cannot exceed 10 values");
            } else if (a()) {
                this.b.addElement(new FunctionLevelBegin(InternalSDKUtil.getContext(), i, str, map));
                this.b.processFunctions();
            }
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Begin Section Exception", e);
        }
    }

    public void endSection(int i, String str, Map<String, String> map) {
        try {
            if (str == null) {
                a("arguments cannot be null");
            } else if (map != null && map.size() > 10) {
                a("attribute map cannot exceed 10 values");
            } else if (a()) {
                this.b.addElement(new FunctionLevelEnd(InternalSDKUtil.getContext(), i, str, null, map));
                this.b.processFunctions();
            }
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "End Section Exception", e);
        }
    }

    public void tagTransactionManually(Intent intent, Bundle bundle) {
        try {
            if (intent == null) {
                a("transaction intent cannot be null or empty");
            } else if (a()) {
                this.b.addElement(new FunctionTagTransaction(InternalSDKUtil.getContext(), intent, bundle));
                this.b.processFunctions();
            }
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Tag Transaction Manually Exception", e);
        }
    }

    public void tagEvent(String str, Map<String, String> map) {
        if (str != null) {
            try {
                if (!str.trim().equals("")) {
                    if (map != null && map.size() > 10) {
                        a("attribute map cannot exceed 10 values");
                    } else if (a()) {
                        this.b.addElement(new FunctionTagEvent(InternalSDKUtil.getContext(), str, map));
                        this.b.processFunctions();
                    }
                }
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Tag Event Exception", e);
                return;
            }
        }
        a("arguments cannot be null or empty");
    }

    private void a(String str) {
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IllegalArgumentError: " + str);
    }

    private boolean a() {
        if (InternalSDKUtil.getContext() != null && SessionInfo.getSessionId(InternalSDKUtil.getContext()) == null) {
            startSession(InMobi.getAppId(), null);
        } else if (SessionInfo.getSessionId(InternalSDKUtil.getContext()) == null) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, AnalyticsUtils.INITIALIZE_NOT_CALLED);
            return false;
        }
        return true;
    }

    public void setUserAttribute(String str, String str2) {
        if (str == null || str.trim().equals("") || str2 == null || str2.trim().equals("")) {
            a("arguments cannot be null or empty");
        } else if (str.length() > 15 || str2.length() > 20) {
            a("attribute name cannot exceed 15 chars and attribute val cannot exceed 20 chars. Please pass a valid attribute");
        } else {
            try {
                if (a()) {
                    this.b.addElement(new FunctionSetUserAttribute(InternalSDKUtil.getContext(), str, str2));
                    this.b.processFunctions();
                }
            } catch (Exception e) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Set User Attribute Exception", e);
            }
        }
    }
}
