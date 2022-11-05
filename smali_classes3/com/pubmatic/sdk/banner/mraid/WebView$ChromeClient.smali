.class Lcom/pubmatic/sdk/banner/mraid/WebView$ChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/mraid/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/banner/mraid/WebView;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ChromeClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/banner/mraid/WebView;Lcom/pubmatic/sdk/banner/mraid/WebView$1;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/mraid/WebView$ChromeClient;-><init>(Lcom/pubmatic/sdk/banner/mraid/WebView;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PMSDK WebView : Console Log : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 207
    const/4 v0, 0x1

    return v0
.end method
