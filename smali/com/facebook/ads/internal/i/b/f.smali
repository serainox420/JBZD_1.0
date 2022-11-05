.class public Lcom/facebook/ads/internal/i/b/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/i/b/f$a;,
        Lcom/facebook/ads/internal/i/b/f$c;,
        Lcom/facebook/ads/internal/i/b/f$b;,
        Lcom/facebook/ads/internal/i/b/f$d;,
        Lcom/facebook/ads/internal/i/b/f$e;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/i/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/net/ServerSocket;

.field private final e:I

.field private final f:Ljava/lang/Thread;

.field private final g:Lcom/facebook/ads/internal/i/b/c;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/i/b/f$a;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/i/b/f$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/facebook/ads/internal/i/b/f$a;->a(Lcom/facebook/ads/internal/i/b/f$a;)Lcom/facebook/ads/internal/i/b/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/i/b/f;-><init>(Lcom/facebook/ads/internal/i/b/c;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/ads/internal/i/b/c;)V
    .locals 4

    const/16 v1, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->a:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/ads/internal/i/b/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/i/b/c;

    iput-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->g:Lcom/facebook/ads/internal/i/b/c;

    :try_start_0
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/i/b/f;->d:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/i/b/f;->e:I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/facebook/ads/internal/i/b/f$e;

    invoke-direct {v2, p0, v0}, Lcom/facebook/ads/internal/i/b/f$e;-><init>(Lcom/facebook/ads/internal/i/b/f;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/i/b/f;->f:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/b/f;->f:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    const-string v0, "ProxyCache"

    const-string v1, "Proxy cache server started. Ping it..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/b/f;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/i/b/f;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error starting local proxy server"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/b/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/b/f;->e()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/b/f;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b/f;->a(Ljava/net/Socket;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "ProxyCache"

    const-string v1, "HttpProxyCacheServer error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/i/b/d;->a(Ljava/io/InputStream;)Lcom/facebook/ads/internal/i/b/d;

    move-result-object v0

    const-string v1, "ProxyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request to cache proxy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/facebook/ads/internal/i/b/d;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/ads/internal/i/b/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ping"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b/f;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/ads/internal/i/b/l; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b/f;->c(Ljava/net/Socket;)V

    const-string v0, "ProxyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/b/f;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/i/b/f;->e(Ljava/lang/String;)Lcom/facebook/ads/internal/i/b/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/internal/i/b/g;->a(Lcom/facebook/ads/internal/i/b/d;Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/ads/internal/i/b/l; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "ProxyCache"

    const-string v1, "Closing socket... Socket is closed by client."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b/f;->c(Ljava/net/Socket;)V

    const-string v0, "ProxyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/b/f;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    new-instance v1, Lcom/facebook/ads/internal/i/b/l;

    const-string v2, "Error processing request"

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/i/b/f;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b/f;->c(Ljava/net/Socket;)V

    const-string v0, "ProxyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/b/f;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b/f;->c(Ljava/net/Socket;)V

    const-string v1, "ProxyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opened connections: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/b/f;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/b/f;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b/f;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 7

    const/4 v3, 0x3

    const/16 v1, 0x12c

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/facebook/ads/internal/i/b/f$b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/facebook/ads/internal/i/b/f$b;-><init>(Lcom/facebook/ads/internal/i/b/f;Lcom/facebook/ads/internal/i/b/f$1;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    int-to-long v4, v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/i/b/f;->h:Z

    iget-boolean v0, p0, Lcom/facebook/ads/internal/i/b/f;->h:Z

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :cond_0
    int-to-long v4, v2

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v1, v2, 0x2

    move v2, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    const-string v4, "ProxyCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error pinging server [attempt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    const-string v0, "ProxyCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shutdown server... Error pinging server [attempts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", max timeout: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/b/f;->a()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method private b(Ljava/net/Socket;)V
    .locals 2

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "HTTP/1.1 200 OK\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const-string v1, "ping ok"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/i/b/f;)Z
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/b/f;->c()Z

    move-result v0

    return v0
.end method

.method private c(Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b/f;->d(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b/f;->e(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b/f;->f(Ljava/net/Socket;)V

    return-void
.end method

.method private c()Z
    .locals 7

    const/4 v1, 0x0

    const-string v0, "ping"

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/i/b/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/internal/i/b/h;

    invoke-direct {v2, v0}, Lcom/facebook/ads/internal/i/b/h;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "ping ok"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/i/b/h;->a(I)V

    array-length v3, v0

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/i/b/h;->a([B)I

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const-string v4, "ProxyCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ping response: `"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "`, pinged? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/facebook/ads/internal/i/b/l; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/b/h;->b()V

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "ProxyCache"

    const-string v4, "Error reading ping response"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/b/h;->b()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/b/h;->b()V

    throw v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/internal/i/b/h;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/facebook/ads/internal/i/b/h;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/i/b/h;->a(I)V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :cond_0
    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/i/b/h;->a([B)I
    :try_end_0
    .catch Lcom/facebook/ads/internal/i/b/l; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/b/h;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "ProxyCache"

    const-string v4, "Error reading url"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/b/h;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/b/h;->b()V

    throw v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "http://%s:%d/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "127.0.0.1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/facebook/ads/internal/i/b/f;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Lcom/facebook/ads/internal/i/b/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 3

    iget-object v1, p0, Lcom/facebook/ads/internal/i/b/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/i/b/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/b/g;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private d(Ljava/net/Socket;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ProxyCache"

    const-string v1, "Releasing input stream... Socket is closed by client."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/i/b/l;

    const-string v2, "Error closing socket input stream"

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/i/b/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Lcom/facebook/ads/internal/i/b/g;
    .locals 3

    iget-object v1, p0, Lcom/facebook/ads/internal/i/b/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/i/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/i/b/g;

    iget-object v2, p0, Lcom/facebook/ads/internal/i/b/f;->g:Lcom/facebook/ads/internal/i/b/c;

    invoke-direct {v0, p1, v2}, Lcom/facebook/ads/internal/i/b/g;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/i/b/c;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/i/b/f;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 4

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const-string v1, "ProxyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accept new socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/facebook/ads/internal/i/b/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/facebook/ads/internal/i/b/f$d;

    invoke-direct {v2, p0, v0}, Lcom/facebook/ads/internal/i/b/f$d;-><init>(Lcom/facebook/ads/internal/i/b/f;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/i/b/l;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/i/b/f;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private e(Ljava/net/Socket;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/i/b/l;

    const-string v2, "Error closing socket output stream"

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/i/b/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f()I
    .locals 4

    iget-object v2, p0, Lcom/facebook/ads/internal/i/b/f;->a:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/internal/i/b/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/i/b/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/b/g;->b()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f(Ljava/net/Socket;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/i/b/l;

    const-string v2, "Error closing socket"

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/i/b/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "ProxyCache"

    const-string v1, "Shutdown proxy server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/b/f;->d()V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/i/b/l;

    const-string v2, "Error shutting down proxy server"

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/i/b/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x3

    const/16 v1, 0x12c

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/b/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/facebook/ads/internal/i/b/f$c;

    invoke-direct {v4, p0, p1}, Lcom/facebook/ads/internal/i/b/f$c;-><init>(Lcom/facebook/ads/internal/i/b/f;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :cond_0
    int-to-long v4, v2

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v1, v2, 0x2

    move v2, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    const-string v4, "ProxyCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error precaching url [attempt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    const-string v0, "ProxyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutdown server... Error precaching url [attempts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/b/f;->a()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/i/b/f;->h:Z

    if-nez v0, :cond_0

    const-string v0, "ProxyCache"

    const-string v1, "Proxy server isn\'t pinged. Caching doesn\'t work."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/i/b/f;->h:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method
