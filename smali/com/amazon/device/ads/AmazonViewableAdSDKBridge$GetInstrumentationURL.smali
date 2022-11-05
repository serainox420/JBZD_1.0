.class Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$GetInstrumentationURL;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "AmazonViewableAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetInstrumentationURL"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "GetInstrumentationURL"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V
    .locals 1

    .prologue
    .line 293
    const-string v0, "GetInstrumentationURL"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 294
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$GetInstrumentationURL;->bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    .line 295
    return-void
.end method


# virtual methods
.method protected execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 300
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 301
    const-string v1, "instrumentationPixelUrl"

    iget-object v2, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$GetInstrumentationURL;->bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    invoke-static {v2}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->access$200(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-object v0
.end method
