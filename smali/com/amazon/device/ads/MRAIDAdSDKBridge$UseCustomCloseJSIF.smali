.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UseCustomCloseJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "UseCustomClose"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    .prologue
    .line 1579
    const-string v0, "UseCustomClose"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1580
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1581
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    const-string v1, "useCustomClose"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->setUseCustomClose(Z)V

    .line 1587
    const/4 v0, 0x0

    return-object v0
.end method
