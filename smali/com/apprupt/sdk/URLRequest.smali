.class public Lcom/apprupt/sdk/URLRequest;
.super Ljava/lang/Object;
.source "URLRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/URLRequest$Listener;,
        Lcom/apprupt/sdk/URLRequest$ResponseDispatcher;,
        Lcom/apprupt/sdk/URLRequest$URLResponse;,
        Lcom/apprupt/sdk/URLRequest$NameValuePair;,
        Lcom/apprupt/sdk/URLRequest$CancelRequest;,
        Lcom/apprupt/sdk/URLRequest$Type;
    }
.end annotation


# static fields
.field private static final b:Lcom/apprupt/sdk/Logger$log;

.field private static final c:Lcom/apprupt/sdk/Logger$log;


# instance fields
.field a:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/StringBuilder;

.field private f:Lcom/apprupt/sdk/URLRequest$Type;

.field private g:Ljava/lang/StringBuilder;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apprupt/sdk/URLRequest$NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/apprupt/sdk/URLRequest$Listener;

.field private j:Z

.field private k:Z

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "URL_REQUEST"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/URLRequest;->b:Lcom/apprupt/sdk/Logger$log;

    .line 35
    const-string v0, "Q"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/URLRequest;->c:Lcom/apprupt/sdk/Logger$log;

    return-void
.end method

.method private constructor <init>(Lcom/apprupt/sdk/URLRequest$Type;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/apprupt/sdk/URLRequest;->a:Landroid/os/Handler;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/apprupt/sdk/URLRequest;->e:Ljava/lang/StringBuilder;

    .line 139
    iput-object v3, p0, Lcom/apprupt/sdk/URLRequest;->g:Ljava/lang/StringBuilder;

    .line 140
    iput-object v3, p0, Lcom/apprupt/sdk/URLRequest;->h:Ljava/util/List;

    .line 141
    iput-object v3, p0, Lcom/apprupt/sdk/URLRequest;->i:Lcom/apprupt/sdk/URLRequest$Listener;

    .line 142
    iput-boolean v0, p0, Lcom/apprupt/sdk/URLRequest;->j:Z

    .line 143
    iput-boolean v0, p0, Lcom/apprupt/sdk/URLRequest;->k:Z

    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/apprupt/sdk/URLRequest;->l:Ljava/util/HashMap;

    .line 148
    invoke-virtual {p0, p2}, Lcom/apprupt/sdk/URLRequest;->a(Ljava/lang/String;)V

    .line 150
    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    .line 151
    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p3, v0

    .line 152
    invoke-virtual {p0, v2}, Lcom/apprupt/sdk/URLRequest;->a(Ljava/lang/Object;)Lcom/apprupt/sdk/URLRequest;

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/apprupt/sdk/URLRequest;->f:Lcom/apprupt/sdk/URLRequest$Type;

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/URLRequest;Lcom/apprupt/sdk/URLRequest$Listener;)Lcom/apprupt/sdk/URLRequest$Listener;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/apprupt/sdk/URLRequest;->i:Lcom/apprupt/sdk/URLRequest$Listener;

    return-object p1
.end method

