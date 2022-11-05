.class public Lnet/gotev/uploadservice/a/a/c;
.super Ljava/lang/Object;
.source "HurlStackConnection.java"

# interfaces
.implements Lnet/gotev/uploadservice/a/b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lnet/gotev/uploadservice/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/a/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "creating new connection"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    .line 43
    :goto_0
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 44
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 45
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 46
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 47
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 48
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 49
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 50
    return-void

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    .line 107
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    sget v1, Lnet/gotev/uploadservice/UploadService;->f:I

    new-array v1, v1, [B

    .line 113
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    .line 114
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private b()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 87
    :try_start_0
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 88
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 93
    :goto_0
    invoke-direct {p0, v1}, Lnet/gotev/uploadservice/a/a/c;->a(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 96
    if-eqz v1, :cond_0

    .line 98
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :cond_0
    :goto_1
    return-object v0

    .line 90
    :cond_1
    :try_start_2
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    sget-object v2, Lnet/gotev/uploadservice/a/a/c;->a:Ljava/lang/String;

    const-string v3, "Error while closing server response stream"

    invoke-static {v2, v3, v1}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 98
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 101
    :cond_2
    :goto_2
    throw v0

    .line 99
    :catch_1
    move-exception v1

    .line 100
    sget-object v2, Lnet/gotev/uploadservice/a/a/c;->a:Ljava/lang/String;

    const-string v3, "Error while closing server response stream"

    invoke-static {v2, v3, v1}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private c()Ljava/util/LinkedHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 126
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 128
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 134
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 138
    goto :goto_0
.end method


# virtual methods
.method public a(Lnet/gotev/uploadservice/a/b$a;)Lnet/gotev/uploadservice/ServerResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lnet/gotev/uploadservice/a/a/a;

    iget-object v1, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/a/a/a;-><init>(Ljava/io/OutputStream;)V

    .line 145
    invoke-interface {p1, v0}, Lnet/gotev/uploadservice/a/b$a;->a(Lnet/gotev/uploadservice/a/a;)V

    .line 146
    invoke-virtual {v0}, Lnet/gotev/uploadservice/a/a/a;->a()V

    .line 148
    new-instance v0, Lnet/gotev/uploadservice/ServerResponse;

    iget-object v1, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 149
    invoke-direct {p0}, Lnet/gotev/uploadservice/a/a/c;->b()[B

    move-result-object v2

    invoke-direct {p0}, Lnet/gotev/uploadservice/a/a/c;->c()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/gotev/uploadservice/ServerResponse;-><init>(I[BLjava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public a(JZ)Lnet/gotev/uploadservice/a/b;
    .locals 3

    .prologue
    .line 63
    if-eqz p3, :cond_2

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    .line 80
    :goto_0
    return-object p0

    .line 68
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You need Android API version 19 or newer to upload more than 2GB in a single request using fixed size content length. Try switching to chunked mode instead, but make sure your server side supports it!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Lnet/gotev/uploadservice/a/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;)",
            "Lnet/gotev/uploadservice/a/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/NameValue;

    .line 55
    iget-object v2, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/NameValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/gotev/uploadservice/NameValue;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    return-object p0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "closing connection"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 162
    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 163
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :goto_1
    :try_start_2
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :cond_0
    :goto_2
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    sget-object v1, Lnet/gotev/uploadservice/a/a/c;->a:Ljava/lang/String;

    const-string v2, "Error while closing connection"

    invoke-static {v1, v2, v0}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 164
    :catch_1
    move-exception v0

    goto :goto_1

    .line 159
    :catch_2
    move-exception v0

    goto :goto_0
.end method
