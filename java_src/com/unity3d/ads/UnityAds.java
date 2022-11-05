package com.unity3d.ads;

import android.app.Activity;
import android.os.Build;
import com.unity3d.ads.adunit.AdUnitOpen;
import com.unity3d.ads.api.AdUnit;
import com.unity3d.ads.api.Broadcast;
import com.unity3d.ads.api.Cache;
import com.unity3d.ads.api.Connectivity;
import com.unity3d.ads.api.DeviceInfo;
import com.unity3d.ads.api.Intent;
import com.unity3d.ads.api.Listener;
import com.unity3d.ads.api.Placement;
import com.unity3d.ads.api.Request;
import com.unity3d.ads.api.Resolve;
import com.unity3d.ads.api.Sdk;
import com.unity3d.ads.api.Storage;
import com.unity3d.ads.api.VideoPlayer;
import com.unity3d.ads.cache.CacheThread;
import com.unity3d.ads.configuration.Configuration;
import com.unity3d.ads.configuration.EnvironmentCheck;
import com.unity3d.ads.configuration.InitializeThread;
import com.unity3d.ads.connectivity.ConnectivityMonitor;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.misc.Utilities;
import com.unity3d.ads.properties.ClientProperties;
import com.unity3d.ads.properties.SdkProperties;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class UnityAds {
    private static boolean _configurationInitialized = false;
    private static boolean _debugMode = false;

    /* loaded from: classes3.dex */
    public enum FinishState {
        ERROR,
        SKIPPED,
        COMPLETED
    }

    /* loaded from: classes3.dex */
    public enum PlacementState {
        READY,
        NOT_AVAILABLE,
        DISABLED,
        WAITING,
        NO_FILL
    }

    /* loaded from: classes3.dex */
    public enum UnityAdsError {
        NOT_INITIALIZED,
        INITIALIZE_FAILED,
        INVALID_ARGUMENT,
        VIDEO_PLAYER_ERROR,
        INIT_SANITY_CHECK_FAIL,
        AD_BLOCKER_DETECTED,
        FILE_IO_ERROR,
        DEVICE_ID_ERROR,
        SHOW_ERROR,
        INTERNAL_ERROR
    }

    public static void initialize(Activity activity, String str, IUnityAdsListener iUnityAdsListener) {
        initialize(activity, str, iUnityAdsListener, false);
    }

    public static void initialize(Activity activity, String str, IUnityAdsListener iUnityAdsListener, boolean z) {
        DeviceLog.entered();
        if (!_configurationInitialized) {
            _configurationInitialized = true;
            if (str == null || str.length() == 0) {
                DeviceLog.error("Error while initializing Unity Ads: empty game ID, halting Unity Ads init");
                if (iUnityAdsListener != null) {
                    iUnityAdsListener.onUnityAdsError(UnityAdsError.INVALID_ARGUMENT, "Empty game ID");
                }
            } else if (activity == null) {
                DeviceLog.error("Error while initializing Unity Ads: null activity, halting Unity Ads init");
                if (iUnityAdsListener != null) {
                    iUnityAdsListener.onUnityAdsError(UnityAdsError.INVALID_ARGUMENT, "Null activity");
                }
            } else {
                if (z) {
                    DeviceLog.info("Initializing Unity Ads " + SdkProperties.getVersionName() + " (" + SdkProperties.getVersionCode() + ") with game id " + str + " in test mode");
                } else {
                    DeviceLog.info("Initializing Unity Ads " + SdkProperties.getVersionName() + " (" + SdkProperties.getVersionCode() + ") with game id " + str + " in production mode");
                }
                setDebugMode(_debugMode);
                ClientProperties.setGameId(str);
                ClientProperties.setListener(iUnityAdsListener);
                ClientProperties.setApplicationContext(activity.getApplicationContext());
                SdkProperties.setTestMode(z);
                if (EnvironmentCheck.isEnvironmentOk()) {
                    DeviceLog.info("Unity Ads environment check OK");
                    Configuration configuration = new Configuration();
                    configuration.setWebAppApiClassList(new Class[]{AdUnit.class, Broadcast.class, Cache.class, Connectivity.class, DeviceInfo.class, Listener.class, Storage.class, Sdk.class, Request.class, Resolve.class, VideoPlayer.class, Placement.class, Intent.class});
                    InitializeThread.initialize(configuration);
                    return;
                }
                DeviceLog.error("Error during Unity Ads environment check, halting Unity Ads init");
                if (iUnityAdsListener != null) {
                    iUnityAdsListener.onUnityAdsError(UnityAdsError.INIT_SANITY_CHECK_FAIL, "Unity Ads init environment check failed");
                }
            }
        }
    }

    public static boolean isInitialized() {
        return SdkProperties.isInitialized();
    }

    public static void setListener(IUnityAdsListener iUnityAdsListener) {
        ClientProperties.setListener(iUnityAdsListener);
    }

    public static IUnityAdsListener getListener() {
        return ClientProperties.getListener();
    }

    public static boolean isSupported() {
        return Build.VERSION.SDK_INT >= 9;
    }

    public static String getVersion() {
        return SdkProperties.getVersionName();
    }

    public static boolean isReady() {
        return isSupported() && isInitialized() && com.unity3d.ads.placement.Placement.isReady();
    }

    public static boolean isReady(String str) {
        return isSupported() && isInitialized() && str != null && com.unity3d.ads.placement.Placement.isReady(str);
    }

    public static PlacementState getPlacementState() {
        return (!isSupported() || !isInitialized()) ? PlacementState.NOT_AVAILABLE : com.unity3d.ads.placement.Placement.getPlacementState();
    }

    public static PlacementState getPlacementState(String str) {
        return (!isSupported() || !isInitialized() || str == null) ? PlacementState.NOT_AVAILABLE : com.unity3d.ads.placement.Placement.getPlacementState(str);
    }

    public static void show(Activity activity) {
        show(activity, com.unity3d.ads.placement.Placement.getDefaultPlacement());
    }

    public static void show(final Activity activity, final String str) {
        if (activity == null) {
            handleShowError(str, UnityAdsError.INVALID_ARGUMENT, "Activity must not be null");
        } else if (isReady(str)) {
            DeviceLog.info("Unity Ads opening new ad unit for placement " + str);
            ClientProperties.setActivity(activity);
            new Thread(new Runnable() { // from class: com.unity3d.ads.UnityAds.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("requestedOrientation", activity.getRequestedOrientation());
                    } catch (JSONException e) {
                        DeviceLog.exception("JSON error while constructing show options", e);
                    }
                    try {
                        if (!AdUnitOpen.open(str, jSONObject)) {
                            UnityAds.handleShowError(str, UnityAdsError.INTERNAL_ERROR, "Webapp timeout, shutting down Unity Ads");
                            com.unity3d.ads.placement.Placement.reset();
                            CacheThread.cancel();
                            ConnectivityMonitor.stopAll();
                        }
                    } catch (NoSuchMethodException e2) {
                        DeviceLog.exception("Could not get callback method", e2);
                        UnityAds.handleShowError(str, UnityAdsError.SHOW_ERROR, "Could not get com.unity3d.ads.properties.showCallback method");
                    }
                }
            }).start();
        } else if (!isSupported()) {
            handleShowError(str, UnityAdsError.NOT_INITIALIZED, "Unity Ads is not supported for this device");
        } else if (!isInitialized()) {
            handleShowError(str, UnityAdsError.NOT_INITIALIZED, "Unity Ads is not initialized");
        } else {
            handleShowError(str, UnityAdsError.SHOW_ERROR, "Placement \"" + str + "\" is not ready");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleShowError(final String str, final UnityAdsError unityAdsError, String str2) {
        final String str3 = "Unity Ads show failed: " + str2;
        DeviceLog.error(str3);
        final IUnityAdsListener listener = ClientProperties.getListener();
        if (listener != null) {
            Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.ads.UnityAds.2
                @Override // java.lang.Runnable
                public void run() {
                    IUnityAdsListener.this.onUnityAdsError(unityAdsError, str3);
                    IUnityAdsListener.this.onUnityAdsFinish(str, FinishState.ERROR);
                }
            });
        }
    }

    public static void setDebugMode(boolean z) {
        _debugMode = z;
        if (z) {
            DeviceLog.setLogLevel(8);
        } else {
            DeviceLog.setLogLevel(4);
        }
    }

    public static boolean getDebugMode() {
        return _debugMode;
    }
}
