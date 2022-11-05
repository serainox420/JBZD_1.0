.class Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpRequestRunner"
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;

.field private h:Lcom/millennialmedia/internal/utils/HttpUtils$Response;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-wide p1, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->b:J

    .line 76
    iput-object p3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->c:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->d:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->e:Ljava/lang/String;

    .line 79
    iput p6, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->f:I

    .line 80
    iput-object p7, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->g:Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->h:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    .line 87
    new-instance v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-direct {v2}, Lcom/millennialmedia/internal/utils/HttpUtils$Response;-><init>()V

    iput-object v2, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->h:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    .line 94
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 96
    :try_start_1
    iget v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->f:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 97
    iget v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->f:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 98
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 99
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 100
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 101
    const-string v3, "User-Agent"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_1

    .line 104
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HttpsURLConnection created"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;->getInstance()Lcom/millennialmedia/internal/utils/MMSSLSocketFactory;

    move-result-object v4

    .line 108
    if-eqz v4, :cond_1

    .line 109
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 114
    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->d:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 115
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 134
    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 136
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 137
    new-instance v6, Lcom/millennialmedia/internal/AdMetadata;

    invoke-direct {v6}, Lcom/millennialmedia/internal/AdMetadata;-><init>()V

    .line 138
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 142
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 143
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 146
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3, v4}, Lcom/millennialmedia/internal/AdMetadata;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_1

    .line 176
    :catch_0
    move-exception v3

    move-object v4, v5

    move-object v6, v5

    move-object v14, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v14

    .line 177
    :goto_3
    :try_start_2
    iget-object v7, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->h:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    const/16 v8, 0x190

    iput v8, v7, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    .line 179
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const-string v9, "Error occurred when trying to get response content.\n\texception: %s\n\turl: %s\n\tpost data: %s\n\tpost content type: %s\n\ttimeout: %d\n\trequestId: %d"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v11

    const/4 v2, 0x1

    iget-object v11, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->c:Ljava/lang/String;

    aput-object v11, v10, v2

    const/4 v2, 0x2

    iget-object v11, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->d:Ljava/lang/String;

    aput-object v11, v10, v2

    const/4 v2, 0x3

    iget-object v11, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->e:Ljava/lang/String;

    aput-object v11, v10, v2

    const/4 v2, 0x4

    iget v11, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->f:I

    .line 182
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    const/4 v2, 0x5

    iget-wide v12, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->b:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v2

    .line 179
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 185
    invoke-static {v6}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 186
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 187
    invoke-static {v4}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 189
    if-eqz v5, :cond_3

    .line 190
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 193
    :cond_3
    monitor-enter p0

    .line 194
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->a:Z

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 196
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    :goto_4
    return-void

    .line 120
    :cond_4
    const/4 v3, 0x1

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 121
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 122
    const-string v3, "Content-Type"

    iget-object v4, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v3, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v4

    .line 126
    :try_start_5
    iget-object v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->d:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/millennialmedia/internal/utils/IOUtils;->write(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 129
    invoke-static {v4}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/16 :goto_0

    .line 176
    :catch_1
    move-exception v3

    move-object v6, v5

    move-object v14, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v14

    goto/16 :goto_3

    .line 150
    :cond_5
    :try_start_6
    iget-object v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->h:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iput-object v6, v3, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    .line 153
    :cond_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 154
    iget-object v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->h:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iput v4, v3, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    .line 156
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 157
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->a()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "Received response for:\n\turl: %s\n\tcode: %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->c:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 158
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-static {v3, v6}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_7
    const/16 v3, 0xc8

    if-ne v4, v3, :cond_9

    .line 163
    iget-object v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->h:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    .line 164
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v3

    .line 165
    :try_start_7
    iget-object v4, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->g:Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;

    iget-object v6, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->h:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-interface {v4, v3, v6}, Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;->streamContent(Ljava/io/InputStream;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object v4, v3

    move-object v3, v5

    .line 185
    :goto_5
    invoke-static {v4}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 186
    invoke-static {v5}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 187
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 189
    if-eqz v2, :cond_8

    .line 190
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 193
    :cond_8
    monitor-enter p0

    .line 194
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->a:Z

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 196
    monitor-exit p0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 167
    :cond_9
    const/16 v3, 0x190

    if-lt v4, v3, :cond_b

    .line 168
    :try_start_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result-object v3

    .line 169
    :try_start_a
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/IOUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 171
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->a()Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const-string v9, "HTTP ERROR.\n\tcode: %d\n\tmessage: %s\n\trequestId: %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 173
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v11

    const/4 v4, 0x1

    aput-object v6, v10, v4

    const/4 v4, 0x2

    iget-wide v12, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->b:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v4

    .line 172
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-static {v7, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object v4, v5

    goto :goto_5

    .line 196
    :catchall_1
    move-exception v2

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v2

    .line 185
    :catchall_2
    move-exception v2

    move-object v3, v5

    move-object v4, v5

    move-object v6, v5

    :goto_6
    invoke-static {v6}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 186
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 187
    invoke-static {v4}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 189
    if-eqz v5, :cond_a

    .line 190
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 193
    :cond_a
    monitor-enter p0

    .line 194
    const/4 v3, 0x1

    :try_start_c
    iput-boolean v3, p0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->a:Z

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 196
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v2

    :catchall_3
    move-exception v2

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v2

    .line 185
    :catchall_4
    move-exception v3

    move-object v4, v5

    move-object v6, v5

    move-object v14, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v14

    goto :goto_6

    :catchall_5
    move-exception v3

    move-object v6, v5

    move-object v14, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v14

    goto :goto_6

    :catchall_6
    move-exception v4

    move-object v6, v3

    move-object v3, v5

    move-object v14, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v14

    goto :goto_6

    :catchall_7
    move-exception v4

    move-object v6, v5

    move-object v14, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v5

    move-object v5, v14

    goto :goto_6

    :catchall_8
    move-exception v2

    goto :goto_6

    .line 176
    :catch_2
    move-exception v2

    move-object v3, v5

    move-object v4, v5

    move-object v6, v5

    goto/16 :goto_3

    :catch_3
    move-exception v4

    move-object v6, v3

    move-object v3, v5

    move-object v14, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v14

    goto/16 :goto_3

    :catch_4
    move-exception v4

    move-object v6, v5

    move-object v14, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v5

    move-object v5, v14

    goto/16 :goto_3

    :cond_b
    move-object v3, v5

    move-object v4, v5

    goto/16 :goto_5

    :cond_c
    move-object v4, v5

    goto/16 :goto_2
.end method
