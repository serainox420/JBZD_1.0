.class Lcom/amazon/device/ads/AmazonAdSDKBridge$OverrideBackButtonJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "AmazonAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverrideBackButtonJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "OverrideBackButton"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonAdSDKBridge;)V
    .locals 1

    .prologue
    .line 277
    const-string v0, "OverrideBackButton"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge$OverrideBackButtonJSIF;->bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;

    .line 279
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge$OverrideBackButtonJSIF;->bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;

    const-string v1, "override"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->access$200(Lcom/amazon/device/ads/AmazonAdSDKBridge;Z)V

    .line 285
    const/4 v0, 0x0

    return-object v0
.end method
