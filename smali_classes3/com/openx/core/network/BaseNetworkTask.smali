.class public Lcom/openx/core/network/BaseNetworkTask;
.super Landroid/os/AsyncTask;
.source "BaseNetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;,
        Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;",
        "Ljava/lang/Integer;",
        "Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;",
        ">;"
    }
.end annotation


# static fields
.field protected static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field protected static final ACCEPT_HEADER:Ljava/lang/String; = "Accept"

.field protected static final ACCEPT_HEADER_VALUE:Ljava/lang/String; = "application/x-www-form-urlencoded,text/plain,text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

.field protected static final ACCEPT_LANGUAGE_HEADER:Ljava/lang/String; = "Accept-Language"

.field private static final ENCODING_STR:Ljava/lang/String; = "utf-8"

.field private static final NEW_LINE:Ljava/lang/String;

.field protected static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private con:Ljava/net/HttpURLConnection;

.field protected httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private responseHandler:Lcom/openx/core/network/BaseResponseHandler;

.field private result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/openx/core/network/BaseNetworkTask;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/openx/core/network/BaseResponseHandler;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    const-string v0, "BaseNetworkTask"

    iput-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->TAG:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    .line 56
    iput-object v1, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 93
    iput-object p1, p0, Lcom/openx/core/network/BaseNetworkTask;->responseHandler:Lcom/openx/core/network/BaseResponseHandler;

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 98
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    :cond_0
    return-void
.end method

