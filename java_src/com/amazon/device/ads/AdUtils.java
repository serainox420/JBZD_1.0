package com.amazon.device.ads;

import android.content.Context;
import android.content.pm.ActivityInfo;
import com.amazon.device.ads.Metrics;
import java.util.HashSet;
/* loaded from: classes.dex */
class AdUtils {
    public static final String REQUIRED_ACTIVITY = "com.amazon.device.ads.AdActivity";
    private static AdUtilsExecutor executor = new AdUtilsExecutor();

    private AdUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean checkDefinedActivities(Context context) {
        return executor.checkDefinedActivities(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setConnectionMetrics(ConnectionInfo connectionInfo, MetricsCollector metricsCollector) {
        executor.setConnectionMetrics(connectionInfo, metricsCollector);
    }

    public static double getViewportInitialScale(double d) {
        return executor.getViewportInitialScale(d);
    }

    public static double calculateScalingMultiplier(int i, int i2, int i3, int i4) {
        return executor.calculateScalingMultiplier(i, i2, i3, i4);
    }

    public static int pixelToDeviceIndependentPixel(int i) {
        return executor.pixelToDeviceIndependentPixel(i);
    }

    public static int deviceIndependentPixelToPixel(int i) {
        return executor.deviceIndependentPixelToPixel(i);
    }

    public static float getScalingFactorAsFloat() {
        return executor.getScalingFactorAsFloat();
    }

    /* loaded from: classes.dex */
    static class AdUtilsExecutor {
        private final HashSet<String> requiredActivities = new HashSet<>();
        private boolean hasRequiredActivities = false;

        AdUtilsExecutor() {
            this.requiredActivities.add(AdUtils.REQUIRED_ACTIVITY);
        }

        boolean checkDefinedActivities(Context context) {
            if (this.hasRequiredActivities) {
                return true;
            }
            HashSet hashSet = new HashSet();
            try {
                for (ActivityInfo activityInfo : context.getPackageManager().getPackageArchiveInfo(context.getPackageCodePath(), 1).activities) {
                    hashSet.add(activityInfo.name);
                }
                this.hasRequiredActivities = hashSet.containsAll(this.requiredActivities);
                return this.hasRequiredActivities;
            } catch (Exception e) {
                this.hasRequiredActivities = true;
                return true;
            }
        }

        void setConnectionMetrics(ConnectionInfo connectionInfo, MetricsCollector metricsCollector) {
            if (connectionInfo != null) {
                if (connectionInfo.isWiFi()) {
                    metricsCollector.incrementMetric(Metrics.MetricType.WIFI_PRESENT);
                } else {
                    metricsCollector.setMetricString(Metrics.MetricType.CONNECTION_TYPE, connectionInfo.getConnectionType());
                }
            }
            DeviceInfo deviceInfo = MobileAdsInfoStore.getInstance().getDeviceInfo();
            if (deviceInfo.getCarrier() != null) {
                metricsCollector.setMetricString(Metrics.MetricType.CARRIER_NAME, deviceInfo.getCarrier());
            }
        }

        double getViewportInitialScale(double d) {
            if (AndroidTargetUtils.isAtLeastAndroidAPI(19)) {
                return 1.0d;
            }
            return d;
        }

        double calculateScalingMultiplier(int i, int i2, int i3, int i4) {
            double d = i3 / i;
            double d2 = i4 / i2;
            if ((d2 < d || d == 0.0d) && d2 != 0.0d) {
                d = d2;
            }
            if (d == 0.0d) {
                return 1.0d;
            }
            return d;
        }

        int pixelToDeviceIndependentPixel(int i) {
            return (int) (i / getScalingFactorAsFloat());
        }

        int deviceIndependentPixelToPixel(int i) {
            return (int) (i == -1 ? i : i * getScalingFactorAsFloat());
        }

        float getScalingFactorAsFloat() {
            return MobileAdsInfoStore.getInstance().getDeviceInfo().getScalingFactorAsFloat();
        }
    }
}
