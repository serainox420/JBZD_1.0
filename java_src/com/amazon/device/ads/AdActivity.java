package com.amazon.device.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public class AdActivity extends Activity {
    static final String ADAPTER_KEY = "adapter";
    private static final String LOGTAG = AdActivity.class.getSimpleName();
    private ActivityAdapterFactory activityAdapterFactory;
    private AdActivityAdapter adapter;
    private AdRegistrationExecutor amazonAdRegistration;
    private MobileAdsLogger logger;

    /* loaded from: classes.dex */
    public interface AdActivityAdapter {
        boolean onBackPressed();

        void onConfigurationChanged(android.content.res.Configuration configuration);

        void onCreate();

        void onDestroy();

        void onPause();

        void onResume();

        void onStop();

        void onWindowFocusChanged();

        void preOnCreate();

        void setActivity(Activity activity);
    }

    public AdActivity() {
        this(new MobileAdsLoggerFactory(), AdRegistration.getAmazonAdRegistrationExecutor(), new ActivityAdapterFactory(new MobileAdsLoggerFactory()));
    }

    AdActivity(MobileAdsLoggerFactory mobileAdsLoggerFactory, AdRegistrationExecutor adRegistrationExecutor, ActivityAdapterFactory activityAdapterFactory) {
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.amazonAdRegistration = adRegistrationExecutor;
        this.activityAdapterFactory = activityAdapterFactory;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        initializeSdk();
        this.adapter = this.activityAdapterFactory.createAdapter(getIntent());
        if (this.adapter == null) {
            super.onCreate(bundle);
            finish();
            return;
        }
        this.adapter.setActivity(this);
        this.adapter.preOnCreate();
        super.onCreate(bundle);
        this.adapter.onCreate();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.adapter.onWindowFocusChanged();
        }
    }

    private void initializeSdk() {
        if (this.logger == null) {
            setLoggerFactory(new MobileAdsLoggerFactory());
        }
        if (this.amazonAdRegistration == null) {
            setAmazonAdRegistrationExecutor(AdRegistration.getAmazonAdRegistrationExecutor());
        }
        if (this.activityAdapterFactory == null) {
            setActivityAdapterFactory(new ActivityAdapterFactory(new MobileAdsLoggerFactory()));
        }
        this.amazonAdRegistration.initializeAds(getApplicationContext());
    }

    void setLoggerFactory(MobileAdsLoggerFactory mobileAdsLoggerFactory) {
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
    }

    void setAmazonAdRegistrationExecutor(AdRegistrationExecutor adRegistrationExecutor) {
        this.amazonAdRegistration = adRegistrationExecutor;
    }

    void setActivityAdapterFactory(ActivityAdapterFactory activityAdapterFactory) {
        this.activityAdapterFactory = activityAdapterFactory;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.adapter.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.adapter.onResume();
    }

    @Override // android.app.Activity
    public void onStop() {
        this.adapter.onStop();
        super.onStop();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.adapter.onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.adapter.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!this.adapter.onBackPressed()) {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ActivityAdapterFactory {
        private final MobileAdsLogger logger;

        public ActivityAdapterFactory(MobileAdsLoggerFactory mobileAdsLoggerFactory) {
            this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(AdActivity.LOGTAG);
        }

        AdActivityAdapter createAdapter(Intent intent) {
            String stringExtra = intent.getStringExtra(AdActivity.ADAPTER_KEY);
            if (stringExtra == null) {
                this.logger.e("Unable to launch the AdActivity due to an internal error.");
                return null;
            }
            try {
                try {
                    try {
                        return (AdActivityAdapter) Class.forName(stringExtra).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    } catch (IllegalAccessException e) {
                        this.logger.e("Illegal access exception when instantiating the adapter.");
                        return null;
                    } catch (IllegalArgumentException e2) {
                        this.logger.e("Illegal arguments given to the default constructor.");
                        return null;
                    } catch (InstantiationException e3) {
                        this.logger.e("Instantiation exception when instantiating the adapter.");
                        return null;
                    } catch (InvocationTargetException e4) {
                        this.logger.e("Invocation target exception when instantiating the adapter.");
                        return null;
                    }
                } catch (NoSuchMethodException e5) {
                    this.logger.e("No default constructor exists for the adapter.");
                    return null;
                } catch (SecurityException e6) {
                    this.logger.e("Security exception when trying to get the default constructor.");
                    return null;
                }
            } catch (ClassNotFoundException e7) {
                this.logger.e("Unable to get the adapter class.");
                return null;
            }
        }
    }
}
