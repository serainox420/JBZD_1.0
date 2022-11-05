.class Lcom/amazon/device/ads/AmazonAdSDKBridge$SDKVersionJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "AmazonAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SDKVersionJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "GetSDKVersion"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;


# direct methods
.method protected constructor <init>(Lcom/amazon/device/ads/AmazonAdSDKBridge;)V
    .locals 1

    .prologue
    .line 313
    const-string v0, "GetSDKVersion"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 314
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge$SDKVersionJSIF;->bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;

    .line 315
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 321
    const-string v1, "sdkVersion"

    iget-object v2, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge$SDKVersionJSIF;->bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;

    invoke-static {v2}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->access$400(Lcom/amazon/device/ads/AmazonAdSDKBridge;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-object v0
.end method