.method private parseHttpURLResponse(ILjava/io/BufferedInputStream;Ljava/net/HttpURLConnection;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    iput p1, v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->statusCode:I

    .line 191
    invoke-virtual {p0, p1, p3}, Lcom/openx/core/network/BaseNetworkTask;->customParser(ILjava/net/HttpURLConnection;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    .line 193
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    return-object v0
.end method

.method private sendDataonHttpURLConnection(Ljava/net/HttpURLConnection;)Ljava/io/BufferedInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 183
    return-object v0
.end method

.method private setHttpURLConnectionProperty(Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Ljava/net/HttpURLConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1388

    const/4 v4, 0x1

    .line 198
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 200
    const-string v1, "BaseNetworkTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending record data on urlconnection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-boolean v1, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->followRedirect:Z

    if-eqz v1, :cond_0

    .line 204
    invoke-static {v4}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 206
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 213
    :goto_0
    const-string v1, "User-Agent"

    iget-object v2, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "Accept"

    const-string v2, "application/x-www-form-urlencoded,text/plain,text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->additionalHeader:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/openx/core/network/BaseNetworkTask;->setURLConnectionAdditionalHeaders(Ljava/net/HttpURLConnection;Ljava/util/HashMap;)V

    .line 220
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 221
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 222
    return-object v0

    .line 210
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto :goto_0
.end method

.method private setURLConnectionAdditionalHeaders(Ljava/net/HttpURLConnection;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 289
    if-eqz p2, :cond_0

    .line 291
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

    .line 293
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method


# virtual methods
.method public customParser(ILjava/net/HttpURLConnection;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    return-object v0
.end method

.method public doCustomExecuteFailCall(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public varargs doCustomValidation([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-direct {v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;-><init>()V

    iput-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    .line 112
    invoke-virtual {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;->validParams([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 119
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/openx/core/network/BaseNetworkTask;->sendRequest(Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 143
    const-string v0, "BaseNetworkTask"

    const-string v1, "Request finished. disconneting con"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 149
    const-string v0, "BaseNetworkTask"

    const-string v1, "Request finished. httpclient shutting down"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    if-eqz v0, :cond_2

    .line 160
    const-string v0, "BaseNetworkTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkTask\'s doinbackGround result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    iget-object v2, v2, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-virtual {v2}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 125
    :try_start_1
    iget-object v1, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-virtual {v1, v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 143
    const-string v0, "BaseNetworkTask"

    const-string v1, "Request finished. disconneting con"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 149
    const-string v0, "BaseNetworkTask"

    const-string v1, "Request finished. httpclient shutting down"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 129
    :try_start_2
    iget-object v1, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-virtual {v1, v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 143
    const-string v0, "BaseNetworkTask"

    const-string v1, "Request finished. disconneting con"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 149
    const-string v0, "BaseNetworkTask"

    const-string v1, "Request finished. httpclient shutting down"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :catch_2
    move-exception v0

    .line 135
    :try_start_3
    iget-object v1, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-virtual {v1, v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_5

    .line 142
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 143
    const-string v0, "BaseNetworkTask"

    const-string v1, "Request finished. disconneting con"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 149
    const-string v0, "BaseNetworkTask"

    const-string v1, "Request finished. httpclient shutting down"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_6

    .line 142
    iget-object v1, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 143
    const-string v1, "BaseNetworkTask"

    const-string v2, "Request finished. disconneting con"

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_6
    iget-object v1, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_7

    .line 148
    iget-object v1, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 149
    const-string v1, "BaseNetworkTask"

    const-string v2, "Request finished. httpclient shutting down"

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    throw v0

    .line 155
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-virtual {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;->doInBackground([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 360
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 363
    const-string v0, "BaseNetworkTask"

    const-string v1, "Request cancelled. disconnecting connection"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 369
    const-string v0, "BaseNetworkTask"

    const-string v1, "Request cancelled. httpclient shutting down"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_1
    return-void
.end method

.method protected onPostExecute(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
    .locals 3

    .prologue
    .line 321
    if-eqz p1, :cond_0

    const-string v0, "BaseNetworkTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: NetworkTask\'s postExecute result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->responseHandler:Lcom/openx/core/network/BaseResponseHandler;

    if-eqz v0, :cond_4

    .line 325
    if-eqz p1, :cond_1

    .line 327
    instance-of v0, p1, Lcom/openx/core/network/exception/BaseExceptionProvider;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->responseHandler:Lcom/openx/core/network/BaseResponseHandler;

    check-cast v0, Lcom/openx/core/network/ResponseHandler;

    invoke-virtual {p1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/core/network/ResponseHandler;->processError(Ljava/lang/String;)V

    .line 353
    :cond_1
    :goto_0
    return-void

    .line 334
    :cond_2
    iget-object v0, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    .line 336
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->responseHandler:Lcom/openx/core/network/BaseResponseHandler;

    check-cast v0, Lcom/openx/core/network/ResponseHandler;

    const-string v1, "Invalid VAST Response: less than 100 characters."

    invoke-interface {v0, v1}, Lcom/openx/core/network/ResponseHandler;->processError(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->responseHandler:Lcom/openx/core/network/BaseResponseHandler;

    check-cast v0, Lcom/openx/core/network/ResponseHandler;

    invoke-interface {v0, p1}, Lcom/openx/core/network/ResponseHandler;->processResponse(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V

    goto :goto_0

    .line 349
    :cond_4
    const-string v0, "BaseNetworkTask"

    const-string v1, "No responsehandler on: may be a tracking event"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-virtual {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;->onPostExecute(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected parseHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc8

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    if-eqz p1, :cond_3

    .line 254
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 255
    if-ne v1, v2, :cond_2

    .line 256
    const-string v2, "BaseNetworkTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request finished. Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 260
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/openx/core/network/BaseNetworkTask;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->response:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    return-object v0

    .line 264
    :cond_2
    if-eq v1, v2, :cond_1

    .line 265
    const-string v0, "BaseNetworkTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request error. in parsing : Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdServer returned HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_3
    const-string v0, "BaseNetworkTask"

    const-string v1, "Response is null"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No Response from Ad server. "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

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
    .line 168
    const-string v0, "BaseNetworkTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: URLCONNECTION: using HttpUrlConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    invoke-direct {v0}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;-><init>()V

    iput-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    .line 172
    invoke-direct {p0, p1}, Lcom/openx/core/network/BaseNetworkTask;->setHttpURLConnectionProperty(Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    .line 173
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/openx/core/network/BaseNetworkTask;->sendDataonHttpURLConnection(Ljava/net/HttpURLConnection;)Ljava/io/BufferedInputStream;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 175
    iget-object v2, p0, Lcom/openx/core/network/BaseNetworkTask;->con:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v1, v0, v2}, Lcom/openx/core/network/BaseNetworkTask;->parseHttpURLResponse(ILjava/io/BufferedInputStream;Ljava/net/HttpURLConnection;)Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    .line 177
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    return-object v0
.end method

.method public setDefaultHTTPProperty()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 4

    .prologue
    const/16 v2, 0xbb8

    .line 231
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 232
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 233
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 234
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 235
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 236
    const-string v2, "http.protocol.cookie-policy"

    const-string v3, "compatibility"

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 237
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v2, v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 239
    return-object v2
.end method

.method public varargs validParams([Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;)Z
    .locals 3

    .prologue
    .line 302
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/openx/core/network/BaseNetworkTask;->result:Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid Params"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;->setException(Ljava/lang/Exception;)V

    .line 306
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
