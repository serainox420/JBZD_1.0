.class public Lcom/openx/view/mraid/methods/PlayVideo;
.super Ljava/lang/Object;
.source "PlayVideo.java"


# instance fields
.field jsi:Lcom/openx/view/mraid/BaseJSInterface;

.field webViewBase:Lcom/openx/view/WebViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p3, p0, Lcom/openx/view/mraid/methods/PlayVideo;->webViewBase:Lcom/openx/view/WebViewBase;

    .line 21
    iput-object p2, p0, Lcom/openx/view/mraid/methods/PlayVideo;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    .line 22
    return-void
.end method


# virtual methods
.method public playVideo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/mraid/methods/PlayVideo;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;->setCurrentAd(Lcom/openx/view/WebViewBase;)V

    .line 29
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    :try_start_0
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->playVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
