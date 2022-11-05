package com.inmobi.commons.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.bootstrapper.ThinICEConfig;
import com.inmobi.commons.cache.RetryMechanism;
import com.inmobi.commons.internal.ApplicationFocusManager;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.icedatacollector.Sample;
import com.inmobi.commons.thinICE.icedatacollector.ThinICEConfigSettings;
import com.inmobi.commons.thinICE.icedatacollector.ThinICEListener;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Timer;
/* loaded from: classes2.dex */
public final class ThinICE {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f3801a = false;
    private static boolean b = false;
    private static ThinICEListener c = new ThinICEListener() { // from class: com.inmobi.commons.internal.ThinICE.1
        @Override // com.inmobi.commons.thinICE.icedatacollector.ThinICEListener
        public void onSamplingTerminated(List<Sample> list) {
            ThinICE.b(list);
            IceDataCollector.stop();
            ActivityRecognitionSampler.stop();
        }
    };
    private static Timer d = new Timer();

    private ThinICE() {
    }

    public static void setConfig(ThinICEConfig thinICEConfig) {
        if (thinICEConfig != null) {
            ThinICEConfigSettings thinICEConfigSettings = new ThinICEConfigSettings();
            thinICEConfigSettings.setEnabled(thinICEConfig.isEnabled());
            thinICEConfigSettings.setSampleCellEnabled(thinICEConfig.isCellEnabled());
            thinICEConfigSettings.setSampleCellOperatorEnabled(thinICEConfig.isOperatorEnabled());
            thinICEConfigSettings.setSampleConnectedWifiEnabled(thinICEConfig.isConnectedWifiEnabled());
            thinICEConfigSettings.setSampleHistorySize(thinICEConfig.getSampleHistorySize());
            thinICEConfigSettings.setSampleInterval(thinICEConfig.getSampleInterval() * 1000);
            thinICEConfigSettings.setSampleLocationEnabled(true);
            thinICEConfigSettings.setSampleVisibleWifiEnabled(thinICEConfig.isVisibleWifiEnabled());
            thinICEConfigSettings.setStopRequestTimeout(thinICEConfig.getStopRequestTimeout() * 1000);
            thinICEConfigSettings.setWifiFlags(thinICEConfig.getWifiFlags());
            thinICEConfigSettings.setCellOpFlags(thinICEConfig.getCellOpsFlag());
            IceDataCollector.setConfig(thinICEConfigSettings);
        }
    }

    public static void start(Context context) throws CommonsException {
        if (InternalSDKUtil.isInitializedSuccessfully(false)) {
            a(context);
            if (Build.VERSION.SDK_INT < 14) {
                IceDataCollector.start(context);
            }
            ActivityRecognitionSampler.start();
        }
    }

    public static void stop(Context context) throws CommonsException {
        a(context);
        if (Build.VERSION.SDK_INT < 14) {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c() {
        List<Sample> data = IceDataCollector.getData();
        IceDataCollector.stop();
        b(data);
        ActivityRecognitionSampler.stop();
    }

    @SuppressLint({"NewApi"})
    private static void a(Context context) throws CommonsException {
        if (!f3801a && context == null) {
            throw new CommonsException(1);
        }
        if (!f3801a) {
            if (Build.VERSION.SDK_INT >= 14) {
                ApplicationFocusManager.init(context);
                ApplicationFocusManager.addFocusChangedListener(new ApplicationFocusManager.FocusChangedListener() { // from class: com.inmobi.commons.internal.ThinICE.2
                    @Override // com.inmobi.commons.internal.ApplicationFocusManager.FocusChangedListener
                    public void onFocusChanged(boolean z) {
                        if (z) {
                            Log.internal(InternalSDKUtil.LOGGING_TAG, "App comes in foreground");
                            boolean unused = ThinICE.b = true;
                            IceDataCollector.start(InternalSDKUtil.getContext());
                            return;
                        }
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "App goes in background");
                        boolean unused2 = ThinICE.b = false;
                        ThinICE.c();
                    }
                });
                IceDataCollector.start(context.getApplicationContext());
            } else {
                IceDataCollector.setListener(c);
            }
            f3801a = true;
        }
        InternalSDKUtil.initialize(context.getApplicationContext());
        IceDataCollector.setIceDataCollectionListener(new IceDataCollector.ThinIceDataCollectedListener() { // from class: com.inmobi.commons.internal.ThinICE.3
            @Override // com.inmobi.commons.thinICE.icedatacollector.IceDataCollector.ThinIceDataCollectedListener
            public void onDataCollected() {
                if (ThinICE.b) {
                    boolean unused = ThinICE.b = false;
                    ThinICE.c();
                    IceDataCollector.start(InternalSDKUtil.getContext());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(List<Sample> list) {
        if (list.size() == 0 && ActivityRecognitionSampler.getCollectedList().size() == 0) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "No ThinICE data is collected. NoOp.");
        } else if (!AnalyticsInitializer.getConfigParams().getThinIceConfig().isEnabled()) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "ThisICE disabled. Not sending data. NoOp.");
        } else {
            RetryMechanism retryMechanism = new RetryMechanism((int) AnalyticsInitializer.getConfigParams().getThinIceConfig().getMaxRetry(), ((int) AnalyticsInitializer.getConfigParams().getThinIceConfig().getRetryInterval()) * 1000, d);
            final String payloadString = new JSONPayloadCreator().toPayloadString(list, ActivityRecognitionSampler.getCollectedList(), InternalSDKUtil.getContext());
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Sending " + list.size() + " ThinICE params to server " + payloadString);
            retryMechanism.rescheduleTimer(new RetryMechanism.RetryRunnable() { // from class: com.inmobi.commons.internal.ThinICE.4
                @Override // com.inmobi.commons.cache.RetryMechanism.RetryRunnable
                public void run() throws Exception {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Sending ThinICE data to server " + AnalyticsInitializer.getConfigParams().getThinIceConfig().getEndpointUrl());
                    if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
                        ThinICE.b(payloadString);
                        return;
                    }
                    throw new Exception("Device not connected.");
                }

                @Override // com.inmobi.commons.cache.RetryMechanism.RetryRunnable
                public void completed() {
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(AnalyticsInitializer.getConfigParams().getThinIceConfig().getEndpointUrl()).openConnection();
        httpURLConnection.setRequestProperty("User-Agent", InternalSDKUtil.getUserAgent());
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(false);
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream());
        outputStreamWriter.write(str);
        outputStreamWriter.flush();
        outputStreamWriter.close();
        httpURLConnection.getResponseCode();
    }
}
