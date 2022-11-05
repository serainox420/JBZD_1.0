.class public Lcom/openx/core/network/GetNetworkTask;
.super Lcom/openx/core/network/BaseNetworkTask;
.source "GetNetworkTask.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;


# direct methods
.method public constructor <init>(Lcom/openx/core/network/BaseResponseHandler;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 19
    const-string v0, "GetNetworkTask"

    iput-object v0, p0, Lcom/openx/core/network/GetNetworkTask;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private sendDataOnHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 5

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v1

    .line 81
    iget-object v2, p0, Lcom/openx/core/network/GetNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-virtual {v2, v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V

    .line 82
    const-string v2, "GetNetworkTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request error. while sending: exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openx/core/network/GetNetworkTask;->doCustomExecuteFailCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setHTTPClientAdditionalHeaders(Lorg/apache/http/client/methods/HttpGet;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpGet;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method private setHTTPHeaders(Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lorg/apache/http/client/methods/HttpGet;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v1, "User-Agent"

    iget-object v2, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "Accept"

    const-string v2, "application/x-www-form-urlencoded,text/plain,text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->additionalHeader:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/openx/core/network/GetNetworkTask;->setHTTPClientAdditionalHeaders(Lorg/apache/http/client/methods/HttpGet;Ljava/util/HashMap;)V

    .line 55
    return-object v0
.end method


# virtual methods
.method public sendRequest(Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "GetNetworkTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: GET: using DefaultHttpClient & GET: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-direct {v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;-><init>()V

    iput-object v0, p0, Lcom/openx/core/network/GetNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    .line 39
    invoke-virtual {p0}, Lcom/openx/core/network/GetNetworkTask;->setDefaultHTTPProperty()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/core/network/GetNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 40
    invoke-direct {p0, p1}, Lcom/openx/core/network/GetNetworkTask;->setHTTPHeaders(Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/openx/core/network/GetNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, v1, v0}, Lcom/openx/core/network/GetNetworkTask;->sendDataOnHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/openx/core/network/GetNetworkTask;->parseHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/core/network/GetNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    .line 44
    iget-object v0, p0, Lcom/openx/core/network/GetNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    return-object v0
.end method