.method private a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V
    .locals 4

    .prologue
    .line 455
    sget-object v0, Lcom/apprupt/sdk/URLRequest;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Posting URLResponse"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest;->i:Lcom/apprupt/sdk/URLRequest$Listener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apprupt/sdk/URLRequest;->j:Z

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest;->i:Lcom/apprupt/sdk/URLRequest$Listener;

    invoke-interface {v0, p1}, Lcom/apprupt/sdk/URLRequest$Listener;->a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V

    .line 459
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/URLRequest;Lcom/apprupt/sdk/URLRequest$URLResponse;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/URLRequest;->a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/URLRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/URLRequest;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Lcom/apprupt/sdk/URLRequest;

    sget-object v1, Lcom/apprupt/sdk/URLRequest$Type;->POST:Lcom/apprupt/sdk/URLRequest$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/apprupt/sdk/URLRequest;-><init>(Lcom/apprupt/sdk/URLRequest$Type;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;
    .locals 3

    .prologue
    .line 193
    new-instance v0, Lcom/apprupt/sdk/URLRequest;

    sget-object v1, Lcom/apprupt/sdk/URLRequest$Type;->GET:Lcom/apprupt/sdk/URLRequest$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/apprupt/sdk/URLRequest;-><init>(Lcom/apprupt/sdk/URLRequest$Type;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;
    .locals 2

    .prologue
    .line 390
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apprupt/sdk/URLRequest$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/apprupt/sdk/URLRequest$2;-><init>(Lcom/apprupt/sdk/URLRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 395
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 397
    return-object p0
.end method

.method static synthetic d()Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/apprupt/sdk/URLRequest;->b:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 401
    .line 404
    :try_start_0
    invoke-direct {p0}, Lcom/apprupt/sdk/URLRequest;->f()Ljava/net/URL;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 406
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 407
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 408
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 409
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 410
    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest;->f:Lcom/apprupt/sdk/URLRequest$Type;

    invoke-virtual {v1}, Lcom/apprupt/sdk/URLRequest$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 411
    const-string v1, "charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/apprupt/sdk/CvAppInfo;->a()Lcom/apprupt/sdk/CvAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apprupt/sdk/CvAppInfo;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 415
    iget-object v2, p0, Lcom/apprupt/sdk/URLRequest;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 416
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 448
    new-instance v0, Lcom/apprupt/sdk/URLRequest$URLResponse;

    invoke-direct {v0, p0, v1, v10}, Lcom/apprupt/sdk/URLRequest$URLResponse;-><init>(Lcom/apprupt/sdk/URLRequest;Ljava/lang/Exception;Lcom/apprupt/sdk/URLRequest$1;)V

    .line 451
    :goto_1
    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest;->a:Landroid/os/Handler;

    new-instance v2, Lcom/apprupt/sdk/URLRequest$ResponseDispatcher;

    invoke-direct {v2, p0, v0}, Lcom/apprupt/sdk/URLRequest$ResponseDispatcher;-><init>(Lcom/apprupt/sdk/URLRequest;Lcom/apprupt/sdk/URLRequest$URLResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    return-void

    .line 420
    :cond_1
    if-eqz p1, :cond_3

    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_3

    .line 421
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 422
    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_2
    const-string v2, "Content-Length"

    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 426
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 427
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 428
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 431
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 433
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v3

    .line 437
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 438
    sget-object v5, Lcom/apprupt/sdk/URLRequest;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Readline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 439
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    .line 440
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 442
    :cond_4
    sget-object v3, Lcom/apprupt/sdk/URLRequest;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Total read:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-interface {v3, v5}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 443
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 445
    new-instance v0, Lcom/apprupt/sdk/URLRequest$URLResponse;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/apprupt/sdk/URLRequest$URLResponse;-><init>(Lcom/apprupt/sdk/URLRequest;ILjava/lang/String;Lcom/apprupt/sdk/URLRequest$1;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic e()Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/apprupt/sdk/URLRequest;->c:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method private f()Ljava/net/URL;
    .locals 5

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-boolean v1, p0, Lcom/apprupt/sdk/URLRequest;->k:Z

    if-eqz v1, :cond_0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_0
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p0}, Lcom/apprupt/sdk/URLRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 375
    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest;->g:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 376
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 379
    :cond_1
    sget-object v1, Lcom/apprupt/sdk/URLRequest;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 381
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/InternalError;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 385
    throw v1
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/URLRequest$Listener;)Lcom/apprupt/sdk/URLRequest;
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/apprupt/sdk/URLRequest;->i:Lcom/apprupt/sdk/URLRequest$Listener;

    .line 202
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/apprupt/sdk/URLRequest;
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/apprupt/sdk/URLRequest;->a(Ljava/lang/Object;Z)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Z)Lcom/apprupt/sdk/URLRequest;
    .locals 6

    .prologue
    .line 247
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest;->e:Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    if-eqz p1, :cond_0

    .line 250
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_0
    :goto_1
    return-object p0

    .line 250
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    sget-object v1, Lcom/apprupt/sdk/URLRequest;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot add path component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/URLRequest;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest;->f:Lcom/apprupt/sdk/URLRequest$Type;

    sget-object v1, Lcom/apprupt/sdk/URLRequest$Type;->GET:Lcom/apprupt/sdk/URLRequest$Type;

    if-ne v0, v1, :cond_0

    .line 233
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cannot add param to post request"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest;->h:Ljava/util/List;

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/URLRequest;->h:Ljava/util/List;

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest;->h:Ljava/util/List;

    new-instance v2, Lcom/apprupt/sdk/URLRequest$NameValuePair;

    if-nez p2, :cond_2

    const-string v0, ""

    :goto_0
    invoke-direct {v2, p0, p1, v0}, Lcom/apprupt/sdk/URLRequest$NameValuePair;-><init>(Lcom/apprupt/sdk/URLRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-object p0

    .line 238
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/URLRequest;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 159
    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Host cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/URLRequest;->a(Z)V

    .line 165
    :cond_1
    :goto_0
    const-string v0, "^https?://"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[/]+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/URLRequest;->d:Ljava/lang/String;

    .line 166
    return-void

    .line 162
    :cond_2
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/URLRequest;->a(Z)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/apprupt/sdk/URLRequest;->k:Z

    .line 174
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/apprupt/sdk/Q$Task;
    .locals 1

    .prologue
    .line 344
    new-instance v0, Lcom/apprupt/sdk/URLRequest$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/apprupt/sdk/URLRequest$1;-><init>(Lcom/apprupt/sdk/URLRequest;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Lcom/apprupt/sdk/URLRequest;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 278
    .line 280
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    const-string v1, ""

    .line 284
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/URLRequest$NameValuePair;

    .line 285
    invoke-virtual {v0}, Lcom/apprupt/sdk/URLRequest$NameValuePair;->a()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 287
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v0, "&"

    :goto_1
    move-object v1, v0

    .line 291
    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 293
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    const-string v0, "application/x-www-form-urlencoded"

    .line 297
    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/apprupt/sdk/URLRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public c()Lcom/apprupt/sdk/Q$Task;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, v0, v0}, Lcom/apprupt/sdk/URLRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apprupt/sdk/Q$Task;

    move-result-object v0

    return-object v0
.end method
