.class Lcom/amazon/device/ads/AdUtils;
.super Ljava/lang/Object;
.source "AdUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;
    }
.end annotation


# static fields
.field public static final REQUIRED_ACTIVITY:Ljava/lang/String; = "com.amazon.device.ads.AdActivity"

.field private static executor:Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AdUtils;->executor:Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateScalingMultiplier(IIII)D
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/amazon/device/ads/AdUtils;->executor:Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->calculateScalingMultiplier(IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method static checkDefinedActivities(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/amazon/device/ads/AdUtils;->executor:Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->checkDefinedActivities(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static deviceIndependentPixelToPixel(I)I
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/amazon/device/ads/AdUtils;->executor:Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->deviceIndependentPixelToPixel(I)I

    move-result v0

    return v0
.end method

.method public static getScalingFactorAsFloat()F
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/amazon/device/ads/AdUtils;->executor:Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->getScalingFactorAsFloat()F

    move-result v0

    return v0
.end method

.method public static getViewportInitialScale(D)D
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lcom/amazon/device/ads/AdUtils;->executor:Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->getViewportInitialScale(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static pixelToDeviceIndependentPixel(I)I
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/amazon/device/ads/AdUtils;->executor:Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->pixelToDeviceIndependentPixel(I)I

    move-result v0

    return v0
.end method

.method static setConnectionMetrics(Lcom/amazon/device/ads/ConnectionInfo;Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/amazon/device/ads/AdUtils;->executor:Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->setConnectionMetrics(Lcom/amazon/device/ads/ConnectionInfo;Lcom/amazon/device/ads/MetricsCollector;)V

    .line 150
    return-void
.end method
