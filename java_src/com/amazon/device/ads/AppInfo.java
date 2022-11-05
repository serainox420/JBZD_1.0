package com.amazon.device.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.amazon.device.ads.Metrics;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppInfo {
    private final JSONObject packageInfoUrlJSON;
    private final PackageManager packageManager;
    private final String packageName;

    public AppInfo(Context context) {
        this(context, Metrics.getInstance().getMetricsCollector(), new JSONObject());
    }

    AppInfo(Context context, MetricsCollector metricsCollector, JSONObject jSONObject) {
        String str = null;
        this.packageInfoUrlJSON = jSONObject;
        this.packageName = context.getPackageName();
        JSONUtils.put(jSONObject, "pn", this.packageName);
        this.packageManager = context.getPackageManager();
        try {
            CharSequence applicationLabel = this.packageManager.getApplicationLabel(context.getApplicationInfo());
            JSONUtils.put(jSONObject, "lbl", applicationLabel != null ? applicationLabel.toString() : null);
        } catch (ArrayIndexOutOfBoundsException e) {
            metricsCollector.incrementMetric(Metrics.MetricType.APP_INFO_LABEL_INDEX_OUT_OF_BOUNDS);
        }
        try {
            PackageInfo packageInfo = this.packageManager.getPackageInfo(this.packageName, 0);
            JSONUtils.put(jSONObject, "vn", packageInfo != null ? packageInfo.versionName : null);
            JSONUtils.put(jSONObject, "v", packageInfo != null ? Integer.toString(packageInfo.versionCode) : str);
        } catch (PackageManager.NameNotFoundException e2) {
        }
    }

    protected AppInfo() {
        this.packageName = null;
        this.packageInfoUrlJSON = null;
        this.packageManager = null;
    }

    public JSONObject getPackageInfoJSON() {
        return this.packageInfoUrlJSON;
    }

    public String getPackageInfoJSONString() {
        if (this.packageInfoUrlJSON != null) {
            return this.packageInfoUrlJSON.toString();
        }
        return null;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public PackageManager getPackageManager() {
        return this.packageManager;
    }
}
