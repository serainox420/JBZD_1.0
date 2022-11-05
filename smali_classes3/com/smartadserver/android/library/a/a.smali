.class public Lcom/smartadserver/android/library/a/a;
.super Ljava/lang/Object;
.source "SASAsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/a/a$a;,
        Lcom/smartadserver/android/library/a/a$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/smartadserver/android/library/a/a$a;

.field private c:Lorg/apache/http/client/HttpClient;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/smartadserver/android/library/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/a/a;->a:Lcom/smartadserver/android/library/a/a$a;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/a/a;->f:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/a/a;->g:Z

    .line 89
    iput-object p1, p0, Lcom/smartadserver/android/library/a/a;->d:Ljava/lang/String;

    .line 90
    iput p2, p0, Lcom/smartadserver/android/library/a/a;->e:I

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/smartadserver/android/library/a/a;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 6

    .prologue
    .line 351
    const-class v1, Lcom/smartadserver/android/library/a/a;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 352
    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 354
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 355
    if-nez v0, :cond_1

    .line 376
    :cond_0
    monitor-exit v1

    return-void

    .line 360
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    sget-object v3, Lcom/smartadserver/android/library/a/a;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rawCookieHeader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    if-eqz v0, :cond_0

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set-Cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    const-string v5, ";,"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 371
    new-instance v4, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v4, p0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 373
    const-string v0, "/"

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/smartadserver/android/library/a/b;Lorg/apache/http/client/HttpClient;)V
    .locals 1

    .prologue
    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/a/a;->f:Ljava/lang/String;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/a/a;->g:Z

    .line 104
    new-instance v0, Lcom/smartadserver/android/library/a/a$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smartadserver/android/library/a/a$a;-><init>(Lcom/smartadserver/android/library/a/a;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/smartadserver/android/library/a/b;Lorg/apache/http/client/HttpClient;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/a/a;->a:Lcom/smartadserver/android/library/a/a$a;

    .line 105
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a;->a:Lcom/smartadserver/android/library/a/a$a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/a/a$a;->start()V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/a/a;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/smartadserver/android/library/a/a;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/a/a;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/smartadserver/android/library/a/a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/smartadserver/android/library/a/a;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/smartadserver/android/library/a/a;->e:I

    return v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 8

    .prologue
    .line 380
    const-class v1, Lcom/smartadserver/android/library/a/a;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    .line 381
    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 401
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 384
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    .line 385
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 386
    if-eqz v3, :cond_0

    .line 390
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 392
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$Version"

    if-ne v5, v6, :cond_3

    .line 400
    :cond_2
    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 394
    :cond_3
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "; Domain="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    sget-object v5, Lcom/smartadserver/android/library/a/a;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCookieHeader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic c(Lcom/smartadserver/android/library/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/smartadserver/android/library/a/a;->c:Lorg/apache/http/client/HttpClient;

    .line 81
    return-void
.end method

.method public a(Lorg/apache/http/client/methods/HttpGet;Lcom/smartadserver/android/library/a/b;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a;->c:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartadserver/android/library/a/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/smartadserver/android/library/a/b;Lorg/apache/http/client/HttpClient;)V

    .line 95
    return-void
.end method

.method public a(Lorg/apache/http/client/methods/HttpPost;Lcom/smartadserver/android/library/a/b;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a;->c:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartadserver/android/library/a/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/smartadserver/android/library/a/b;Lorg/apache/http/client/HttpClient;)V

    .line 99
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/smartadserver/android/library/a/a;->g:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a;->a:Lcom/smartadserver/android/library/a/a$a;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/smartadserver/android/library/a/a;->a:Lcom/smartadserver/android/library/a/a$a;

    new-instance v1, Lcom/smartadserver/android/library/exception/SASException;

    const-string v2, "Ad request was aborted"

    invoke-direct {v1, v2}, Lcom/smartadserver/android/library/exception/SASException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/a/a$a;->a(Lcom/smartadserver/android/library/exception/SASException;)V

    .line 115
    :cond_0
    return-void
.end method
