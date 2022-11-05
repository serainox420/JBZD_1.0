.class Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;
.super Ljava/lang/Object;
.source "AdUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdUtilsExecutor"
.end annotation


# instance fields
.field private hasRequiredActivities:Z

.field private final requiredActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->requiredActivities:Ljava/util/HashSet;

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    .line 213
    iget-object v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->requiredActivities:Ljava/util/HashSet;

    const-string v1, "com.amazon.device.ads.AdActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method


# virtual methods
.method calculateScalingMultiplier(IIII)D
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 299
    int-to-double v0, p3

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 300
    int-to-double v2, p4

    int-to-double v4, p2

    div-double/2addr v2, v4

    .line 307
    cmpg-double v4, v2, v0

    if-ltz v4, :cond_0

    cmpl-double v4, v0, v6

    if-nez v4, :cond_1

    :cond_0
    cmpl-double v4, v2, v6

    if-eqz v4, :cond_1

    move-wide v0, v2

    .line 312
    :cond_1
    cmpl-double v2, v0, v6

    if-nez v2, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_2
    return-wide v0
.end method

.method checkDefinedActivities(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 224
    iget-boolean v1, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    if-eqz v1, :cond_0

    .line 247
    :goto_0
    return v0

    .line 228
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 231
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 234
    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 235
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 237
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->requiredActivities:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    .line 240
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 246
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    goto :goto_0
.end method

.method deviceIndependentPixelToPixel(I)I
    .locals 2

    .prologue
    .line 333
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    int-to-float v0, p1

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->getScalingFactorAsFloat()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method getScalingFactorAsFloat()F
    .locals 1

    .prologue
    .line 341
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getScalingFactorAsFloat()F

    move-result v0

    return v0
.end method

.method getViewportInitialScale(D)D
    .locals 1

    .prologue
    .line 284
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :cond_0
    return-wide p1
.end method

.method pixelToDeviceIndependentPixel(I)I
    .locals 2

    .prologue
    .line 322
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->getScalingFactorAsFloat()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method setConnectionMetrics(Lcom/amazon/device/ads/ConnectionInfo;Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 2

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p1}, Lcom/amazon/device/ads/ConnectionInfo;->isWiFi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    sget-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->WIFI_PRESENT:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 267
    :cond_0
    :goto_0
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 270
    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CARRIER_NAME:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/amazon/device/ads/MetricsCollector;->setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    .line 272
    :cond_1
    return-void

    .line 263
    :cond_2
    sget-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CONNECTION_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ConnectionInfo;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    goto :goto_0
.end method
