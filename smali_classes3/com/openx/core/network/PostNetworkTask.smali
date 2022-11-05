.class public Lcom/openx/core/network/PostNetworkTask;
.super Lcom/openx/core/network/BaseNetworkTask;
.source "PostNetworkTask.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;


# direct methods
.method public constructor <init>(Lcom/openx/core/network/BaseResponseHandler;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 21
    const-string v0, "PostNetworkTask"

    iput-object v0, p0, Lcom/openx/core/network/PostNetworkTask;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private postDataOnHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;
    .locals 5

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v1

    .line 84
    iget-object v2, p0, Lcom/openx/core/network/PostNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-virtual {v2, v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V

    .line 85
    const-string v2, "PostNetworkTask"

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

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openx/core/network/PostNetworkTask;->doCustomExecuteFailCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setHTTPPostHeaders(Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v1, "User-Agent"

    iget-object v2, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "Accept"

    const-string v2, "application/x-www-form-urlencoded,text/plain,text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v0
.end method

.method private setHttpPostBody(Lorg/apache/http/client/methods/HttpPost;Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    iget-object v1, p2, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->queryParams:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "PostNetworkTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url: POST: using DefaultHttpClient & POST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->queryParams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 70
    return-void
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
    .line 39
    const-string v0, "PostNetworkTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: POST: using DefaultHttpClient & POST: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-direct {v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;-><init>()V

    iput-object v0, p0, Lcom/openx/core/network/PostNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    .line 42
    invoke-virtual {p0}, Lcom/openx/core/network/PostNetworkTask;->setDefaultHTTPProperty()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/core/network/PostNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 43
    invoke-direct {p0, p1}, Lcom/openx/core/network/PostNetworkTask;->setHTTPPostHeaders(Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 44
    invoke-direct {p0, v0, p1}, Lcom/openx/core/network/PostNetworkTask;->setHttpPostBody(Lorg/apache/http/client/methods/HttpPost;Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)V

    .line 45
    iget-object v1, p0, Lcom/openx/core/network/PostNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, v1, v0}, Lcom/openx/core/network/PostNetworkTask;->postDataOnHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/openx/core/network/PostNetworkTask;->parseHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/core/network/PostNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    .line 48
    iget-object v0, p0, Lcom/openx/core/network/PostNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    return-object v0
.end method
