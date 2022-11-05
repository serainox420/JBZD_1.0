.class public Lcom/facebook/ads/internal/i/a/a;
.super Ljava/lang/Object;


# static fields
.field private static f:[I

.field private static final g:Ljava/lang/String;


# instance fields
.field protected final a:Lcom/facebook/ads/internal/i/a/q;

.field protected final b:Lcom/facebook/ads/internal/i/a/d;

.field protected c:Lcom/facebook/ads/internal/i/a/r;

.field protected d:I

.field protected e:I

.field private h:I

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/i/a/a;->f:[I

    const-class v0, Lcom/facebook/ads/internal/i/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/i/a/a;->g:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/i/a/a;->c()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/facebook/ads/internal/i/a/a;->a()V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/i/a/e;

    invoke-direct {v0}, Lcom/facebook/ads/internal/i/a/e;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->b:Lcom/facebook/ads/internal/i/a/d;

    new-instance v0, Lcom/facebook/ads/internal/i/a/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/i/a/g;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/ads/internal/i/a/a;->d:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/facebook/ads/internal/i/a/a;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/internal/i/a/a;->h:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->i:Ljava/util/Map;

    new-instance v0, Lcom/facebook/ads/internal/i/a/a$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/a/a$1;-><init>(Lcom/facebook/ads/internal/i/a/a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->a:Lcom/facebook/ads/internal/i/a/q;

    return-void
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    :cond_0
    return-void
.end method

.method private static c()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private c(Ljava/net/HttpURLConnection;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    iget-object v1, p0, Lcom/facebook/ads/internal/i/a/a;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/i/a/a;->f:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method protected a(Ljava/net/HttpURLConnection;[B)I
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->a:Lcom/facebook/ads/internal/i/a/q;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i/a/q;->a(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->a:Lcom/facebook/ads/internal/i/a/q;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/internal/i/a/q;->a(Ljava/io/OutputStream;[B)V

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/internal/i/a/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Lcom/facebook/ads/internal/i/a/l;)Lcom/facebook/ads/internal/i/a/n;
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget v3, p0, Lcom/facebook/ads/internal/i/a/a;->h:I

    if-ge v2, v3, :cond_4

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/i/a/a;->a(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/ads/internal/i/a/a;->c(I)V

    iget-object v3, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v3}, Lcom/facebook/ads/internal/i/a/r;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "of"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/facebook/ads/internal/i/a/a;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", trying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/a/l;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/facebook/ads/internal/i/a/r;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/a/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/a/l;->b()Lcom/facebook/ads/internal/i/a/j;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/a/l;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/a/l;->d()[B

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/facebook/ads/internal/i/a/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/i/a/j;Ljava/lang/String;[B)Lcom/facebook/ads/internal/i/a/n;
    :try_end_0
    .catch Lcom/facebook/ads/internal/i/a/m; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v3

    :goto_1
    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/facebook/ads/internal/i/a/a;->a(Ljava/lang/Throwable;J)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/facebook/ads/internal/i/a/a;->h:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/facebook/ads/internal/i/a/a;->a:Lcom/facebook/ads/internal/i/a/q;

    invoke-interface {v4, v3}, Lcom/facebook/ads/internal/i/a/q;->a(Lcom/facebook/ads/internal/i/a/m;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/facebook/ads/internal/i/a/a;->h:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_3

    :try_start_1
    iget v4, p0, Lcom/facebook/ads/internal/i/a/a;->d:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    throw v3

    :cond_3
    throw v3

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Lcom/facebook/ads/internal/i/a/j;Ljava/lang/String;[B)Lcom/facebook/ads/internal/i/a/n;
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/facebook/ads/internal/i/a/a;->j:Z

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/i/a/a;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v2

    :try_start_1
    invoke-virtual {p0, v2, p2, p3}, Lcom/facebook/ads/internal/i/a/a;->a(Ljava/net/HttpURLConnection;Lcom/facebook/ads/internal/i/a/j;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/i/a/a;->c(Ljava/net/HttpURLConnection;)V

    iget-object v5, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v5}, Lcom/facebook/ads/internal/i/a/r;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v5, v2, p4}, Lcom/facebook/ads/internal/i/a/r;->a(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/facebook/ads/internal/i/a/a;->j:Z

    iget-object v5, p0, Lcom/facebook/ads/internal/i/a/a;->l:Ljava/util/Set;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/facebook/ads/internal/i/a/a;->l:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v1

    :goto_0
    iget-object v7, p0, Lcom/facebook/ads/internal/i/a/a;->k:Ljava/util/Set;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/facebook/ads/internal/i/a/a;->k:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    :goto_1
    instance-of v4, v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    if-nez v5, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    :try_start_2
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    iget-object v4, p0, Lcom/facebook/ads/internal/i/a/a;->l:Ljava/util/Set;

    iget-object v5, p0, Lcom/facebook/ads/internal/i/a/a;->k:Ljava/util/Set;

    invoke-static {v1, v4, v5}, Lcom/facebook/ads/internal/i/a/o;->a(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual {p0, v2, p4}, Lcom/facebook/ads/internal/i/a/a;->a(Ljava/net/HttpURLConnection;[B)I

    :cond_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/i/a/a;->a(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/internal/i/a/n;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    :goto_3
    iget-object v3, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v3}, Lcom/facebook/ads/internal/i/a/r;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v3, v1}, Lcom/facebook/ads/internal/i/a/r;->a(Lcom/facebook/ads/internal/i/a/n;)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    :goto_4
    return-object v1

    :cond_6
    move v5, v4

    goto :goto_0

    :cond_7
    move v1, v4

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    sget-object v4, Lcom/facebook/ads/internal/i/a/a;->g:Ljava/lang/String;

    const-string v5, "Unable to validate SSL certificates."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    :goto_5
    :try_start_5
    invoke-virtual {p0, v4}, Lcom/facebook/ads/internal/i/a/a;->b(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/internal/i/a/n;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v1

    if-eqz v1, :cond_c

    :try_start_6
    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/a/n;->a()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-lez v3, :cond_c

    iget-object v2, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v2}, Lcom/facebook/ads/internal/i/a/r;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v2, v1}, Lcom/facebook/ads/internal/i/a/r;->a(Lcom/facebook/ads/internal/i/a/n;)V

    :cond_8
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :cond_9
    :try_start_7
    new-instance v1, Lcom/facebook/ads/internal/i/a/n;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/internal/i/a/n;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    :goto_6
    iget-object v4, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v4}, Lcom/facebook/ads/internal/i/a/r;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v4, v3}, Lcom/facebook/ads/internal/i/a/r;->a(Lcom/facebook/ads/internal/i/a/n;)V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v1

    :cond_c
    :try_start_8
    new-instance v3, Lcom/facebook/ads/internal/i/a/m;

    invoke-direct {v3, v2, v1}, Lcom/facebook/ads/internal/i/a/m;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/i/a/n;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    goto :goto_6

    :catch_2
    move-exception v1

    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v3, :cond_f

    :try_start_a
    invoke-virtual {v6}, Lcom/facebook/ads/internal/i/a/n;->a()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result v1

    if-lez v1, :cond_f

    iget-object v1, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v1}, Lcom/facebook/ads/internal/i/a/r;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v1, v3}, Lcom/facebook/ads/internal/i/a/r;->a(Lcom/facebook/ads/internal/i/a/n;)V

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    move-object v1, v3

    goto :goto_4

    :cond_f
    :try_start_b
    new-instance v1, Lcom/facebook/ads/internal/i/a/m;

    invoke-direct {v1, v2, v6}, Lcom/facebook/ads/internal/i/a/m;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/i/a/n;)V

    throw v1

    :catchall_2
    move-exception v1

    move-object v2, v4

    goto :goto_6

    :catchall_3
    move-exception v1

    if-eqz v3, :cond_12

    invoke-virtual {v6}, Lcom/facebook/ads/internal/i/a/n;->a()I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result v1

    if-lez v1, :cond_12

    iget-object v1, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v1}, Lcom/facebook/ads/internal/i/a/r;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v1, v3}, Lcom/facebook/ads/internal/i/a/r;->a(Lcom/facebook/ads/internal/i/a/n;)V

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    move-object v1, v3

    goto/16 :goto_4

    :cond_12
    :try_start_c
    new-instance v1, Lcom/facebook/ads/internal/i/a/m;

    invoke-direct {v1, v2, v6}, Lcom/facebook/ads/internal/i/a/m;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/i/a/n;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_4
    move-exception v1

    move-object v2, v3

    goto :goto_6

    :catch_3
    move-exception v1

    move-object v2, v1

    move-object v4, v3

    goto/16 :goto_5
