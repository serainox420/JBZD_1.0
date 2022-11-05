package com.amazon.device.ads;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdUtils.java */
/* loaded from: classes.dex */
public class AdUtils2 {
    private final AdUtilsStatic adUtilsAdapter = new AdUtilsStatic();

    public boolean checkDefinedActivities(Context context) {
        return this.adUtilsAdapter.checkDefinedActivities(context);
    }

    public void setConnectionMetrics(ConnectionInfo connectionInfo, MetricsCollector metricsCollector) {
        this.adUtilsAdapter.setConnectionMetrics(connectionInfo, metricsCollector);
    }

    public double getViewportInitialScale(double d) {
        return this.adUtilsAdapter.getViewportInitialScale(d);
    }

    public double calculateScalingMultiplier(int i, int i2, int i3, int i4) {
        return this.adUtilsAdapter.calculateScalingMultiplier(i, i2, i3, i4);
    }

    public int pixelToDeviceIndependentPixel(int i) {
        return this.adUtilsAdapter.pixelToDeviceIndependentPixel(i);
    }

    public int deviceIndependentPixelToPixel(int i) {
        return this.adUtilsAdapter.deviceIndependentPixelToPixel(i);
    }

    public float getScalingFactorAsFloat() {
        return this.adUtilsAdapter.getScalingFactorAsFloat();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdUtils.java */
    /* loaded from: classes.dex */
    public static class AdUtilsStatic {
        private AdUtilsStatic() {
        }

        boolean checkDefinedActivities(Context context) {
            return AdUtils.checkDefinedActivities(context);
        }

        void setConnectionMetrics(ConnectionInfo connectionInfo, MetricsCollector metricsCollector) {
            AdUtils.setConnectionMetrics(connectionInfo, metricsCollector);
        }

        double getViewportInitialScale(double d) {
            return AdUtils.getViewportInitialScale(d);
        }

        double calculateScalingMultiplier(int i, int i2, int i3, int i4) {
            return AdUtils.calculateScalingMultiplier(i, i2, i3, i4);
        }

        int pixelToDeviceIndependentPixel(int i) {
            return AdUtils.pixelToDeviceIndependentPixel(i);
        }

        int deviceIndependentPixelToPixel(int i) {
            return AdUtils.deviceIndependentPixelToPixel(i);
        }

        float getScalingFactorAsFloat() {
            return AdUtils.getScalingFactorAsFloat();
        }
    }
}
