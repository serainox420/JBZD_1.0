package com.openx.core.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.openx.common.deviceData.listeners.AdTruthListener;
import com.openx.common.deviceData.listeners.DeviceInfoListener;
import com.openx.common.deviceData.listeners.NetworkListener;
import com.openx.common.deviceData.listeners.OXMLocationListener;
import com.openx.common.deviceData.listeners.PreferenceListener;
import com.openx.common.deviceData.managers.AdTruthImpl;
import com.openx.common.deviceData.managers.DeviceInfoImpl;
import com.openx.common.deviceData.managers.LocationImpl;
import com.openx.common.deviceData.managers.NetworkImpl;
import com.openx.common.deviceData.managers.OXMPreferencesImpl;
import com.openx.common.utils.helpers.Utils;
import com.openx.sdk.event.OXMEventsListener;
import com.openx.sdk.event.OXMEventsManagerImpl;
import com.openx.view.WebViewBase;
import java.util.Hashtable;
/* loaded from: classes3.dex */
public final class OXMManagersResolver {
    private WebViewBase currentAd;
    private Context mContext;
    private Hashtable<ManagerType, OXMManager> mRegisteredManaers;

    /* loaded from: classes3.dex */
    public enum ManagerType {
        DEVICE_MANAGER,
        EVENTS_MANAGER,
        LOCATION_MANAGER,
        NETWORK_MANAGER,
        PREFERENCES_MANAGER,
        AD_TRUTH_MANAGER
    }

    public void setCurrentAd(WebViewBase webViewBase) {
        this.currentAd = webViewBase;
    }

    public WebViewBase getCurrentAd() {
        return this.currentAd;
    }

    private void setContext(Context context) {
        this.mContext = context;
    }

    public Context getContext() {
        return this.mContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Hashtable<ManagerType, OXMManager> getRegisteredManagers() {
        return this.mRegisteredManaers;
    }

    private OXMManagersResolver() {
        this.mRegisteredManaers = new Hashtable<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class OXMManagersResolverHolder {
        public static final OXMManagersResolver instance = new OXMManagersResolver();

        private OXMManagersResolverHolder() {
        }
    }

    public static OXMManagersResolver getInstance() {
        return OXMManagersResolverHolder.instance;
    }

    public OXMManager getManager(ManagerType managerType) {
        if (getRegisteredManagers().containsKey(managerType)) {
            return getRegisteredManagers().get(managerType);
        }
        return null;
    }

    public AdTruthListener getAdTruthManager() {
        return (AdTruthListener) getManager(ManagerType.AD_TRUTH_MANAGER);
    }

    public PreferenceListener getPreferencesManager() {
        return (PreferenceListener) getManager(ManagerType.PREFERENCES_MANAGER);
    }

    public DeviceInfoListener getDeviceManager() {
        return (DeviceInfoListener) getManager(ManagerType.DEVICE_MANAGER);
    }

    public OXMEventsListener getEventsManager() {
        return (OXMEventsListener) getManager(ManagerType.EVENTS_MANAGER);
    }

    public OXMLocationListener getLocationManager() {
        return (OXMLocationListener) getManager(ManagerType.LOCATION_MANAGER);
    }

    public NetworkListener getNetworkManager() {
        return (NetworkListener) getManager(ManagerType.NETWORK_MANAGER);
    }

    private boolean isReady(Context context) {
        return context == getContext();
    }

    private void registerManagers(final Context context) {
        Utils.DENSITY = (context instanceof Activity ? (Activity) context : (Application) context).getResources().getDisplayMetrics().density;
        DeviceInfoImpl deviceInfoImpl = new DeviceInfoImpl();
        deviceInfoImpl.init(context);
        getRegisteredManagers().put(ManagerType.DEVICE_MANAGER, deviceInfoImpl);
        OXMEventsManagerImpl oXMEventsManagerImpl = new OXMEventsManagerImpl();
        oXMEventsManagerImpl.init(context);
        getRegisteredManagers().put(ManagerType.EVENTS_MANAGER, oXMEventsManagerImpl);
        new Thread(new Runnable() { // from class: com.openx.core.sdk.OXMManagersResolver.1
            @Override // java.lang.Runnable
            public void run() {
                LocationImpl locationImpl = new LocationImpl();
                locationImpl.init(context);
                OXMManagersResolver.this.getRegisteredManagers().put(ManagerType.LOCATION_MANAGER, locationImpl);
            }
        }).start();
        NetworkImpl networkImpl = new NetworkImpl();
        networkImpl.init(context);
        getRegisteredManagers().put(ManagerType.NETWORK_MANAGER, networkImpl);
        OXMPreferencesImpl oXMPreferencesImpl = new OXMPreferencesImpl();
        oXMPreferencesImpl.init(context);
        getRegisteredManagers().put(ManagerType.PREFERENCES_MANAGER, oXMPreferencesImpl);
        AdTruthImpl adTruthImpl = new AdTruthImpl();
        adTruthImpl.init(context);
        getRegisteredManagers().put(ManagerType.AD_TRUTH_MANAGER, adTruthImpl);
        setContext(context);
    }

    public void prepare(Context context) {
        if (!isReady(context)) {
            dispose();
            registerManagers(context);
        }
    }

    public void dispose() {
        OXMManager manager = getInstance().getManager(ManagerType.EVENTS_MANAGER);
        if (manager != null) {
            manager.dispose();
        }
        OXMManager manager2 = getInstance().getManager(ManagerType.DEVICE_MANAGER);
        if (manager2 != null) {
            manager2.dispose();
        }
        OXMManager manager3 = getInstance().getManager(ManagerType.LOCATION_MANAGER);
        if (manager3 != null) {
            manager3.dispose();
        }
        OXMManager manager4 = getInstance().getManager(ManagerType.NETWORK_MANAGER);
        if (manager4 != null) {
            manager4.dispose();
        }
        OXMManager manager5 = getInstance().getManager(ManagerType.PREFERENCES_MANAGER);
        if (manager5 != null) {
            manager5.dispose();
        }
        OXMManager manager6 = getInstance().getManager(ManagerType.AD_TRUTH_MANAGER);
        if (manager6 != null) {
            manager6.dispose();
        }
    }
}
