.class public Lcom/google/android/exoplayer2/upstream/l;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/exoplayer2/util/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/n",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

.field private final j:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

.field private final k:Lcom/google/android/exoplayer2/upstream/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/r",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/l;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/android/exoplayer2/upstream/g;

.field private m:Ljava/net/HttpURLConnection;

.field private n:Ljava/io/InputStream;

.field private o:Z

.field private p:J

.field private q:J

.field private r:J

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/l;->b:Ljava/util/regex/Pattern;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/l;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/n;Lcom/google/android/exoplayer2/upstream/r;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/n",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/r",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/l;",
            ">;IIZ",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->g:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/l;->h:Lcom/google/android/exoplayer2/util/n;

    .line 150
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/l;->k:Lcom/google/android/exoplayer2/upstream/r;

    .line 151
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->j:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    .line 152
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/l;->e:I

    .line 153
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/l;->f:I

    .line 154
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/upstream/l;->d:Z

    .line 155
    iput-object p7, p0, Lcom/google/android/exoplayer2/upstream/l;->i:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    .line 156
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .locals 9

    .prologue
    .line 470
    const-wide/16 v0, -0x1

    .line 471
    const-string v2, "Content-Length"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 479
    :cond_0
    :goto_0
    const-string v2, "Content-Range"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 480
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    sget-object v2, Lcom/google/android/exoplayer2/upstream/l;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 482
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    const/4 v3, 0x2

    .line 485
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    sub-long v2, v6, v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 486
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    move-wide v0, v2

    .line 504
    :cond_1
    :goto_1
    return-wide v0

    .line 475
    :catch_0
    move-exception v2

    .line 476
    const-string v2, "DefaultHttpDataSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected Content-Length ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 490
    :cond_2
    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    .line 495
    :try_start_2
    const-string v6, "DefaultHttpDataSource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inconsistent headers ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "] ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 499
    :catch_1
    move-exception v2

    .line 500
    const-string v2, "DefaultHttpDataSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected Content-Range ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 393
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 394
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/l;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 395
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/l;->f:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 396
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/l;->i:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/l;->i:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 398
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/l;->j:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 402
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 404
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_2

    cmp-long v1, p5, v4

    if-eqz v1, :cond_4

    .line 405
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    cmp-long v2, p5, v4

    if-eqz v2, :cond_3

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-long v2, p3, p5

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    :cond_3
    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_4
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/l;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    if-nez p7, :cond_5

    .line 413
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_5
    invoke-virtual {v0, p8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 416
    if-eqz p2, :cond_6

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 417
    if-eqz p2, :cond_8

    .line 418
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 419
    array-length v1, p2

    if-nez v1, :cond_7

    .line 420
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 431
    :goto_3
    return-object v0

    .line 416
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 422
    :cond_7
    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 423
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 424
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 425
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 426
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 429
    :cond_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_3
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Null location redirect"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 450
    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 451
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported protocol redirect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;J)V
    .locals 5

    .prologue
    .line 599
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 605
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    .line 607
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 615
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 616
    const-string v2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 617
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 620
    const-string v2, "unexpectedEndOfInput"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 621
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 622
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    goto :goto_0

    .line 610
    :cond_4
    const-wide/16 v2, 0x800

    cmp-long v1, p1, v2

    if-gtz v1, :cond_2

    goto :goto_0
.end method

