.class Lcom/apprupt/sdk/CvDevicePayloadJS$1;
.super Landroid/webkit/WebViewClient;
.source "CvDevicePayloadJS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvDevicePayloadJS;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvDevicePayloadJS;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDevicePayloadJS;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$1;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$1;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v0}, Lcom/apprupt/sdk/CvDevicePayloadJS;->a(Lcom/apprupt/sdk/CvDevicePayloadJS;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "PAGE LOADED"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$1;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v0}, Lcom/apprupt/sdk/CvDevicePayloadJS;->a(Lcom/apprupt/sdk/CvDevicePayloadJS;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PJS ERR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$1;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvDevicePayloadJS;->onPayload(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5

    .prologue
    .line 67
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$1;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v0}, Lcom/apprupt/sdk/CvDevicePayloadJS;->a(Lcom/apprupt/sdk/CvDevicePayloadJS;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PJS ERR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$1;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvDevicePayloadJS;->onPayload(Ljava/lang/String;)V

    .line 69
    return-void
.end method
