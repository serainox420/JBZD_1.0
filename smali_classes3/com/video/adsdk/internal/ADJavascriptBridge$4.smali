.class Lcom/video/adsdk/internal/ADJavascriptBridge$4;
.super Landroid/webkit/WebChromeClient;
.source "ADJavascriptBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADJavascriptBridge;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADJavascriptBridge;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$4;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    .line 218
    const-string v0, ""

    .line 219
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v0

    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    invoke-virtual {v0, v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const-string v0, "js"

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_0
    const-string v0, "js ERROR"

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$4;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;

    .line 209
    invoke-interface {v0, p3, p4}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onShowDialog(Ljava/lang/String;Landroid/webkit/JsResult;)V

    goto :goto_0

    .line 212
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
