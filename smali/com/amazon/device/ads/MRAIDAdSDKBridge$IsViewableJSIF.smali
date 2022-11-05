.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$IsViewableJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IsViewableJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "IsViewable"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    .prologue
    .line 1597
    const-string v0, "IsViewable"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1598
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$IsViewableJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1599
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1604
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1605
    const-string v1, "isViewable"

    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$IsViewableJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 1606
    return-object v0
.end method
