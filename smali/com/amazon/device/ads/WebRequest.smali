.class abstract Lcom/amazon/device/ads/WebRequest;
.super Ljava/lang/Object;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;,
        Lcom/amazon/device/ads/WebRequest$QueryStringParameters;,
        Lcom/amazon/device/ads/WebRequest$WebRequestFactory;,
        Lcom/amazon/device/ads/WebRequest$WebRequestStatus;,
        Lcom/amazon/device/ads/WebRequest$WebRequestException;,
        Lcom/amazon/device/ads/WebRequest$WebResponse;,
        Lcom/amazon/device/ads/WebRequest$HttpMethod;
    }
.end annotation


# static fields
.field private static final CHARSET_KEY:Ljava/lang/String; = "charset"

.field public static final CHARSET_UTF_16:Ljava/lang/String; = "UTF-16"

.field public static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final CONTENT_TYPE_CSS:Ljava/lang/String; = "text/css"

.field public static final CONTENT_TYPE_HTML:Ljava/lang/String; = "text/html"

.field public static final CONTENT_TYPE_JAVASCRIPT:Ljava/lang/String; = "application/javascript"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field public static final CONTENT_TYPE_PLAIN_TEXT:Ljava/lang/String; = "text/plain"

.field public static final DEFAULT_PORT:I = -0x1

.field public static final DEFAULT_TIMEOUT:I = 0x4e20

.field private static final HEADER_ACCEPT_KEY:Ljava/lang/String; = "Accept"

.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field acceptContentType:Ljava/lang/String;

.field charset:Ljava/lang/String;

.field contentType:Ljava/lang/String;

.field private disconnectEnabled:Z

.field protected final headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpMethod:Lcom/amazon/device/ads/WebRequest$HttpMethod;

.field logRequestBodyEnabled:Z

.field logResponseEnabled:Z

.field logSessionIdEnabled:Z

.field private logTag:Ljava/lang/String;

.field protected logUrlEnabled:Z

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

.field private nonSecureHost:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field protected postParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

.field requestBody:Ljava/lang/String;

.field protected secure:Z

.field private secureHost:Ljava/lang/String;

.field protected serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

.field private timeout:I