.end method

.method public a(Ljava/lang/String;Lcom/facebook/ads/internal/i/a/p;)Lcom/facebook/ads/internal/i/a/n;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/i/a/i;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/i/a/i;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/i/a/p;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/a/a;->b(Lcom/facebook/ads/internal/i/a/l;)Lcom/facebook/ads/internal/i/a/n;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/internal/i/a/n;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->a:Lcom/facebook/ads/internal/i/a/q;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i/a/q;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->a:Lcom/facebook/ads/internal/i/a/q;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/i/a/q;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/i/a/n;

    invoke-direct {v0, p1, v2}, Lcom/facebook/ads/internal/i/a/n;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->a:Lcom/facebook/ads/internal/i/a/q;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i/a/q;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid URL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(Lcom/facebook/ads/internal/i/a/l;Lcom/facebook/ads/internal/i/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->b:Lcom/facebook/ads/internal/i/a/d;

    invoke-interface {v0, p0, p2}, Lcom/facebook/ads/internal/i/a/d;->a(Lcom/facebook/ads/internal/i/a/a;Lcom/facebook/ads/internal/i/a/b;)Lcom/facebook/ads/internal/i/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i/a/c;->a(Lcom/facebook/ads/internal/i/a/l;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/ads/internal/i/a/p;Lcom/facebook/ads/internal/i/a/b;)V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/i/a/k;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/i/a/k;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/i/a/p;)V

    invoke-virtual {p0, v0, p3}, Lcom/facebook/ads/internal/i/a/a;->a(Lcom/facebook/ads/internal/i/a/l;Lcom/facebook/ads/internal/i/a/b;)V

    return-void
