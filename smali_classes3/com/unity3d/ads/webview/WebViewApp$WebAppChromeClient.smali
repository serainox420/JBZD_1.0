.class Lcom/unity3d/ads/webview/WebViewApp$WebAppChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/webview/WebViewApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebAppChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/webview/WebViewApp;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/webview/WebViewApp;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/unity3d/ads/webview/WebViewApp$WebAppChromeClient;->this$0:Lcom/unity3d/ads/webview/WebViewApp;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/webview/WebViewApp;Lcom/unity3d/ads/webview/WebViewApp$1;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/unity3d/ads/webview/WebViewApp$WebAppChromeClient;-><init>(Lcom/unity3d/ads/webview/WebViewApp;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 311
    .line 312
    const/4 v1, 0x0

    .line 315
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    .line 327
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavaScript (sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 330
    :cond_1
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    const-string v2, "Could not handle sourceId"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method
