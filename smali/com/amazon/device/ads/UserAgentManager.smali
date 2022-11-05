.class Lcom/amazon/device/ads/UserAgentManager;
.super Ljava/lang/Object;
.source "UserAgentManager.java"


# instance fields
.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private userAgentStringWithSDKVersion:Ljava/lang/String;

.field private userAgentStringWithoutSDKVersion:Ljava/lang/String;

.field private final webViewFactory:Lcom/amazon/device/ads/WebViewFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/WebViewFactory;->getInstance()Lcom/amazon/device/ads/WebViewFactory;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/UserAgentManager;-><init>(Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/WebViewFactory;)V

    .line 22
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/WebViewFactory;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/device/ads/UserAgentManager;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 27
    iput-object p2, p0, Lcom/amazon/device/ads/UserAgentManager;->webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/UserAgentManager;)Lcom/amazon/device/ads/WebViewFactory;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/amazon/device/ads/UserAgentManager;->webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

    return-object v0
.end method


# virtual methods
.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/device/ads/UserAgentManager;->userAgentStringWithSDKVersion:Ljava/lang/String;

    return-object v0
.end method

.method public populateUserAgentString(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/device/ads/UserAgentManager;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/UserAgentManager$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/UserAgentManager$1;-><init>(Lcom/amazon/device/ads/UserAgentManager;Landroid/content/Context;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 73
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/UserAgentManager;->userAgentStringWithoutSDKVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/UserAgentManager;->userAgentStringWithSDKVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/amazon/device/ads/UserAgentManager;->userAgentStringWithoutSDKVersion:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/Version;->getUserAgentSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/UserAgentManager;->userAgentStringWithSDKVersion:Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method
