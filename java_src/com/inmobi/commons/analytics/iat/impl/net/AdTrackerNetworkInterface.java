package com.inmobi.commons.analytics.iat.impl.net;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerUtils;
import com.inmobi.commons.analytics.iat.impl.Goal;
import com.inmobi.commons.analytics.iat.impl.GoalList;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AdTrackerNetworkInterface {

    /* renamed from: a  reason: collision with root package name */
    private static GoalList f3752a;
    private static AdTrackerWebViewLoader b;
    private static Handler c;
    private static HandlerThread d;
    private static AtomicBoolean e;
    private static int f = 0;
    private static boolean g = false;
    private static String h = "https://d.appsdt.com/download/tracker/?";
    private static String i = "https://d.appsdt.com/sdkdwnldbeacon.html";
    private static String j = "https://d.appsdt.com/download/tracker/iatsdkconfs?";
    private static Handler k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a() {
        return h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b() {
        return i;
    }

    public static int isUnstableNetwork() {
        return f;
    }

    public static boolean isMetricSample() {
        return g;
    }

    public static Handler getUIHandler() {
        return c;
    }

    public static GoalList getGoalList() {
        return f3752a;
    }

    public static void init() {
        if (e == null) {
            e = new AtomicBoolean(false);
        }
        if (f3752a == null) {
            f3752a = GoalList.getLoggedGoals();
        }
        if (c == null) {
            c = new b();
        }
        if (d == null) {
            d = new HandlerThread("AdTrackerNetworkHandler");
            d.start();
        }
        if (k == null) {
            k = new a(d.getLooper());
        }
    }

    public static synchronized void reportToServer(String str) {
        synchronized (AdTrackerNetworkInterface.class) {
            if (f3752a == null || f3752a.isEmpty()) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "No goals to report");
            } else if (e.compareAndSet(false, true)) {
                k.removeMessages(11);
                Iterator<Goal> it = f3752a.iterator();
                while (it.hasNext()) {
                    if (Goal.State.REPORTING_COMPLETED == it.next().state) {
                        it.remove();
                    }
                }
                Iterator<Goal> it2 = f3752a.iterator();
                while (it2.hasNext()) {
                    it2.next().state = Goal.State.ENQUEUE_PENDING;
                }
                f3752a.saveGoals();
                f3752a.get(0).state = Goal.State.ENQUEUE_REQUESTED;
                Message obtain = Message.obtain();
                obtain.what = 1;
                obtain.arg1 = 0;
                obtain.obj = str;
                k.sendMessage(obtain);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long b(Goal goal, boolean z) {
        String str = goal.name;
        long j2 = goal.retryTime;
        int maxWaitTime = AdTrackerInitializer.getConfigParams().getRetryParams().getMaxWaitTime();
        if (true == z) {
            return 0L;
        }
        if (j2 > maxWaitTime) {
            return maxWaitTime;
        }
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean m() {
        String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.TIMETOLIVE);
        String preferences2 = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.VALIDIDS);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.getTime().toString();
        if (preferences == null || preferences2 == null) {
            return false;
        }
        Date time = calendar.getTime();
        calendar.add(11, Integer.parseInt(preferences));
        return calendar.getTime().after(time);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean n() {
        return FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean o() {
        boolean z = false;
        String str = j + "t=" + System.currentTimeMillis();
        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Fetch referrer wait time URL: " + str);
        try {
            try {
                HttpResponse execute = new DefaultHttpClient().execute(new HttpGet(str));
                if (200 == execute.getStatusLine().getStatusCode()) {
                    try {
                        String entityUtils = EntityUtils.toString(execute.getEntity());
                        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Wait time received for referrer: " + entityUtils);
                        FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REF_WAIT, new JSONObject(entityUtils).getLong(AdTrackerConstants.KEY_REF_WAIT) * 1000);
                        z = true;
                    } catch (IOException e2) {
                        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error fetching wait time for referrer", e2);
                    } catch (ParseException e3) {
                        FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REF_WAIT, a.b);
                        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error fetching wait time for referrer", e3);
                        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Setting default wait time...");
                        z = true;
                    } catch (JSONException e4) {
                        FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REF_WAIT, a.b);
                        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error fetching wait time for referrer", e4);
                        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Setting default wait time...");
                        z = true;
                    }
                }
            } catch (ClientProtocolException e5) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error fetching wait time for referrer", e5);
            }
        } catch (IOException e6) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error fetching wait time for referrer", e6);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean p() {
        return FileOperations.getBooleanPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.WAIT_FOR_REFERRER);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Handler c() {
        return k;
    }

    public static void onReceiveReferrer(String str) {
        Message obtain = Message.obtain();
        if (c() != null && c().hasMessages(3)) {
            Message obtainMessage = c().obtainMessage(3);
            obtain.what = 4;
            obtain.arg1 = obtainMessage.arg1;
            obtain.obj = str;
            c().removeMessages(3);
            c().sendMessage(obtain);
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "All goals reported ... De-initializing AdTrackerNetworkInterface!");
                    if (AdTrackerNetworkInterface.d != null) {
                        AdTrackerNetworkInterface.e.set(false);
                        AdTrackerNetworkInterface.d.quit();
                        HandlerThread handlerThread = AdTrackerNetworkInterface.d;
                        HandlerThread unused = AdTrackerNetworkInterface.d = null;
                        handlerThread.interrupt();
                        Handler unused2 = AdTrackerNetworkInterface.k = null;
                        return;
                    }
                    return;
                default:
                    super.handleMessage(message);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        static final int f3753a = AdTrackerInitializer.getConfigParams().getReferrerWaitTimeRetryInterval();
        static final int b = AdTrackerInitializer.getConfigParams().getReferrerWaitTime();
        static final int c = AdTrackerInitializer.getConfigParams().getWebviewTimeout();

        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i;
            int i2;
            boolean z;
            switch (message.what) {
                case 2:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Trying to fetch referrer ...");
                    AdTrackerNetworkInterface.f3752a.get(message.arg1).state = Goal.State.REFERRER_REQUESTED;
                    if (!AdTrackerNetworkInterface.p()) {
                        if (!AdTrackerNetworkInterface.o()) {
                            int referrerWaitTimeRetryCount = AdTrackerInitializer.getConfigParams().getReferrerWaitTimeRetryCount() + 1;
                            int i3 = message.arg2 - 1;
                            message.arg2 = i3;
                            if (i3 == 0) {
                                if (AdTrackerNetworkInterface.n() || AdTrackerNetworkInterface.p()) {
                                    Message obtain = Message.obtain();
                                    obtain.what = 4;
                                    obtain.arg1 = message.arg1;
                                    obtain.obj = (String) message.obj;
                                    sendMessage(obtain);
                                    return;
                                }
                                Message obtain2 = Message.obtain();
                                obtain2.what = 3;
                                obtain2.arg1 = message.arg1;
                                obtain2.arg2 = b;
                                obtain2.obj = (String) message.obj;
                                sendMessageDelayed(obtain2, b);
                                return;
                            }
                            Message obtain3 = Message.obtain();
                            obtain3.what = 2;
                            obtain3.arg1 = message.arg1;
                            obtain3.arg2 = i3;
                            obtain3.obj = (String) message.obj;
                            sendMessageDelayed(obtain3, (referrerWaitTimeRetryCount - i3) * f3753a);
                            return;
                        } else if (!AdTrackerNetworkInterface.n()) {
                            long longPreferences = FileOperations.getLongPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REF_WAIT);
                            Message obtain4 = Message.obtain();
                            obtain4.what = 3;
                            obtain4.arg1 = message.arg1;
                            obtain4.arg2 = (int) (longPreferences < 0 ? b : longPreferences);
                            obtain4.obj = (String) message.obj;
                            sendMessageDelayed(obtain4, longPreferences);
                            return;
                        } else {
                            Message obtain5 = Message.obtain();
                            obtain5.what = 4;
                            obtain5.arg1 = message.arg1;
                            obtain5.obj = (String) message.obj;
                            sendMessage(obtain5);
                            return;
                        }
                    }
                    Message obtain6 = Message.obtain();
                    obtain6.what = 4;
                    obtain6.arg1 = message.arg1;
                    obtain6.obj = (String) message.obj;
                    sendMessage(obtain6);
                    return;
                case 3:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Referrer wait timed out. MESSAGE_GET_REFERRER received ...");
                    if (!AdTrackerNetworkInterface.n()) {
                        Message obtain7 = Message.obtain();
                        obtain7.what = 5;
                        obtain7.arg1 = message.arg1;
                        obtain7.obj = (String) message.obj;
                        sendMessage(obtain7);
                        return;
                    }
                    Message obtain8 = Message.obtain();
                    obtain8.what = 4;
                    obtain8.arg1 = message.arg1;
                    obtain8.obj = (String) message.obj;
                    sendMessage(obtain8);
                    return;
                case 4:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "GET_REFFERRER_SUCCEEDED message received");
                    FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.WAIT_FOR_REFERRER, true);
                    AdTrackerNetworkInterface.f3752a.get(message.arg1).state = Goal.State.REFERRER_ACQUIRED;
                    Message obtain9 = Message.obtain();
                    obtain9.arg1 = message.arg1;
                    obtain9.obj = (String) message.obj;
                    if (AdTrackerNetworkInterface.m()) {
                        obtain9.what = 6;
                    } else {
                        obtain9.what = 7;
                    }
                    sendMessage(obtain9);
                    return;
                case 5:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Getting referrer timed out...");
                    String referrerFromLogs = AdTrackerUtils.getReferrerFromLogs();
                    if (referrerFromLogs != null) {
                        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Saving referrer from logs: " + referrerFromLogs);
                        AdTrackerUtils.setReferrerFromLogs(InternalSDKUtil.getContext(), referrerFromLogs);
                    }
                    Message obtain10 = Message.obtain();
                    obtain10.what = 4;
                    obtain10.arg1 = message.arg1;
                    obtain10.obj = (String) message.obj;
                    sendMessage(obtain10);
                    return;
                case 6:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Reporting Goal via network ...");
                    Goal goal = AdTrackerNetworkInterface.f3752a.get(message.arg1);
                    goal.state = Goal.State.REPORTING_REQUESTED;
                    AdTrackerRequestResponseBuilder.reportGoalOverHttp((String) message.obj, goal, FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.VALIDIDS));
                    return;
                case 7:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Reporting Goal via webview");
                    Goal goal2 = AdTrackerNetworkInterface.f3752a.get(message.arg1);
                    goal2.state = Goal.State.REPORTING_REQUESTED;
                    String str = (String) message.obj;
                    AdTrackerWebViewLoader unused = AdTrackerNetworkInterface.b = new AdTrackerWebViewLoader();
                    AdTrackerRequestResponseBuilder.saveWebviewRequestParam(str, goal2);
                    AdTrackerNetworkInterface.b.loadWebview(str, goal2);
                    Message obtain11 = Message.obtain();
                    obtain11.what = 9;
                    obtain11.arg1 = message.arg1;
                    obtain11.obj = str;
                    sendMessageDelayed(obtain11, c);
                    return;
                case 8:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Reporting Goal succeeded...");
                    Goal goal3 = (Goal) message.obj;
                    if (Goal.State.REPORTING_REQUESTED == goal3.state) {
                        goal3.state = Goal.State.REPORTING_COMPLETED;
                        AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_SUCCESS, goal3, 1, message.arg2, 0, null);
                        FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_FIRST_GOAL_SUCCESS, true);
                        if (AdTrackerConstants.GOAL_DOWNLOAD.equals(goal3.name)) {
                            AdTrackerUtils.updateStatus();
                        }
                        String string = message.getData().getString("appId");
                        int i4 = 0;
                        Iterator<Goal> it = AdTrackerNetworkInterface.f3752a.iterator();
                        while (true) {
                            i2 = i4;
                            if (it.hasNext() && !it.next().equals(goal3)) {
                                i4 = i2 + 1;
                            }
                        }
                        Message obtain12 = Message.obtain();
                        if (i2 == AdTrackerNetworkInterface.f3752a.size() - 1) {
                            obtain12.what = 11;
                            obtain12.arg1 = i2;
                            obtain12.obj = string;
                        } else {
                            obtain12.what = 1;
                            obtain12.arg1 = i2 + 1;
                            obtain12.obj = string;
                            AdTrackerNetworkInterface.f3752a.get(obtain12.arg1).state = Goal.State.ENQUEUE_REQUESTED;
                        }
                        int unused2 = AdTrackerNetworkInterface.f = 0;
                        sendMessage(obtain12);
                        return;
                    }
                    return;
                case 9:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Reporting message goal timed out...");
                    Goal goal4 = AdTrackerNetworkInterface.f3752a.get(message.arg1);
                    goal4.state = Goal.State.REPORTING_TIMED_OUT;
                    AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, goal4, 0, 0L, AdTrackerConstants.NETWORK_TIMEOUT, null);
                    AdTrackerNetworkInterface.b.deinit(c);
                    AdTrackerNetworkInterface.f3752a.increaseRetryTime(goal4.name, goal4.count, goal4.isDuplicate);
                    Message obtain13 = Message.obtain();
                    obtain13.what = 1;
                    obtain13.arg1 = message.arg1;
                    obtain13.obj = (String) message.obj;
                    sendMessage(obtain13);
                    return;
                case 10:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Message report goal failed...");
                    Goal goal5 = (Goal) message.obj;
                    if (Goal.State.REPORTING_REQUESTED == goal5.state) {
                        goal5.state = Goal.State.REPORTING_FAILED;
                        int i5 = 0;
                        Iterator<Goal> it2 = AdTrackerNetworkInterface.f3752a.iterator();
                        while (true) {
                            i = i5;
                            if (it2.hasNext() && !it2.next().equals(goal5)) {
                                i5 = i + 1;
                            }
                        }
                        Message obtain14 = Message.obtain();
                        obtain14.arg1 = i;
                        obtain14.obj = message.getData().getString("appId");
                        if (6001 == message.arg2) {
                            obtain14.what = 7;
                        } else {
                            AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, goal5, 1, 0L, message.arg2, null);
                            AdTrackerNetworkInterface.f3752a.increaseRetryTime(goal5.name, goal5.count, goal5.isDuplicate);
                            if (goal5.retryTime > 0) {
                                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Retrying goalname: " + goal5 + " after " + (goal5.retryTime / 1000) + " second");
                            }
                            obtain14.what = 1;
                        }
                        sendMessage(obtain14);
                        return;
                    }
                    return;
                case 11:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "No more goals to report ...");
                    AdTrackerNetworkInterface.f3752a.clear();
                    AdTrackerNetworkInterface.f3752a.saveGoals();
                    AdTrackerNetworkInterface.c.sendEmptyMessage(1);
                    return;
                case 12:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Message report goal aborted...");
                    int unused3 = AdTrackerNetworkInterface.f = 1;
                    if (AdTrackerNetworkInterface.f3752a != null && !AdTrackerNetworkInterface.f3752a.isEmpty()) {
                        Iterator<Goal> it3 = AdTrackerNetworkInterface.f3752a.iterator();
                        while (it3.hasNext()) {
                            if (Goal.State.REPORTING_COMPLETED == it3.next().state) {
                                it3.remove();
                            }
                        }
                        AdTrackerNetworkInterface.f3752a.saveGoals();
                    }
                    GoalList unused4 = AdTrackerNetworkInterface.f3752a = null;
                    AdTrackerNetworkInterface.c.sendEmptyMessage(1);
                    return;
                default:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Enqueuing message goal ...");
                    Goal goal6 = AdTrackerNetworkInterface.f3752a.get(message.arg1);
                    if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
                        AdTrackerNetworkInterface.f3752a.saveGoals();
                        boolean unused5 = AdTrackerNetworkInterface.g = AdTrackerInitializer.getLogger().startNewSample();
                        if (Goal.State.ENQUEUE_REQUESTED == goal6.state) {
                            if (message.arg1 != 0) {
                                if (Goal.State.REPORTING_COMPLETED == AdTrackerNetworkInterface.f3752a.get(message.arg1 - 1).state) {
                                    z = true;
                                }
                            } else {
                                z = true;
                            }
                            goal6.state = Goal.State.ENQUEUE_SUCCEEDED;
                            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Goal " + goal6.name + " enqueued successfully for reporting");
                            long b2 = AdTrackerNetworkInterface.b(goal6, z);
                            Message obtain15 = Message.obtain();
                            obtain15.what = 2;
                            obtain15.arg1 = message.arg1;
                            obtain15.arg2 = AdTrackerInitializer.getConfigParams().getReferrerWaitTimeRetryCount() + 1;
                            obtain15.obj = (String) message.obj;
                            sendMessageDelayed(obtain15, b2);
                            return;
                        }
                        z = false;
                        goal6.state = Goal.State.ENQUEUE_SUCCEEDED;
                        Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Goal " + goal6.name + " enqueued successfully for reporting");
                        long b22 = AdTrackerNetworkInterface.b(goal6, z);
                        Message obtain152 = Message.obtain();
                        obtain152.what = 2;
                        obtain152.arg1 = message.arg1;
                        obtain152.arg2 = AdTrackerInitializer.getConfigParams().getReferrerWaitTimeRetryCount() + 1;
                        obtain152.obj = (String) message.obj;
                        sendMessageDelayed(obtain152, b22);
                        return;
                    }
                    goal6.state = Goal.State.ENQUEUE_PENDING;
                    Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Network Unavailable. Aborting attempt to report goal ...");
                    sendEmptyMessage(12);
                    return;
            }
        }
    }
}
