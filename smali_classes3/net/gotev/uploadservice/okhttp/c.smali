.class public Lnet/gotev/uploadservice/okhttp/c;
.super Ljava/lang/Object;
.source "OkHttpStackConnection.java"

# interfaces
.implements Lnet/gotev/uploadservice/a/b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lokhttp3/OkHttpClient;

.field private c:Lokhttp3/Request$Builder;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Lokhttp3/Response;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lnet/gotev/uploadservice/okhttp/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/okhttp/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "creating new connection"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/gotev/uploadservice/okhttp/c;->g:Lokhttp3/Response;

    .line 41
    iput-object p1, p0, Lnet/gotev/uploadservice/okhttp/c;->b:Lokhttp3/OkHttpClient;

    .line 42
    iput-object p2, p0, Lnet/gotev/uploadservice/okhttp/c;->d:Ljava/lang/String;

    .line 44
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/okhttp/c;->c:Lokhttp3/Request$Builder;

    .line 45
    return-void
.end method

.method static synthetic a(Lnet/gotev/uploadservice/okhttp/c;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lnet/gotev/uploadservice/okhttp/c;->e:J

    return-wide v0
.end method

.method private a(Lokhttp3/Headers;)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
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
    .line 79
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 81
    invoke-virtual {p1}, Lokhttp3/Headers;->names()Ljava/util/Set;

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

    .line 82
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_0
    return-object v1
.end method

.method static synthetic b(Lnet/gotev/uploadservice/okhttp/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/c;->f:Ljava/lang/String;

    return-object v0
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
    .line 90
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    new-instance v0, Lnet/gotev/uploadservice/okhttp/c$1;

    invoke-direct {v0, p0, p1}, Lnet/gotev/uploadservice/okhttp/c$1;-><init>(Lnet/gotev/uploadservice/okhttp/c;Lnet/gotev/uploadservice/a/b$a;)V

    .line 112
    iget-object v1, p0, Lnet/gotev/uploadservice/okhttp/c;->c:Lokhttp3/Request$Builder;

    iget-object v2, p0, Lnet/gotev/uploadservice/okhttp/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 117
    :goto_0
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/c;->b:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lnet/gotev/uploadservice/okhttp/c;->c:Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/okhttp/c;->g:Lokhttp3/Response;

    .line 119
    new-instance v0, Lnet/gotev/uploadservice/ServerResponse;

    iget-object v1, p0, Lnet/gotev/uploadservice/okhttp/c;->g:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    iget-object v2, p0, Lnet/gotev/uploadservice/okhttp/c;->g:Lokhttp3/Response;

    .line 120
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v2

    iget-object v3, p0, Lnet/gotev/uploadservice/okhttp/c;->g:Lokhttp3/Response;

    .line 121
    invoke-virtual {v3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/gotev/uploadservice/okhttp/c;->a(Lokhttp3/Headers;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/gotev/uploadservice/ServerResponse;-><init>(I[BLjava/util/LinkedHashMap;)V

    return-object v0

    .line 114
    :cond_1
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/c;->c:Lokhttp3/Request$Builder;

    iget-object v1, p0, Lnet/gotev/uploadservice/okhttp/c;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0
.end method

.method public a(JZ)Lnet/gotev/uploadservice/a/b;
    .locals 3

    .prologue
    .line 61
    if-eqz p3, :cond_1

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You need Android API version 19 or newer to upload more than 2GB in a single request using fixed size content length. Try switching to chunked mode instead, but make sure your server side supports it!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-wide p1, p0, Lnet/gotev/uploadservice/okhttp/c;->e:J

    .line 75
    :goto_0
    return-object p0

    .line 72
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/gotev/uploadservice/okhttp/c;->e:J

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
    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/NameValue;

    .line 50
    const-string v2, "Content-Type"

    invoke-virtual {v0}, Lnet/gotev/uploadservice/NameValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v0}, Lnet/gotev/uploadservice/NameValue;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/gotev/uploadservice/okhttp/c;->f:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v2, p0, Lnet/gotev/uploadservice/okhttp/c;->c:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/NameValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/gotev/uploadservice/NameValue;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 56
    :cond_1
    return-object p0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "closing connection"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/c;->g:Lokhttp3/Response;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/c;->g:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    sget-object v1, Lnet/gotev/uploadservice/okhttp/c;->a:Ljava/lang/String;

    const-string v2, "Error while closing connection"

    invoke-static {v1, v2, v0}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
