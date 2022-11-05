.class Lcom/amazon/device/ads/AdUrlLoader;
.super Ljava/lang/Object;
.source "AdUrlLoader.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private final adWebViewClient:Lcom/amazon/device/ads/AdWebViewClient;

.field private final deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

.field private final webUtils:Lcom/amazon/device/ads/WebUtils2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/amazon/device/ads/AdUrlLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdUrlLoader;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/AdWebViewClient;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DeviceInfo;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/AdUrlLoader;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 38
    iput-object p2, p0, Lcom/amazon/device/ads/AdUrlLoader;->adWebViewClient:Lcom/amazon/device/ads/AdWebViewClient;

    .line 39
    iput-object p3, p0, Lcom/amazon/device/ads/AdUrlLoader;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    .line 40
    iput-object p4, p0, Lcom/amazon/device/ads/AdUrlLoader;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 41
    iput-object p5, p0, Lcom/amazon/device/ads/AdUrlLoader;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    .line 42
    sget-object v0, Lcom/amazon/device/ads/AdUrlLoader;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p6, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdUrlLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 43
    iput-object p7, p0, Lcom/amazon/device/ads/AdUrlLoader;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AdUrlLoader;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/AdUrlLoader;->loadUrlInThread(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AdUrlLoader;)Lcom/amazon/device/ads/AdControlAccessor;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amazon/device/ads/AdUrlLoader;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    return-object v0
.end method

.method private loadUrlInThread(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 88
    iget-object v0, p0, Lcom/amazon/device/ads/AdUrlLoader;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v1

    .line 89
    sget-object v0, Lcom/amazon/device/ads/AdUrlLoader;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/WebRequest;->setExternalLogTag(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v5}, Lcom/amazon/device/ads/WebRequest;->enableLogUrl(Z)V

    .line 91
    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/WebRequest;->setUrlString(Ljava/lang/String;)V

    .line 92
    const-string v0, "User-Agent"

    iget-object v2, p0, Lcom/amazon/device/ads/AdUrlLoader;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    .line 96
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResponseReader;->readAsString()Ljava/lang/String;

    move-result-object v3

    .line 105
    if-eqz v3, :cond_1

    .line 107
    iget-object v6, p0, Lcom/amazon/device/ads/AdUrlLoader;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v0, Lcom/amazon/device/ads/AdUrlLoader$2;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/AdUrlLoader$2;-><init>(Lcom/amazon/device/ads/AdUrlLoader;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v6, v0, v1, v2}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 121
    :cond_0
    :goto_1
    return-void

    .line 98
    :catch_0
    move-exception v1

    .line 100
    iget-object v2, p0, Lcom/amazon/device/ads/AdUrlLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Could not load URL (%s) into AdContainer: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdUrlLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Could not load URL (%s) into AdContainer."

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public getAdWebViewClient()Lcom/amazon/device/ads/AdWebViewClient;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/device/ads/AdUrlLoader;->adWebViewClient:Lcom/amazon/device/ads/AdWebViewClient;

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazon/device/ads/AdUrlLoader;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebUtils2;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdUrlLoader;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/AdUrlLoader$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/device/ads/AdUrlLoader$1;-><init>(Lcom/amazon/device/ads/AdUrlLoader;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdUrlLoader;->openUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amazon/device/ads/AdUrlLoader;->adWebViewClient:Lcom/amazon/device/ads/AdWebViewClient;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdWebViewClient;->openUrl(Ljava/lang/String;)Z

    .line 130
    return-void
.end method

.method public putUrlExecutorInAdWebViewClient(Ljava/lang/String;Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/device/ads/AdUrlLoader;->adWebViewClient:Lcom/amazon/device/ads/AdWebViewClient;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdWebViewClient;->putUrlExecutor(Ljava/lang/String;Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;)V

    .line 49
    return-void
.end method

.method public setAdWebViewClientListener(Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/device/ads/AdUrlLoader;->adWebViewClient:Lcom/amazon/device/ads/AdWebViewClient;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdWebViewClient;->setListener(Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;)V

    .line 54
    return-void
.end method
