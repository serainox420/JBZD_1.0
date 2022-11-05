.class Lcom/apprupt/sdk/CvDevicePayloadJS$ChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "CvDevicePayloadJS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvDevicePayloadJS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChromeClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvDevicePayloadJS;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDevicePayloadJS;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$ChromeClient;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 27
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v1, "PJS MSG ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    sget-object v2, Landroid/webkit/ConsoleMessage$MessageLevel;->DEBUG:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-ne v1, v2, :cond_0

    .line 37
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$ChromeClient;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v1}, Lcom/apprupt/sdk/CvDevicePayloadJS;->a(Lcom/apprupt/sdk/CvDevicePayloadJS;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 49
    :goto_0
    return v4

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    sget-object v2, Landroid/webkit/ConsoleMessage$MessageLevel;->LOG:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    sget-object v2, Landroid/webkit/ConsoleMessage$MessageLevel;->TIP:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-ne v1, v2, :cond_2

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$ChromeClient;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v1}, Lcom/apprupt/sdk/CvDevicePayloadJS;->a(Lcom/apprupt/sdk/CvDevicePayloadJS;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$ChromeClient;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v1}, Lcom/apprupt/sdk/CvDevicePayloadJS;->a(Lcom/apprupt/sdk/CvDevicePayloadJS;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Cannot handle console message"

    aput-object v3, v2, v5

    invoke-interface {v1, v0, v2}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    sget-object v2, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-ne v1, v2, :cond_3

    .line 41
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$ChromeClient;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v1}, Lcom/apprupt/sdk/CvDevicePayloadJS;->a(Lcom/apprupt/sdk/CvDevicePayloadJS;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$ChromeClient;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvDevicePayloadJS;->onPayload(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_3
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$ChromeClient;->a:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v1}, Lcom/apprupt/sdk/CvDevicePayloadJS;->a(Lcom/apprupt/sdk/CvDevicePayloadJS;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
