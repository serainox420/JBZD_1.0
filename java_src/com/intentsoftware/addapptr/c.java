package com.intentsoftware.addapptr;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.AsyncTask;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.facebook.ads.AdSettings;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailability;
import com.intentsoftware.addapptr.AATKit;
import com.intentsoftware.addapptr.ad.NativeAd;
import com.intentsoftware.addapptr.c.i;
import com.millennialmedia.MMSDK;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
/* compiled from: AdController.java */
/* loaded from: classes.dex */
public class c implements u {
    private static final int MIN_ACCELEROMETER_RANGE = 19;
    @SuppressLint({"StaticFieldLeak"})
    private static Activity activity;
    private static String googleAdvertisingIdString;
    private static Map<String, String> options;
    private Sensor accelerometer;
    private final Application application;
    private final com.intentsoftware.addapptr.a.b configDownloader;
    private AlertDialog debugDialog;
    private final AATKit.Delegate delegate;
    private int indexOfPlacementPausedForAd;
    private boolean initialized;
    private com.intentsoftware.addapptr.a.a lastDownloadedConfig;
    private final List<s> placements;
    private w promoController;
    private final x reporter;
    private SensorManager sensorManager;
    private com.intentsoftware.addapptr.c.i shakeDetector;
    private boolean showingDebugDialog;
    private int testId;
    private static com.intentsoftware.addapptr.c.k globalTargetingInfo = new com.intentsoftware.addapptr.c.k();
    private static Set<AdNetwork> networkWhitelistForTargeting = new HashSet();
    private boolean shouldNotifyResume = false;
    private boolean debugScreenEnabled = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Application application, AATKit.Delegate delegate, boolean z) {
        this.application = application;
        com.intentsoftware.addapptr.c.b.init(application);
        com.intentsoftware.addapptr.c.e.init(application);
        com.intentsoftware.addapptr.c.j.init(application);
        com.intentsoftware.addapptr.c.h.init(application);
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(application) != 0 || Build.VERSION.SDK_INT < 9) {
            ad.remove(AdNetwork.ADMOB);
            ad.remove(AdNetwork.ADX);
            ad.remove(AdNetwork.DFP);
            ad.remove(AdNetwork.PUBMATIC);
        }
        if (Build.VERSION.SDK_INT < 14) {
            ad.remove(AdNetwork.ADCOLONY);
            ad.remove(AdNetwork.FLURRY);
        }
        if (Build.VERSION.SDK_INT < 15) {
            ad.remove(AdNetwork.FACEBOOK);
        } else if (isNetworkEnabled(AdNetwork.FACEBOOK)) {
            AdSettings.setMediationService("AddApptr");
        }
        if (Build.VERSION.SDK_INT < 16) {
            ad.remove(AdNetwork.MILLENNIAL);
            ad.remove(AdNetwork.LOOPME);
        } else if (isNetworkEnabled(AdNetwork.MILLENNIAL)) {
            try {
                MMSDK.initialize(application);
            } catch (Exception e) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                    com.intentsoftware.addapptr.c.c.e(this, "Exception when initializing Millennial: " + e.getMessage());
                }
            }
        }
        this.placements = new ArrayList();
        options = new HashMap();
        setOption("LOGCMD", "Yes");
        com.intentsoftware.addapptr.b.a.init(application);
        aa aaVar = new aa();
        ab abVar = new ab();
        ac acVar = new ac();
        this.promoController = new w(this);
        this.configDownloader = new com.intentsoftware.addapptr.a.b(createConfigDownloaderListener());
        if (Build.VERSION.SDK_INT >= 14) {
            this.reporter = new y(application, abVar, acVar, aaVar, this.placements);
        } else {
            this.reporter = new x(abVar, acVar, aaVar, this.placements);
        }
        this.delegate = delegate;
        obtainEncryptedAdvertisingId(application);
        if (z) {
            enableDebugScreen();
        }
    }

    private void obtainEncryptedAdvertisingId(final Context context) {
        new AsyncTask<Void, Void, Void>() { // from class: com.intentsoftware.addapptr.c.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context) == 0) {
                    try {
                        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
                        if (advertisingIdInfo != null) {
                            String unused = c.googleAdvertisingIdString = advertisingIdInfo.getId();
                            com.intentsoftware.addapptr.b.a.setAdvertisingId(com.intentsoftware.addapptr.c.a.encode_idfa(c.googleAdvertisingIdString));
                        } else if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                            com.intentsoftware.addapptr.c.c.e(c.this, "Cannot obtain Google Advertising ID info - null was returned!");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Void r3) {
                super.onPostExecute((AnonymousClass1) r3);
                c.this.initialized = true;
                if (c.activity != null) {
                    c.this.handleActivityResume(c.activity);
                }
            }
        }.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int createPlacement(String str, PlacementSize placementSize) {
        s jVar;
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Creating new placement with name: " + str + " and size: " + placementSize);
        }
        if (str == null || str.isEmpty()) {
            com.intentsoftware.addapptr.c.c.e(this, "Placement name cannot be empty! Placement was NOT created!");
            return -1;
        }
        for (s sVar : this.placements) {
            if (sVar.getName().equals(str)) {
                throw new IllegalArgumentException("Placement with name " + str + " already exists!");
            }
        }
        if (placementSize == PlacementSize.Fullscreen) {
            jVar = new o(str, placementSize, this.application);
        } else if (placementSize == PlacementSize.Native) {
            jVar = new q(str, placementSize, this.application);
        } else if (placementSize == PlacementSize.MultiSizeBanner) {
            jVar = new p(str, placementSize, this.application);
        } else {
            jVar = new j(str, placementSize, this.application);
        }
        this.placements.add(jVar);
        jVar.addListener(this);
        if (this.lastDownloadedConfig != null) {
            Iterator<t> it = this.lastDownloadedConfig.getPlacementConfigs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                t next = it.next();
                if (next.getPlacementName().equals(str)) {
                    jVar.onConfigDownloaded(next);
                    break;
                }
            }
            Iterator<b> it2 = this.lastDownloadedConfig.getAdConfigs().iterator();
            while (it2.hasNext()) {
                b next2 = it2.next();
                ArrayList<PlacementSize> supportedPlacementSizes = next2.getSupportedPlacementSizes();
                if (next2.getPlacementName() != null) {
                    if (next2.getPlacementName().equals(str) && supportedPlacementSizes.contains(jVar.getSize())) {
                        jVar.addConfig(next2);
                    }
                } else if (supportedPlacementSizes.contains(jVar.getSize()) && !jVar.getName().equals(w.PROMO_NAME) && jVar.acceptsGeneralRules) {
                    jVar.addConfig(next2);
                }
            }
            jVar.configsFinishedDownloading();
        }
        if (activity != null) {
            jVar.onResume(activity);
        }
        return this.placements.size() - 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startPlacementAutoReload(int i) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Start placement " + sVar.getName() + "(id:" + i + ") auto reload");
            }
            sVar.startPlacementAutoReload();
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Start placement id: " + i + " auto reload call failed, placement ID is invalid!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startPlacementAutoReload(int i, int i2) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Start placement " + sVar.getName() + "(id:" + i + ") auto reload with reload time:" + i2);
            }
            sVar.setPlacementAutoreloadInterval(i2);
            sVar.startPlacementAutoReload();
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Start placement id: " + i + " auto reload with seconds call failed, placement ID is invalid!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlacementAutoreloadInterval(int i, int i2) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Set placement " + sVar.getName() + "(id:" + i + ") autoreload interval to:" + i2);
            }
            sVar.setPlacementAutoreloadInterval(i2);
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Set placement id: " + i + " autoreload interval call failed, placement ID is invalid!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stopPlacementAutoReload(int i) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Stop placement " + sVar.getName() + "(id:" + i + ") auto reload");
            }
            sVar.stopPlacementAutoReload();
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Stop placement id: " + i + " auto reload call failed, placement ID is invalid!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean reloadPlacement(int i, boolean z) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Reload placement " + sVar.getName() + "(id:" + i + "), force:" + z);
            }
            return sVar.reload(z);
        }
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Reload placement id: " + i + " call failed, placement ID is invalid!");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getPlacementView(int i) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Get view for placement " + sVar.getName() + "(id:" + i + ").");
            }
            return sVar.getPlacementView();
        } else if (!com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            return null;
        } else {
            com.intentsoftware.addapptr.c.c.w(this, "Get view for placement id:" + i + " failed, placement ID is invalid!");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.intentsoftware.addapptr.ad.d getNativeAd(int i) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Get native ad for placement " + sVar.getName() + "(id:" + i + ").");
            }
            return sVar.getNativeAd();
        }
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Get native ad for placement id:" + i + " failed, placement ID is invalid!");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasAdForPlacement(int i) {
        boolean z = false;
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (sVar.getLoadedAd() != null) {
                z = true;
            }
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Has ad for placement " + sVar.getName() + "(id:" + i + "), result:" + z);
            }
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Has ad for placement id:" + i + " call failed, placement ID is invalid!");
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean showPlacement(int i) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            boolean show = sVar.show();
            if (isOptionEnabled("LOGSHOW")) {
                com.intentsoftware.addapptr.c.h.log("Show called on placement:" + sVar.getName() + ", size:" + sVar.getSize() + ", success:" + show);
            }
            if (!show && isOptionEnabled("TRIGDISPLAYFAILED")) {
                com.intentsoftware.addapptr.c.h.writeLog("displayFailed");
            } else if (show && isOptionEnabled("TRIGSOMETHINGTOSHOW")) {
                com.intentsoftware.addapptr.c.h.writeLog("successful call of \"show\"");
            }
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Show placement " + sVar.getName() + "(id:" + i + "), success:" + show);
            }
            return show;
        }
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Show placement id:" + i + " call failed, placement ID is invalid!");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlacementDefaultImage(int i, Bitmap bitmap) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Set placement " + sVar.getName() + "(id:" + i + ") default image.");
            }
            sVar.setDefaultImage(bitmap);
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Set placement id:" + i + " default image call failed, placement ID is invalid!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlacementDefaultImageResource(int i, int i2) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Set placement " + sVar.getName() + "(id:" + i + ") default image resource.");
            }
            sVar.setDefaultImageResource(i2);
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Set placement id:" + i + " default image resource call failed, placement ID is invalid!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlacementContentGravity(int i, int i2) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Set placement " + sVar.getName() + "(id:" + i + ") content gravity, gravity:" + i2);
            }
            sVar.setGravity(i2);
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Set placement id:" + i + " content gravity call failed, placement ID is invalid!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTestAppId(int i) {
        this.testId = i;
        com.intentsoftware.addapptr.b.a.setTestAppId(i);
    }

    int getTestAppId() {
        return com.intentsoftware.addapptr.b.a.getTestAppId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enableDebugScreen() {
        if (!this.debugScreenEnabled) {
            this.sensorManager = (SensorManager) this.application.getSystemService("sensor");
            this.accelerometer = this.sensorManager.getDefaultSensor(1);
            if (this.accelerometer != null && this.accelerometer.getMaximumRange() >= 19.0f) {
                this.debugScreenEnabled = true;
                this.shakeDetector = new com.intentsoftware.addapptr.c.i(this.accelerometer.getMaximumRange());
                this.shakeDetector.setOnShakeListener(new i.a() { // from class: com.intentsoftware.addapptr.c.2
                    @Override // com.intentsoftware.addapptr.c.i.a
                    public void onShake() {
                        if (!c.this.showingDebugDialog && c.activity != null && !c.activity.isFinishing()) {
                            c.this.showDebugDialogInternal();
                        }
                    }
                });
                this.sensorManager.registerListener(this.shakeDetector, this.accelerometer, 2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showDebugDialog() {
        if (!this.showingDebugDialog && activity != null && !activity.isFinishing()) {
            activity.runOnUiThread(new Runnable() { // from class: com.intentsoftware.addapptr.c.3
                @Override // java.lang.Runnable
                public void run() {
                    c.this.showDebugDialogInternal();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDebugDialogInternal() {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(ae.FULL_NAME);
        final View inflate = activity.getLayoutInflater().inflate(R.layout.debug_dialog, (ViewGroup) null);
        builder.setView(inflate);
        ((TextView) inflate.findViewById(R.id.debugDialogMessage)).setText(getDebugInfo());
        builder.setNeutralButton("Close", new DialogInterface.OnClickListener() { // from class: com.intentsoftware.addapptr.c.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (((CheckBox) inflate.findViewById(R.id.doNotShowAgainCheckbox)).isChecked()) {
                    c.this.disableDebugScreen();
                }
                dialogInterface.cancel();
            }
        });
        this.debugDialog = builder.create();
        this.debugDialog.setCancelable(true);
        this.debugDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.intentsoftware.addapptr.c.5
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                c.this.showingDebugDialog = false;
                c.this.debugDialog = null;
            }
        });
        this.showingDebugDialog = true;
        this.debugDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void disableDebugScreen() {
        if (this.debugScreenEnabled) {
            this.sensorManager.unregisterListener(this.shakeDetector);
            this.debugScreenEnabled = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNetworkEnabled(AdNetwork adNetwork, boolean z) {
        ad.setNetworkEnabled(adNetwork, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isNetworkEnabled(AdNetwork adNetwork) {
        return ad.isNetworkEnabled(adNetwork);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public void enablePromo(boolean z) {
        this.promoController.enablePromo(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public void disablePromo() {
        this.promoController.disablePromo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void preparePromo() {
        this.promoController.preparePromo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean showPromo(boolean z) {
        return this.promoController.showPromo(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivityResume(Activity activity2) {
        activity = activity2;
        if (this.initialized) {
            handleActivityResume(activity2);
        }
        if (this.showingDebugDialog && activity2 != null && !activity2.isFinishing()) {
            activity2.runOnUiThread(new Runnable() { // from class: com.intentsoftware.addapptr.c.6
                @Override // java.lang.Runnable
                public void run() {
                    c.this.showDebugDialogInternal();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivityPause() {
        activity = null;
        if (this.initialized) {
            handleActivityPause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleActivityResume(Activity activity2) {
        boolean z;
        boolean z2;
        this.promoController.onActivityResume();
        this.configDownloader.start();
        this.reporter.onResume(false);
        if (activity2 != null) {
            z = false;
            for (s sVar : this.placements) {
                if (this.shouldNotifyResume && this.placements.indexOf(sVar) == this.indexOfPlacementPausedForAd && sVar.getSize() == PlacementSize.Fullscreen && sVar.getLoadedAd() != null && sVar.getLoadedAd().getConfig() != null && sVar.getLoadedAd().getConfig().getNetwork() == AdNetwork.OPENX) {
                    z2 = true;
                } else {
                    sVar.onResume(activity2);
                    z2 = z;
                }
                z = z2;
            }
        } else {
            z = false;
        }
        if (this.delegate != null && this.shouldNotifyResume && !z) {
            this.delegate.aatkitResumeAfterAd(this.indexOfPlacementPausedForAd);
            this.shouldNotifyResume = false;
        }
        if (this.debugScreenEnabled) {
            this.sensorManager.registerListener(this.shakeDetector, this.accelerometer, 2);
        }
    }

    private void handleActivityPause() {
        this.reporter.onPause(false);
        this.promoController.onActivityPause();
        this.configDownloader.stop();
        for (s sVar : this.placements) {
            sVar.onPause();
        }
        if (this.debugScreenEnabled && this.sensorManager != null) {
            this.sensorManager.unregisterListener(this.shakeDetector);
        }
        if (isOptionEnabled("TRIGSHUTDOWN")) {
            com.intentsoftware.addapptr.c.h.writeLog("Shutdown");
        }
        if (this.debugDialog != null) {
            this.debugDialog.dismiss();
            this.debugDialog = null;
        }
    }

    private boolean placementIdIsValid(int i) {
        boolean z = i >= 0 && i <= this.placements.size();
        if (!z && com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Invalid placement id: " + i);
        }
        return z;
    }

    @Override // com.intentsoftware.addapptr.u
    public void onPlacementAdLoadFail(s sVar) {
        if (this.delegate != null) {
            this.delegate.aatkitNoAd(this.placements.indexOf(sVar));
        }
    }

    @Override // com.intentsoftware.addapptr.u
    public void onPlacementAdLoad(s sVar) {
        if (this.delegate != null && sVar.getSize() != PlacementSize.MultiSizeBanner) {
            this.delegate.aatkitHaveAd(this.placements.indexOf(sVar));
        }
        if (sVar.getName().equals(w.PROMO_NAME)) {
            this.promoController.onAdLoaded();
        }
    }

    @Override // com.intentsoftware.addapptr.u
    public void onPlacementHaveAdWithBannerView(s sVar, k kVar) {
        if (this.delegate != null) {
            this.delegate.aatkitHaveAdForPlacementWithBannerView(this.placements.indexOf(sVar), kVar);
        }
    }

    @Override // com.intentsoftware.addapptr.u
    public void onPauseForAd(s sVar) {
        this.promoController.onAdShown();
        if (this.delegate != null) {
            this.delegate.aatkitPauseForAd(this.placements.indexOf(sVar));
            this.indexOfPlacementPausedForAd = this.placements.indexOf(sVar);
            this.shouldNotifyResume = true;
        }
    }

    @Override // com.intentsoftware.addapptr.u
    public void onEmptyAdShown(s sVar) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "showing empty ad on placement: " + sVar.getName());
        }
        if (this.delegate != null) {
            this.delegate.aatkitShowingEmpty(this.placements.indexOf(sVar));
        }
    }

    @Override // com.intentsoftware.addapptr.u
    public void onUserEarnedIncentive(s sVar) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
            com.intentsoftware.addapptr.c.c.i(this, "Incentive earned for placement: " + sVar.getName());
        }
        if (this.delegate != null) {
            this.delegate.aatkitUserEarnedIncentive(this.placements.indexOf(sVar));
        }
    }

    @Override // com.intentsoftware.addapptr.u
    public void fallbackOnResumeFromAd(s sVar) {
        if (activity != null) {
            sVar.onResume(activity);
        }
        if (sVar.isAutoreloaderActive()) {
            sVar.reloadInternal();
        }
        this.promoController.onActivityResume();
        if (this.delegate != null && this.shouldNotifyResume) {
            this.delegate.aatkitResumeAfterAd(this.indexOfPlacementPausedForAd);
            this.shouldNotifyResume = false;
        }
    }

    private com.intentsoftware.addapptr.a.c createConfigDownloaderListener() {
        return new com.intentsoftware.addapptr.a.c() { // from class: com.intentsoftware.addapptr.c.7
            @Override // com.intentsoftware.addapptr.a.c
            public void onConfigDownloaded(com.intentsoftware.addapptr.a.a aVar, boolean z) {
                if (aVar.getAdConfigs().isEmpty() && com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                    com.intentsoftware.addapptr.c.c.w(this, "Downloaded config with no supported ad networks. Please check the \"Settings\"-tab on the Addapptr website or contact Addapptr support.");
                }
                c.this.lastDownloadedConfig = aVar;
                c.this.handleConfigDownload(aVar);
                if (aVar.isUnrecognizedBundleId() && c.this.delegate != null) {
                    c.this.delegate.aatkitUnknownBundleId();
                }
                if (c.this.delegate != null) {
                    c.this.delegate.aatkitObtainedAdRules(z);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleConfigDownload(com.intentsoftware.addapptr.a.a aVar) {
        if (aVar.isGotIP()) {
            com.intentsoftware.addapptr.b.a.setIP(aVar.getIPaddr());
        }
        options.putAll(aVar.getOptions());
        distributePlacementConfig(aVar);
        distributeAdConfigWithSize(aVar);
        for (s sVar : this.placements) {
            sVar.configsFinishedDownloading();
        }
        this.promoController.onConfigDownloaded();
    }

    private void distributeAdConfigWithSize(com.intentsoftware.addapptr.a.a aVar) {
        Iterator<b> it = aVar.getAdConfigs().iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (next.getPlacementName() != null) {
                ArrayList<PlacementSize> supportedPlacementSizes = next.getSupportedPlacementSizes();
                int findPlacementIdByName = findPlacementIdByName(next.getPlacementName());
                if (findPlacementIdByName != -1) {
                    s sVar = this.placements.get(findPlacementIdByName);
                    if (supportedPlacementSizes.contains(sVar.getSize())) {
                        sVar.addConfig(next);
                    }
                }
            } else {
                addConfigToAllPlacements(next);
            }
        }
    }

    private void addConfigToAllPlacements(b bVar) {
        for (s sVar : this.placements) {
            if (!sVar.getName().equals(w.PROMO_NAME) && sVar.acceptsGeneralRules && bVar.getSupportedPlacementSizes().contains(sVar.getSize())) {
                sVar.addConfig(bVar);
            }
        }
    }

    private void distributePlacementConfig(com.intentsoftware.addapptr.a.a aVar) {
        Iterator<t> it = aVar.getPlacementConfigs().iterator();
        while (it.hasNext()) {
            t next = it.next();
            int findPlacementIdByName = findPlacementIdByName(next.getPlacementName());
            if (findPlacementIdByName != -1) {
                this.placements.get(findPlacementIdByName).onConfigDownloaded(next);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int findPlacementIdByName(String str) {
        ListIterator<s> listIterator = this.placements.listIterator();
        while (listIterator.hasNext()) {
            int nextIndex = listIterator.nextIndex();
            if (listIterator.next().getName().equals(str)) {
                return nextIndex;
            }
        }
        return -1;
    }

    com.intentsoftware.addapptr.a.b getConfigDownloader() {
        return this.configDownloader;
    }

    public static boolean isPaused() {
        return activity == null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getOption(String str) {
        if (options == null) {
            return null;
        }
        return options.get(str);
    }

    public static boolean isOptionEnabled(String str) {
        String option = getOption(str);
        return option != null && option.equals("Yes");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.intentsoftware.addapptr.c.k getGlobalTargetingInfo() {
        return globalTargetingInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTargetingInfo(Integer num, Map<String, List<String>> map) {
        if (num == null) {
            globalTargetingInfo.setMap(map);
        } else if (placementIdIsValid(num.intValue())) {
            s sVar = this.placements.get(num.intValue());
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Set targeting info " + map + "for placement " + sVar.getName() + "(id:" + num + ")");
            }
            sVar.setTargetingInfo(map);
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Set targeting info for placement id:" + num + " failed, placement ID is invalid!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addAdNetworkForKeywordTargeting(AdNetwork adNetwork) {
        networkWhitelistForTargeting.add(adNetwork);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeAdNetworkForKeywordTargeting(AdNetwork adNetwork) {
        networkWhitelistForTargeting.remove(adNetwork);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set<AdNetwork> getNetworkWhitelistForTargeting() {
        return networkWhitelistForTargeting;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOption(String str, String str2) {
        options.put(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldLogAATKitCalls() {
        return isOptionEnabled("LOGCMD");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setInitialRules(String str) {
        this.configDownloader.setInitialRules(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRuleCachingEnabled(boolean z) {
        this.configDownloader.setRuleCachingEnabled(z);
    }

    public static String getGoogleAdvertisingIdString() {
        return googleAdvertisingIdString;
    }

    void setFakeAdResponse(String str) {
        this.configDownloader.setFakeAdResponse(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<s> getPlacements() {
        return this.placements;
    }

    public void destroy() {
        this.promoController.destroy();
        handleActivityPause();
        for (s sVar : this.placements) {
            sVar.destroy();
        }
        this.placements.clear();
        this.promoController = null;
        this.initialized = false;
    }

    public void setLogLevel(int i) {
        com.intentsoftware.addapptr.c.c.setUserSetLogLevel(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getDebugInfo() {
        String str;
        String str2;
        AdNetwork next;
        AdNetwork next2;
        String str3 = "(" + com.intentsoftware.addapptr.b.a.getAppID() + ")\n";
        if (this.testId != 0) {
            str = str3 + "Using test ID:" + this.testId + "\n\n";
        } else {
            str = str3 + "Live Mode\n\n";
        }
        String str4 = str + "Currently loaded ads: \n";
        Iterator<s> it = this.placements.iterator();
        while (true) {
            str2 = str4;
            if (!it.hasNext()) {
                break;
            }
            s next3 = it.next();
            String loadedAdNames = next3.getLoadedAdNames();
            if (next3.loader != null && next3.loader.isLoading()) {
                loadedAdNames = loadedAdNames + ", Loading new ad.";
            }
            String str5 = str2 + next3.getName() + ": " + loadedAdNames + "\n";
            if (next3.getSize() == PlacementSize.Fullscreen || next3.getSize() == PlacementSize.Native) {
                str4 = str5 + "\t\t Last shown: " + (next3.getLastShownAdName() != null ? next3.getLastShownAdName() : "None") + "\n";
            } else {
                str4 = str5;
            }
        }
        if (!ad.getDisabledNetworks().isEmpty()) {
            String str6 = str2 + "\nNetworks disabled from code:\n";
            Iterator<AdNetwork> it2 = ad.getDisabledNetworks().iterator();
            while (true) {
                str2 = str6;
                if (!it2.hasNext()) {
                    break;
                }
                str6 = !isNetworkEnabled(it2.next()) ? str2 + next2.toString() + "\n" : str2;
            }
        }
        if (!ad.getNetworksWithRemovedSdks().isEmpty()) {
            String str7 = str2 + "\nNetworks with removed SDKs:\n";
            Iterator<AdNetwork> it3 = ad.getNetworksWithRemovedSdks().iterator();
            while (true) {
                str2 = str7;
                if (!it3.hasNext()) {
                    break;
                }
                str7 = !isNetworkEnabled(it3.next()) ? str2 + next.toString() + "\n" : str2;
            }
        }
        return str2 + "\nDevice type: " + com.intentsoftware.addapptr.b.a.getModel();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void attachNativeAdToLayout(com.intentsoftware.addapptr.ad.d dVar, ViewGroup viewGroup) {
        dVar.attachToLayout(viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void detachNativeAdFromLayout(com.intentsoftware.addapptr.ad.d dVar) {
        dVar.detachFromLayout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getNativeAdTitle(com.intentsoftware.addapptr.ad.d dVar) {
        return dVar.getAsset(NativeAd.TITLE_TEXT_ASSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getNativeAdDescription(com.intentsoftware.addapptr.ad.d dVar) {
        return dVar.getAsset("description");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getNativeAdImageUrl(com.intentsoftware.addapptr.ad.d dVar) {
        return dVar.getAsset(NativeAd.MAIN_IMAGE_ASSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getNativeAdIconUrl(com.intentsoftware.addapptr.ad.d dVar) {
        return dVar.getAsset(NativeAd.ICON_IMAGE_ASSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getNativeAdCallToAction(com.intentsoftware.addapptr.ad.d dVar) {
        return dVar.getAsset(NativeAd.CALL_TO_ACTION_TEXT_ASSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getNativeAdAdvertiser(com.intentsoftware.addapptr.ad.d dVar) {
        return dVar.getAsset(NativeAd.ADVERTISER_TEXT_ASSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAd.a getNativeAdRating(com.intentsoftware.addapptr.ad.d dVar) {
        return dVar.getRating();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getNativeAdBrandingLogo(com.intentsoftware.addapptr.ad.d dVar) {
        return dVar.getBrandingLogo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAd.Type getNativeAdType(com.intentsoftware.addapptr.ad.d dVar) {
        return dVar.getAdType();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reportAdSpaceForNativePlacement(int i) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (sVar.getSize() == PlacementSize.Native) {
                ((q) sVar).onAdspace();
            } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                com.intentsoftware.addapptr.c.c.w(this, "reportAdSpaceForNativePlacement method can only be called for native placement.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int currentlyLoadingNativeAdsOnPlacement(int i) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (sVar.getSize() == PlacementSize.Native) {
                return ((q) sVar).getNumberOfCurrentlyLoadingNativeAds();
            }
            if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                com.intentsoftware.addapptr.c.c.w(this, "currentlyLoadingNativeAdsOnPlacement method can only be called for native placement.");
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFrequencyCapReachedForNativePlacement(int i) {
        if (placementIdIsValid(i)) {
            s sVar = this.placements.get(i);
            if (sVar.getSize() == PlacementSize.Native) {
                return ((q) sVar).isFrequencyCapReached();
            }
            if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                com.intentsoftware.addapptr.c.c.w(this, "isFrequencyCapReachedForNativePlacement method can only be called for native placement.");
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isNativeAdExpired(com.intentsoftware.addapptr.ad.d dVar) {
        return dVar.isExpired();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isNativeAdReady(com.intentsoftware.addapptr.ad.d dVar) {
        return dVar.isReady();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdNetwork getNativeAdNetwork(com.intentsoftware.addapptr.ad.d dVar) {
        return dVar.getNetwork();
    }
}
