.class Lcom/smartadserver/android/library/a/a$a;
.super Ljava/lang/Thread;
.source "SASAsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/Timer;

.field b:Lcom/smartadserver/android/library/a/a$b;

.field final synthetic c:Lcom/smartadserver/android/library/a/a;

.field private d:Lorg/apache/http/client/methods/HttpUriRequest;

.field private e:Lcom/smartadserver/android/library/a/b;

.field private f:Lorg/apache/http/client/HttpClient;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/a/a;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/smartadserver/android/library/a/b;Lorg/apache/http/client/HttpClient;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 195
    iput-object p1, p0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 190
    iput-boolean v0, p0, Lcom/smartadserver/android/library/a/a$a;->g:Z

    .line 191
    iput-boolean v0, p0, Lcom/smartadserver/android/library/a/a$a;->h:Z

    .line 192
    iput-object v1, p0, Lcom/smartadserver/android/library/a/a$a;->a:Ljava/util/Timer;

    .line 193
    iput-object v1, p0, Lcom/smartadserver/android/library/a/a$a;->b:Lcom/smartadserver/android/library/a/a$b;

    .line 196
    const-string v0, "SASHttpRequestThread"

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/a/a$a;->setName(Ljava/lang/String;)V

    .line 197
    iput-object p2, p0, Lcom/smartadserver/android/library/a/a$a;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 198
    iput-object p3, p0, Lcom/smartadserver/android/library/a/a$a;->e:Lcom/smartadserver/android/library/a/b;

    .line 199
    iput-object p4, p0, Lcom/smartadserver/android/library/a/a$a;->f:Lorg/apache/http/client/HttpClient;

    .line 200
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/smartadserver/android/library/exception/SASException;)V
    .locals 1

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/smartadserver/android/library/a/a$a;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/smartadserver/android/library/a/a$a;->g:Z

    if-nez v0, :cond_1

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/a/a$a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a$a;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a$a;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a$a;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/smartadserver/android/library/exception/SASException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->b(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a$a;->e:Lcom/smartadserver/android/library/a/b;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/a/b;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :cond_1
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 223
    :try_start_0
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 224
    const-string v2, "http.protocol.version"

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v4, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 227
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->f:Lorg/apache/http/client/HttpClient;

    if-nez v2, :cond_2

    .line 228
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 231
    move-object v0, v3

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v2, v0

    new-instance v5, Lcom/smartadserver/android/library/a/a$a$1;

    invoke-direct {v5, p0}, Lcom/smartadserver/android/library/a/a$a$1;-><init>(Lcom/smartadserver/android/library/a/a$a;)V

    invoke-virtual {v2, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 258
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v5, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-interface {v2, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/a/a;->b(Lcom/smartadserver/android/library/a/a;)I

    move-result v2

    invoke-static {v4, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 261
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/a/a;->b(Lcom/smartadserver/android/library/a/a;)I

    move-result v2

    invoke-static {v4, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 265
    :goto_0
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v4, "User-Agent"

    iget-object v5, p0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    invoke-static {v5}, Lcom/smartadserver/android/library/a/a;->c(Lcom/smartadserver/android/library/a/a;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/a/a;->b(Lcom/smartadserver/android/library/a/a;)I

    move-result v2

    if-lez v2, :cond_0

    .line 271
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->a:Ljava/util/Timer;

    .line 272
    new-instance v2, Lcom/smartadserver/android/library/a/a$a$2;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/a/a$a$2;-><init>(Lcom/smartadserver/android/library/a/a$a;)V

    .line 280
    iget-object v4, p0, Lcom/smartadserver/android/library/a/a$a;->a:Ljava/util/Timer;

    iget-object v5, p0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    invoke-static {v5}, Lcom/smartadserver/android/library/a/a;->b(Lcom/smartadserver/android/library/a/a;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v2, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 287
    instance-of v2, v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v2, :cond_1

    .line 288
    move-object v0, v3

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v2, v0

    invoke-static {v4, v2}, Lcom/smartadserver/android/library/a/a;->a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 293
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    :try_start_1
    iget-boolean v5, p0, Lcom/smartadserver/android/library/a/a$a;->g:Z

    if-eqz v5, :cond_3

    .line 295
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    iput-object v8, v2, Lcom/smartadserver/android/library/a/a;->a:Lcom/smartadserver/android/library/a/a$a;

    .line 346
    :goto_1
    return-void

    .line 263
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/smartadserver/android/library/a/a$a;->f:Lorg/apache/http/client/HttpClient;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 297
    :cond_3
    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, p0, Lcom/smartadserver/android/library/a/a$a;->h:Z

    .line 298
    iget-object v5, p0, Lcom/smartadserver/android/library/a/a$a;->a:Ljava/util/Timer;

    if-eqz v5, :cond_4

    .line 299
    iget-object v5, p0, Lcom/smartadserver/android/library/a/a$a;->a:Ljava/util/Timer;

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    .line 301
    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    if-eqz v2, :cond_8

    .line 305
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 307
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_7

    .line 309
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 310
    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    iget-object v5, p0, Lcom/smartadserver/android/library/a/a$a;->b:Lcom/smartadserver/android/library/a/a$b;

    if-eqz v5, :cond_5

    .line 313
    iget-object v5, p0, Lcom/smartadserver/android/library/a/a$a;->b:Lcom/smartadserver/android/library/a/a$b;

    invoke-virtual {v5}, Lcom/smartadserver/android/library/a/a$b;->a()V

    .line 314
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/smartadserver/android/library/a/a$a;->b:Lcom/smartadserver/android/library/a/a$b;

    .line 316
    :cond_5
    iget-object v5, p0, Lcom/smartadserver/android/library/a/a$a;->e:Lcom/smartadserver/android/library/a/b;

    invoke-interface {v5, v2}, Lcom/smartadserver/android/library/a/b;->a(Ljava/lang/String;)V

    .line 318
    instance-of v2, v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v2, :cond_6

    .line 319
    check-cast v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v4, v3}, Lcom/smartadserver/android/library/a/a;->b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 344
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    iput-object v8, v2, Lcom/smartadserver/android/library/a/a;->a:Lcom/smartadserver/android/library/a/a$a;

    goto :goto_1

    .line 301
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 328
    :catch_0
    move-exception v2

    .line 329
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 331
    :try_start_8
    iget-boolean v3, p0, Lcom/smartadserver/android/library/a/a$a;->g:Z

    if-eqz v3, :cond_9

    .line 332
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 344
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    iput-object v8, v2, Lcom/smartadserver/android/library/a/a;->a:Lcom/smartadserver/android/library/a/a$a;

    goto :goto_1

    .line 322
    :cond_7
    :try_start_9
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->e:Lcom/smartadserver/android/library/a/b;

    new-instance v3, Lorg/apache/http/HttpException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP error code: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/smartadserver/android/library/a/b;->a(Ljava/lang/Exception;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 344
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    iput-object v8, v3, Lcom/smartadserver/android/library/a/a;->a:Lcom/smartadserver/android/library/a/a$a;

    throw v2

    .line 325
    :cond_8
    :try_start_a
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->e:Lcom/smartadserver/android/library/a/b;

    new-instance v3, Lorg/apache/http/HttpException;

    const-string v4, "Null Http response"

    invoke-direct {v3, v4}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/smartadserver/android/library/a/b;->a(Ljava/lang/Exception;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 334
    :cond_9
    const/4 v3, 0x1

    :try_start_b
    iput-boolean v3, p0, Lcom/smartadserver/android/library/a/a$a;->h:Z

    .line 335
    iget-object v3, p0, Lcom/smartadserver/android/library/a/a$a;->a:Ljava/util/Timer;

    if-eqz v3, :cond_a

    .line 336
    iget-object v3, p0, Lcom/smartadserver/android/library/a/a$a;->a:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 338
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    iget-object v3, p0, Lcom/smartadserver/android/library/a/a$a;->e:Lcom/smartadserver/android/library/a/b;

    invoke-interface {v3, v2}, Lcom/smartadserver/android/library/a/b;->a(Ljava/lang/Exception;)V

    .line 340
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 344
    iget-object v2, p0, Lcom/smartadserver/android/library/a/a$a;->c:Lcom/smartadserver/android/library/a/a;

    iput-object v8, v2, Lcom/smartadserver/android/library/a/a;->a:Lcom/smartadserver/android/library/a/a$a;

    goto/16 :goto_1

    .line 340
    :catchall_2
    move-exception v2

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method