.end method

.method protected a(Ljava/net/HttpURLConnection;Lcom/facebook/ads/internal/i/a/j;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/i/a/a;->d:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/facebook/ads/internal/i/a/a;->e:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->a:Lcom/facebook/ads/internal/i/a/q;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/i/a/q;->a(Ljava/net/HttpURLConnection;Lcom/facebook/ads/internal/i/a/j;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/i/a/a;->l:Ljava/util/Set;

    return-void
.end method

.method protected a(Ljava/lang/Throwable;J)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    invoke-interface {v4}, Lcom/facebook/ads/internal/i/a/r;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/facebook/ads/internal/i/a/a;->c:Lcom/facebook/ads/internal/i/a/r;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ELAPSED TIME = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/facebook/ads/internal/i/a/a;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", RT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/facebook/ads/internal/i/a/a;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/facebook/ads/internal/i/a/r;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v4, p0, Lcom/facebook/ads/internal/i/a/a;->j:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/facebook/ads/internal/i/a/a;->e:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/facebook/ads/internal/i/a/a;->d:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public b(Lcom/facebook/ads/internal/i/a/l;)Lcom/facebook/ads/internal/i/a/n;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/a/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/a/l;->b()Lcom/facebook/ads/internal/i/a/j;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/a/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/a/l;->d()[B

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/i/a/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/i/a/j;Ljava/lang/String;[B)Lcom/facebook/ads/internal/i/a/n;
    :try_end_0
    .catch Lcom/facebook/ads/internal/i/a/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/facebook/ads/internal/i/a/a;->a:Lcom/facebook/ads/internal/i/a/q;

    invoke-interface {v2, v1}, Lcom/facebook/ads/internal/i/a/q;->a(Lcom/facebook/ads/internal/i/a/m;)Z

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/facebook/ads/internal/i/a/a;->a:Lcom/facebook/ads/internal/i/a/q;

    new-instance v3, Lcom/facebook/ads/internal/i/a/m;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/internal/i/a/m;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/i/a/n;)V

    invoke-interface {v2, v3}, Lcom/facebook/ads/internal/i/a/q;->a(Lcom/facebook/ads/internal/i/a/m;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Lcom/facebook/ads/internal/i/a/p;)Lcom/facebook/ads/internal/i/a/n;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/i/a/k;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/i/a/k;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/i/a/p;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/a/a;->b(Lcom/facebook/ads/internal/i/a/l;)Lcom/facebook/ads/internal/i/a/n;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/internal/i/a/n;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/i/a/a;->a:Lcom/facebook/ads/internal/i/a/q;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/i/a/q;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/i/a/n;

    invoke-direct {v0, p1, v2}, Lcom/facebook/ads/internal/i/a/n;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public b()Lcom/facebook/ads/internal/i/a/p;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/i/a/p;

    invoke-direct {v0}, Lcom/facebook/ads/internal/i/a/p;-><init>()V

    return-object v0
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum retries must be between 1 and 18"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/facebook/ads/internal/i/a/a;->h:I

    return-void
.end method

.method public b(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/i/a/a;->k:Ljava/util/Set;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/i/a/a;->d:I

    return-void
.end method
