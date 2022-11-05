.class public Lcom/pubmatic/sdk/common/network/HttpWorker;
.super Ljava/lang/Object;
.source "HttpWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/network/HttpWorker$HttpRedirectListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIsCancelled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "HttpWorker"

    sput-object v0, Lcom/pubmatic/sdk/common/network/HttpWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/network/HttpWorker;->mIsCancelled:Z

    .line 24
    return-void
.end method

.method private isCancelled()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/network/HttpWorker;->mIsCancelled:Z

    return v0
.end method

.method private setAdHeaders(Lcom/pubmatic/sdk/common/network/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 38
    iget-object v0, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentTypeHeader:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 39
    const-string v0, "Content-Type"

    iget-object v1, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentTypeHeader:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_2
    iget-object v0, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentLength:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 45
    const-string v0, "Content-Length"

    iget-object v1, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentLength:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_3
    iget-object v0, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentMd5:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 51
    const-string v0, "Content-MD5"

    iget-object v1, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentMd5:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_4
    iget-object v0, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 57
    const-string v0, "Host"

    iget-object v1, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mHost:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_5
    iget-object v0, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentLanguage:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 62
    const-string v0, "Content-Language"

    iget-object v1, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mContentLanguage:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_6
    iget-object v0, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAcceptLangauge:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 68
    const-string v0, "Accept-Language"

    iget-object v1, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAcceptLangauge:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_7
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 74
    const-string v0, "User-Agent"

    .line 76
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_8
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getRLNClientIPAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 80
    const-string v0, "RLNClientIpAddr"

    .line 82
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getRLNClientIPAddress()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_9
    iget-object v0, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAccept:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 86
    const-string v0, "Accept"

    iget-object v1, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAccept:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_a
    iget-object v0, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAcceptCharset:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 92
    const-string v0, "Accept-Charset"

    iget-object v1, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAcceptCharset:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_b
    iget-object v0, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAcceptDateTime:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 98
    const-string v0, "Accept-Datetime"

    iget-object v1, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAcceptDateTime:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_c
    iget-object v0, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mCacheControl:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 104
    const-string v0, "Cache-Control"

    iget-object v1, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mCacheControl:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_d
    iget-object v0, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mDate:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 110
    const-string v0, "Date"

    iget-object v1, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mDate:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_e
    iget-object v0, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mConnection:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 115
    const-string v0, "Connection"

    iget-object v1, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mConnection:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_f
    sget-object v0, Lcom/pubmatic/sdk/common/network/HttpWorker$1;->$SwitchMap$com$pubmatic$sdk$common$CommonConstants$CONTENT_TYPE:[I

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getContentType()Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 122
    :pswitch_0
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :pswitch_1
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/network/HttpWorker;->mIsCancelled:Z

    .line 357
    return-void
.end method

.method public execute(Lcom/pubmatic/sdk/common/network/HttpRequest;Lcom/pubmatic/sdk/common/network/HttpWorker$HttpRedirectListener;)Lcom/pubmatic/sdk/common/network/HttpResponse;
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 141
    const/4 v8, 0x0

    .line 142
    const/4 v9, 0x0

    .line 143
    const/4 v10, 0x0

    .line 144
    const/4 v1, 0x0

    .line 145
    new-instance v3, Lcom/pubmatic/sdk/common/network/HttpResponse;

    invoke-direct {v3}, Lcom/pubmatic/sdk/common/network/HttpResponse;-><init>()V

    .line 153
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/pubmatic/sdk/common/network/HttpResponse;->setHttpRequest(Lcom/pubmatic/sdk/common/network/HttpRequest;)V

    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 157
    :cond_0
    const/16 v2, -0x3e8

    iput v2, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    if-eqz v4, :cond_1

    .line 329
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 333
    :cond_1
    if-eqz v4, :cond_2

    .line 334
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 338
    :cond_2
    if-eqz v4, :cond_3

    .line 339
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 343
    :cond_3
    if-eqz v4, :cond_4

    .line 344
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1b

    :cond_4
    :goto_0
    move-object v1, v3

    .line 349
    :goto_1
    return-object v1

    .line 161
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 164
    const/16 v2, -0x3e8

    iput v2, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    if-eqz v4, :cond_6

    .line 329
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 333
    :cond_6
    if-eqz v4, :cond_7

    .line 334
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 338
    :cond_7
    if-eqz v4, :cond_8

    .line 339
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 343
    :cond_8
    if-eqz v4, :cond_9

    .line 344
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1a

    :cond_9
    :goto_2
    move-object v1, v3

    .line 349
    goto :goto_1

    .line 169
    :cond_a
    :try_start_4
    const-string v1, "GET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getPostData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 170
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "?"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 172
    const-string v1, "?"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_b
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/pubmatic/sdk/common/network/HttpWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ": Http GET request  = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v6, v7}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    move-object v7, v1

    .line 187
    :goto_3
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    if-eqz v1, :cond_2a

    .line 192
    :try_start_5
    invoke-direct {p0, p1, v1}, Lcom/pubmatic/sdk/common/network/HttpWorker;->setAdHeaders(Lcom/pubmatic/sdk/common/network/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 195
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 196
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 197
    const-string v6, "User-Agent"

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v6, "Accept"

    const-string v11, "text/plain,text/html,application/xhtml+xml,application/xml;*/*"

    invoke-virtual {v1, v6, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/16 v6, 0x1388

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 202
    const-string v6, "POST"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getPostData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 203
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getPostData()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    .line 205
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 208
    new-instance v6, Ljava/io/DataOutputStream;

    .line 209
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 210
    if-eqz v6, :cond_c

    .line 213
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 215
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/pubmatic/sdk/common/network/HttpWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ": Http request body = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v2, v6}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 222
    :cond_c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 226
    const/16 v6, 0xc8

    if-eq v2, v6, :cond_3d

    .line 227
    const/16 v6, 0x12e

    if-eq v2, v6, :cond_d

    const/16 v6, 0x12d

    if-eq v2, v6, :cond_d

    const/16 v6, 0x12f

    if-ne v2, v6, :cond_e

    .line 230
    :cond_d
    const/4 v5, 0x1

    .line 231
    :cond_e
    const-string v6, "Location"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 235
    :goto_4
    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 236
    const/4 v5, 0x1

    .line 237
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    .line 240
    :cond_f
    if-eqz v5, :cond_1c

    .line 242
    if-eqz p2, :cond_1b

    invoke-interface {p2}, Lcom/pubmatic/sdk/common/network/HttpWorker$HttpRedirectListener;->overrideRedirection()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 244
    iput v2, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorCode:I

    .line 246
    invoke-direct {p0}, Lcom/pubmatic/sdk/common/network/HttpWorker;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 247
    const/16 v2, -0x3eb

    iput v2, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I

    .line 251
    :goto_5
    if-eqz v3, :cond_10

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/pubmatic/sdk/common/network/HttpWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": Http redirect response  = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/network/HttpResponse;->getResponseData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    .line 253
    invoke-static {v2, v5}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 328
    :cond_10
    if-eqz v4, :cond_11

    .line 329
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 333
    :cond_11
    if-eqz v4, :cond_12

    .line 334
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 338
    :cond_12
    if-eqz v4, :cond_13

    .line 339
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 343
    :cond_13
    if-eqz v1, :cond_14

    .line 344
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_19

    :cond_14
    :goto_6
    move-object v1, v3

    .line 349
    goto/16 :goto_1

    .line 180
    :cond_15
    :try_start_7
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/pubmatic/sdk/common/network/HttpWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Http request  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v6, v7}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v7, v1

    goto/16 :goto_3

    .line 249
    :cond_16
    const/16 v2, -0x516

    :try_start_8
    iput v2, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 313
    :catch_0
    move-exception v2

    move-object v2, v4

    move-object v5, v4

    .line 315
    :goto_7
    const/16 v6, -0x3ec

    :try_start_9
    iput v6, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 328
    if-eqz v2, :cond_17

    .line 329
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 333
    :cond_17
    if-eqz v5, :cond_18

    .line 334
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 338
    :cond_18
    if-eqz v4, :cond_19

    .line 339
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 343
    :cond_19
    if-eqz v1, :cond_1a

    .line 344
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    :cond_1a
    :goto_8
    move-object v1, v3

    .line 349
    goto/16 :goto_1

    .line 262
    :cond_1b
    :try_start_b
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 263
    const-string v2, "User-Agent"

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "Accept"

    iget-object v5, p1, Lcom/pubmatic/sdk/common/network/HttpRequest;->mAccept:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 270
    :cond_1c
    const/16 v5, 0xc8

    if-ne v2, v5, :cond_29

    .line 272
    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    const-string v5, "json"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    sget-object v2, Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;->JSON:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    :goto_9
    invoke-virtual {v3, v2}, Lcom/pubmatic/sdk/common/network/HttpResponse;->setContentType(Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;)V

    .line 278
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v5

    .line 279
    if-nez v5, :cond_23

    .line 280
    const/16 v2, -0x3e9

    :try_start_c
    iput v2, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 328
    if-eqz v5, :cond_1d

    .line 329
    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 333
    :cond_1d
    if-eqz v4, :cond_1e

    .line 334
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 338
    :cond_1e
    if-eqz v4, :cond_1f

    .line 339
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 343
    :cond_1f
    if-eqz v1, :cond_20

    .line 344
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_18

    :cond_20
    :goto_a
    move-object v1, v3

    .line 349
    goto/16 :goto_1

    .line 273
    :cond_21
    :try_start_e
    const-string v5, "xml"

    .line 274
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;->XML:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    goto :goto_9

    :cond_22
    sget-object v2, Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;->INVALID:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_9

    .line 284
    :cond_23
    :try_start_f
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 285
    :try_start_10
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 288
    :goto_b
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 289
    invoke-virtual {v3, v4}, Lcom/pubmatic/sdk/common/network/HttpResponse;->setResponse(Ljava/lang/String;)V

    goto :goto_b

    .line 313
    :catch_1
    move-exception v4

    move-object v4, v2

    move-object v2, v5

    move-object v5, v6

    goto/16 :goto_7

    .line 291
    :cond_24
    const/4 v4, 0x0

    iput v4, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object v4, v2

    move-object v2, v5

    move-object v5, v6

    .line 305
    :goto_c
    :try_start_12
    invoke-direct {p0}, Lcom/pubmatic/sdk/common/network/HttpWorker;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 306
    const/16 v6, -0x3eb

    iput v6, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I
    :try_end_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 328
    if-eqz v2, :cond_25

    .line 329
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 333
    :cond_25
    if-eqz v5, :cond_26

    .line 334
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 338
    :cond_26
    if-eqz v4, :cond_27

    .line 339
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 343
    :cond_27
    if-eqz v1, :cond_28

    .line 344
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_17

    :cond_28
    :goto_d
    move-object v1, v3

    .line 349
    goto/16 :goto_1

    .line 295
    :cond_29
    const/16 v2, -0x3ea

    :try_start_14
    iput v2, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I

    .line 296
    if-eqz v1, :cond_2a

    .line 297
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorCode:I
    :try_end_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_2a
    move-object v2, v4

    move-object v5, v4

    goto :goto_c

    .line 309
    :cond_2b
    if-eqz v3, :cond_2c

    .line 310
    :try_start_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/pubmatic/sdk/common/network/HttpWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Http response  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/network/HttpResponse;->getResponseData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v6, v7}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V
    :try_end_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 328
    :cond_2c
    if-eqz v2, :cond_2d

    .line 329
    :try_start_16
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 333
    :cond_2d
    if-eqz v5, :cond_2e

    .line 334
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 338
    :cond_2e
    if-eqz v4, :cond_2f

    .line 339
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 343
    :cond_2f
    if-eqz v1, :cond_30

    .line 344
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_16

    :cond_30
    :goto_e
    move-object v1, v3

    .line 349
    goto/16 :goto_1

    .line 317
    :catch_2
    move-exception v1

    move-object v1, v4

    move-object v2, v4

    move-object v5, v4

    .line 319
    :goto_f
    const/16 v6, -0x3e9

    :try_start_17
    iput v6, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 328
    if-eqz v2, :cond_31

    .line 329
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 333
    :cond_31
    if-eqz v5, :cond_32

    .line 334
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 338
    :cond_32
    if-eqz v4, :cond_33

    .line 339
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 343
    :cond_33
    if-eqz v1, :cond_34

    .line 344
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_b

    :cond_34
    :goto_10
    move-object v1, v3

    .line 349
    goto/16 :goto_1

    .line 321
    :catch_3
    move-exception v1

    move-object v2, v4

    move-object v5, v4

    move-object v6, v4

    .line 322
    :goto_11
    :try_start_19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    const/4 v1, -0x1

    iput v1, v3, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 328
    if-eqz v5, :cond_35

    .line 329
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 333
    :cond_35
    if-eqz v6, :cond_36

    .line 334
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 338
    :cond_36
    if-eqz v2, :cond_37

    .line 339
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 343
    :cond_37
    if-eqz v4, :cond_38

    .line 344
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_5

    :cond_38
    :goto_12
    move-object v1, v3

    .line 349
    goto/16 :goto_1

    .line 326
    :catchall_0
    move-exception v1

    move-object v2, v4

    move-object v5, v4

    move-object v6, v4

    .line 328
    :goto_13
    if-eqz v5, :cond_39

    .line 329
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 333
    :cond_39
    if-eqz v6, :cond_3a

    .line 334
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 338
    :cond_3a
    if-eqz v2, :cond_3b

    .line 339
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 343
    :cond_3b
    if-eqz v4, :cond_3c

    .line 344
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_4

    .line 349
    :cond_3c
    :goto_14
    throw v1

    .line 347
    :catch_4
    move-exception v2

    goto :goto_14

    .line 326
    :catchall_1
    move-exception v2

    move-object v5, v4

    move-object v6, v4

    move-object v12, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v12

    goto :goto_13

    :catchall_2
    move-exception v2

    move-object v6, v4

    move-object v12, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v12

    goto :goto_13

    :catchall_3
    move-exception v2

    move-object v12, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v12

    goto :goto_13

    :catchall_4
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    goto :goto_13

    :catchall_5
    move-exception v3

    move-object v6, v5

    move-object v5, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v3

    goto :goto_13

    :catchall_6
    move-exception v1

    goto :goto_13

    .line 347
    :catch_5
    move-exception v1

    goto :goto_12

    .line 321
    :catch_6
    move-exception v2

    move-object v5, v4

    move-object v6, v4

    move-object v12, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v12

    goto :goto_11

    :catch_7
    move-exception v2

    move-object v6, v4

    move-object v12, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v12

    goto :goto_11

    :catch_8
    move-exception v2

    move-object v12, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v12

    goto :goto_11

    :catch_9
    move-exception v4

    move-object v12, v4

    move-object v4, v1

    move-object v1, v12

    goto :goto_11

    :catch_a
    move-exception v6

    move-object v12, v6

    move-object v6, v5

    move-object v5, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v12

    goto :goto_11

    .line 347
    :catch_b
    move-exception v1

    goto/16 :goto_10

    .line 317
    :catch_c
    move-exception v2

    move-object v2, v4

    move-object v5, v4

    goto/16 :goto_f

    :catch_d
    move-exception v2

    move-object v2, v5

    move-object v5, v4

    goto/16 :goto_f

    :catch_e
    move-exception v2

    move-object v2, v5

    move-object v5, v6

    goto/16 :goto_f

    :catch_f
    move-exception v4

    move-object v4, v2

    move-object v2, v5

    move-object v5, v6

    goto/16 :goto_f

    :catch_10
    move-exception v6

    goto/16 :goto_f

    .line 347
    :catch_11
    move-exception v1

    goto/16 :goto_8

    .line 313
    :catch_12
    move-exception v1

    move-object v1, v4

    move-object v2, v4

    move-object v5, v4

    goto/16 :goto_7

    :catch_13
    move-exception v2

    move-object v2, v5

    move-object v5, v4

    goto/16 :goto_7

    :catch_14
    move-exception v2

    move-object v2, v5

    move-object v5, v6

    goto/16 :goto_7

    :catch_15
    move-exception v6

    goto/16 :goto_7

    .line 347
    :catch_16
    move-exception v1

    goto/16 :goto_e

    :catch_17
    move-exception v1

    goto/16 :goto_d

    :catch_18
    move-exception v1

    goto/16 :goto_a

    :catch_19
    move-exception v1

    goto/16 :goto_6

    :catch_1a
    move-exception v1

    goto/16 :goto_2

    :catch_1b
    move-exception v1

    goto/16 :goto_0

    :cond_3d
    move-object v6, v4

    goto/16 :goto_4
.end method
