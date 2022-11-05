.class Lcom/amazon/device/ads/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private final packageInfoUrlJSON:Lorg/json/JSONObject;

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private final packageName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    .line 75
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/ads/AppInfo;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/MetricsCollector;Lorg/json/JSONObject;)V

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/MetricsCollector;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p3, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    .line 37
    const-string v1, "pn"

    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 48
    const-string v2, "lbl"

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {p3, v2, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 60
    :goto_2
    const-string v3, "vn"

    invoke-static {p3, v3, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-eqz v2, :cond_0

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    const-string v1, "v"

    invoke-static {p3, v1, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :goto_3
    return-void

    :cond_1
    move-object v1, v0

    .line 48
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 52
    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->APP_INFO_LABEL_INDEX_OUT_OF_BOUNDS:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p2, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 59
    goto :goto_2

    .line 65
    :catch_1
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public getPackageInfoJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPackageInfoJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method
