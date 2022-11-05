.class Lcom/amazon/device/ads/AmazonAdSDKBridge$OpenInExternalBrowserJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "AmazonAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenInExternalBrowserJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "OpenInExternalBrowser"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonAdSDKBridge;)V
    .locals 1

    .prologue
    .line 295
    const-string v0, "OpenInExternalBrowser"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 296
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge$OpenInExternalBrowserJSIF;->bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;

    .line 297
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 302
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge$OpenInExternalBrowserJSIF;->bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;

    const-string v1, "url"

    invoke-static {p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->access$300(Lcom/amazon/device/ads/AmazonAdSDKBridge;Ljava/lang/String;)V

    .line 303
    return-object v2
.end method