.method private b([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, -0x1

    .line 560
    if-nez p3, :cond_1

    .line 561
    const/4 v0, 0x0

    .line 584
    :cond_0
    :goto_0
    return v0

    .line 563
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/l;->q:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    .line 564
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/l;->q:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/l;->s:J

    sub-long/2addr v2, v4

    .line 565
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 568
    int-to-long v4, p3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 571
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/l;->n:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 572
    if-ne v1, v0, :cond_3

    .line 573
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/l;->q:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 575
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 580
    :cond_3
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/l;->s:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/l;->s:J

    .line 581
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->k:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v0, :cond_4

    .line 582
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->k:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;I)V

    :cond_4
    move v0, v1

    .line 584
    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer2/upstream/g;)Ljava/net/HttpURLConnection;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 341
    new-instance v2, Ljava/net/URL;

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 342
    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/g;->b:[B

    .line 343
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/g;->d:J

    .line 344
    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    .line 345
    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer2/upstream/g;->a(I)Z

    move-result v8

    .line 347
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/l;->d:Z

    if-nez v0, :cond_1

    move-object v1, p0

    .line 350
    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/upstream/l;->a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 373
    :cond_0
    return-object v0

    :cond_1
    move v0, v10

    .line 355
    :goto_0
    add-int/lit8 v11, v0, 0x1

    const/16 v1, 0x14

    if-gt v0, v1, :cond_3

    move-object v1, p0

    move v9, v10

    .line 356
    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/upstream/l;->a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 359
    const/16 v9, 0x12c

    if-eq v1, v9, :cond_2

    const/16 v9, 0x12d

    if-eq v1, v9, :cond_2

    const/16 v9, 0x12e

    if-eq v1, v9, :cond_2

    const/16 v9, 0x12f

    if-eq v1, v9, :cond_2

    if-nez v3, :cond_0

    const/16 v3, 0x133

    if-eq v1, v3, :cond_2

    const/16 v3, 0x134

    if-ne v1, v3, :cond_0

    .line 368
    :cond_2
    const/4 v3, 0x0

    .line 369
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 371
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/upstream/l;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    move v0, v11

    .line 375
    goto :goto_0

    .line 378
    :cond_3
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many redirects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/l;->r:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/l;->p:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 521
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/upstream/l;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 522
    if-nez v0, :cond_1

    .line 523
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 526
    :cond_1
    :goto_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/l;->r:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/l;->p:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 527
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/l;->p:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/l;->r:J

    sub-long/2addr v2, v4

    array-length v1, v0

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 528
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/l;->n:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 529
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 532
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 533
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 535
    :cond_3
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/l;->r:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/l;->r:J

    .line 536
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/l;->k:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v2, :cond_1

    .line 537
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/l;->k:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v2, p0, v1}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;I)V

    goto :goto_1

    .line 542
    :cond_4
    sget-object v1, Lcom/google/android/exoplayer2/upstream/l;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->m:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->m:Ljava/net/HttpURLConnection;

    .line 644
    :cond_0
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/l;->d()V

    .line 267
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/l;->b([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/l;->l:Lcom/google/android/exoplayer2/upstream/g;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/g;I)V

    throw v1
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/g;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xc8

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    .line 188
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/l;->l:Lcom/google/android/exoplayer2/upstream/g;

    .line 189
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/l;->s:J

    .line 190
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/l;->r:J

    .line 192
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/l;->b(Lcom/google/android/exoplayer2/upstream/g;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/upstream/l;->m:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :try_start_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/l;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 208
    if-lt v4, v8, :cond_0

    const/16 v5, 0x12b

    if-le v4, v5, :cond_2

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 210
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/l;->e()V

    .line 211
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    invoke-direct {v1, v4, v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/util/Map;Lcom/google/android/exoplayer2/upstream/g;)V

    .line 213
    const/16 v0, 0x1a0

    if-ne v4, v0, :cond_1

    .line 214
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 216
    :cond_1
    throw v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1, v7}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/g;I)V

    throw v1

    .line 201
    :catch_1
    move-exception v0

    .line 202
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/l;->e()V

    .line 203
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1, v7}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/g;I)V

    throw v1

    .line 220
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/l;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 221
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/l;->h:Lcom/google/android/exoplayer2/util/n;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/l;->h:Lcom/google/android/exoplayer2/util/n;

    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 222
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/l;->e()V

    .line 223
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v5, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/g;)V

    throw v0

    .line 229
    :cond_3
    if-ne v4, v8, :cond_4

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/g;->d:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_4

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/g;->d:J

    :cond_4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/l;->p:J

    .line 232
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/upstream/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 233
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 234
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/l;->q:J

    .line 249
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->n:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 255
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/upstream/l;->o:Z

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->k:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v0, :cond_5

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->k:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/g;)V

    .line 260
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/l;->q:J

    return-wide v0

    .line 236
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->m:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/l;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    .line 237
    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/l;->p:J

    sub-long/2addr v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/l;->q:J

    goto :goto_0

    :cond_7
    move-wide v0, v2

    goto :goto_1

    .line 245
    :cond_8
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/l;->q:J

    goto :goto_0

    .line 250
    :catch_2
    move-exception v0

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/l;->e()V

    .line 252
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v7}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/g;I)V

    throw v1
.end method

.method public a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->n:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/l;->c()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/l;->a(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->n:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :cond_0
    iput-object v5, p0, Lcom/google/android/exoplayer2/upstream/l;->n:Ljava/io/InputStream;

    .line 286
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/l;->e()V

    .line 287
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/l;->o:Z

    if-eqz v0, :cond_1

    .line 288
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/l;->o:Z

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->k:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->k:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;)V

    .line 294
    :cond_1
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    :try_start_2
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/l;->l:Lcom/google/android/exoplayer2/upstream/g;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/g;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    :catchall_0
    move-exception v0

    iput-object v5, p0, Lcom/google/android/exoplayer2/upstream/l;->n:Ljava/io/InputStream;

    .line 286
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/l;->e()V

    .line 287
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/l;->o:Z

    if-eqz v1, :cond_2

    .line 288
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/l;->o:Z

    .line 289
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/l;->k:Lcom/google/android/exoplayer2/upstream/r;

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/l;->k:Lcom/google/android/exoplayer2/upstream/r;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/upstream/r;->a(Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->m:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/l;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected final c()J
    .locals 4

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/l;->q:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/l;->q:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/l;->q:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/l;->s:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method