.field private urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/amazon/device/ads/WebRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/WebRequest;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->requestBody:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->acceptContentType:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->secureHost:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->nonSecureHost:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->path:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/device/ads/WebRequest;->port:I

    .line 64
    sget-object v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;->GET:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->httpMethod:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    .line 65
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/amazon/device/ads/WebRequest;->timeout:I

    .line 72
    iput-boolean v2, p0, Lcom/amazon/device/ads/WebRequest;->logRequestBodyEnabled:Z

    .line 73
    iput-boolean v2, p0, Lcom/amazon/device/ads/WebRequest;->logResponseEnabled:Z

    .line 74
    iput-boolean v2, p0, Lcom/amazon/device/ads/WebRequest;->logUrlEnabled:Z

    .line 75
    iput-boolean v2, p0, Lcom/amazon/device/ads/WebRequest;->logSessionIdEnabled:Z

    .line 77
    iput-boolean v2, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    .line 78
    sget-object v0, Lcom/amazon/device/ads/WebRequest;->LOGTAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 89
    new-instance v0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-direct {v0}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->headers:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    .line 92
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "tlsEnabled"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    iput-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->disconnectEnabled:Z

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/WebRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazon/device/ads/WebRequest;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/WebRequest;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->disconnectEnabled:Z

    return v0
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected appendQuery(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->append(Ljava/lang/StringBuilder;)V

    .line 761
    return-void
.end method

.method protected abstract closeConnection()V
.end method

.method public convertToJSONPostRequest()V
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;->POST:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/WebRequest;->setHttpMethod(Lcom/amazon/device/ads/WebRequest$HttpMethod;)V

    .line 106
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=UTF-8"

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method protected createURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/WebRequest;->createURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/WebRequest;->createURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method protected createURI(Ljava/net/URL;)Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 745
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method protected createURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 750
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createUri()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 735
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUrlString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method protected abstract doHttpNetworkCall(Ljava/net/URL;)Lcom/amazon/device/ads/WebRequest$WebResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation
.end method

.method public enableLog(Z)V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/WebRequest;->enableLogUrl(Z)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/WebRequest;->enableLogRequestBody(Z)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/WebRequest;->enableLogResponse(Z)V

    .line 210
    return-void
.end method

.method public enableLogRequestBody(Z)V
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->logRequestBodyEnabled:Z

    .line 184
    return-void
.end method

.method public enableLogResponse(Z)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->logResponseEnabled:Z

    .line 192
    return-void
.end method

.method public enableLogSessionID(Z)V
    .locals 0

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->logSessionIdEnabled:Z

    .line 200
    return-void
.end method

.method public enableLogUrl(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->logUrlEnabled:Z

    .line 176
    return-void
.end method

.method public getAcceptContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->acceptContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectEnabled()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->disconnectEnabled:Z

    return v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name must not be null or empty string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUseSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->secureHost:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->nonSecureHost:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHttpMethod()Lcom/amazon/device/ads/WebRequest$HttpMethod;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->httpMethod:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    return-object v0
.end method

.method protected getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/amazon/device/ads/WebRequest;->port:I

    return v0
.end method

.method public getPostParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name must not be null or empty string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBody()Ljava/lang/String;
    .locals 5

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getRequestBodyString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getRequestBodyString()Ljava/lang/String;

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    const/4 v0, 0x0

    goto :goto_0

    .line 531
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 534
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 536
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestBodyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->requestBody:Ljava/lang/String;

    return-object v0
.end method

.method protected getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUseSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const-string v0, "https"

    .line 775
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http"

    goto :goto_0
.end method

.method protected abstract getSubLogTag()Ljava/lang/String;
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/amazon/device/ads/WebRequest;->timeout:I

    return v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 790
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    .line 805
    :goto_0
    return-object v0

    .line 795
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 796
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 800
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/WebRequest;->appendQuery(Ljava/lang/StringBuilder;)V

    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public getUseSecure()Z
    .locals 3

    .prologue
    .line 462
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    const-string v1, "debug.useSecure"

    iget-boolean v2, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected logUrl(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->logUrlEnabled:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getHttpMethod()Lcom/amazon/device/ads/WebRequest$HttpMethod;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :cond_0
    return-void
.end method

.method public makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 119
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "The network request should not be performed on the main thread."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->setContentTypeHeaders()V

    .line 125
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 129
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/WebRequest;->createURL(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/WebRequest;->writeMetricStart(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 141
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/WebRequest;->doHttpNetworkCall(Ljava/net/URL;)Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_1
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/WebRequest;->writeMetricStop(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 151
    iget-boolean v1, p0, Lcom/amazon/device/ads/WebRequest;->logResponseEnabled:Z

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Response: %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatus()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_1
    return-object v0

    .line 131
    :catch_0
    move-exception v1

    .line 133
    iget-object v2, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Problem with URI syntax: %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    new-instance v2, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v3, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->MALFORMED_URL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not construct URL from String "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 143
    :catch_1
    move-exception v0

    .line 145
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/WebRequest;->writeMetricStop(Lcom/amazon/device/ads/Metrics$MetricType;)V

    throw v0
.end method

.method public putHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 330
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name must not be null or empty string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-void
.end method

.method public putPostParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 292
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name must not be null or empty string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    if-nez p2, :cond_1

    .line 298
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUnencoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putUrlEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public setAcceptContentType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->acceptContentType:Ljava/lang/String;

    .line 546
    return-void
.end method

.method public setAdditionalQueryParamsString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->setRawAppendage(Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    .line 563
    return-void
.end method

.method protected setContentTypeHeaders()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->acceptContentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 687
    const-string v0, "Accept"

    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    .line 692
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    :cond_1
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_2
    return-void
.end method

.method public setDisconnectEnabled(Z)V
    .locals 0

    .prologue
    .line 668
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->disconnectEnabled:Z

    .line 669
    return-void
.end method

.method public setExternalLogTag(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 642
    if-nez p1, :cond_0

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/WebRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getSubLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    .line 650
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    .line 651
    return-void

    .line 648
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/WebRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getSubLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 377
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->secureHost:Ljava/lang/String;

    .line 382
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->nonSecureHost:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setHttpMethod(Lcom/amazon/device/ads/WebRequest$HttpMethod;)V
    .locals 2

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The httpMethod must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->httpMethod:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    .line 358
    return-void
.end method

.method public setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    .line 616
    return-void
.end method

.method public setNonSecureHost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 408
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->nonSecureHost:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x2f

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->path:Ljava/lang/String;

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPort(I)V
    .locals 0

    .prologue
    .line 428
    iput p1, p0, Lcom/amazon/device/ads/WebRequest;->port:I

    .line 429
    return-void
.end method

.method public setQueryStringParameters(Lcom/amazon/device/ads/WebRequest$QueryStringParameters;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    .line 266
    return-void
.end method

.method public setRequestBodyString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->requestBody:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public setSecureHost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 393
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->secureHost:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 625
    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .prologue
    .line 605
    iput p1, p0, Lcom/amazon/device/ads/WebRequest;->timeout:I

    .line 606
    return-void
.end method

.method public setUrlString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 483
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUseSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const-string v0, "http"

    const-string v1, "https"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 487
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public setUseSecure(Z)V
    .locals 0

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    .line 471
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeMetricStart(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 1

    .prologue
    .line 706
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 710
    :cond_0
    return-void
.end method

.method protected writeMetricStop(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 1

    .prologue
    .line 718
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 722
    :cond_0
    return-void
.end method
