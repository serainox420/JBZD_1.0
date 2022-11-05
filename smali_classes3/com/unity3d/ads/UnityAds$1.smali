.class final Lcom/unity3d/ads/UnityAds$1;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/unity3d/ads/UnityAds$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/unity3d/ads/UnityAds$1;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 292
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 294
    :try_start_0
    const-string v0, "requestedOrientation"

    iget-object v2, p0, Lcom/unity3d/ads/UnityAds$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/ads/UnityAds$1;->val$placementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unity3d/ads/adunit/AdUnitOpen;->open(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/unity3d/ads/UnityAds$1;->val$placementId:Ljava/lang/String;

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v2, "Webapp timeout, shutting down Unity Ads"

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/UnityAds;->access$000(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->reset()V

    .line 303
    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->cancel()V

    .line 304
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->stopAll()V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    :cond_0
    :goto_1
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    const-string v2, "JSON error while constructing show options"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 307
    :catch_1
    move-exception v0

    .line 308
    const-string v1, "Could not get callback method"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 309
    iget-object v0, p0, Lcom/unity3d/ads/UnityAds$1;->val$placementId:Ljava/lang/String;

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v2, "Could not get com.unity3d.ads.properties.showCallback method"

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/UnityAds;->access$000(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_1
.end method
