.class Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;
.super Lcom/amazon/device/ads/AAXParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONArrayParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/ads/AAXParameter",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/AAXParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/AAXParameter;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 298
    return-void
.end method


# virtual methods
.method protected bridge synthetic getFromDebugProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;->getFromDebugProperties()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected getFromDebugProperties()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 317
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;->getDebugName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;->parseFromString(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;->parseFromString(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected parseFromString(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 305
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-object v0

    .line 307
    :catch_0
    move-exception v0

    .line 309
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Unable to parse the following value into a JSONArray: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    const/4 v0, 0x0

    goto :goto_0
.end method
