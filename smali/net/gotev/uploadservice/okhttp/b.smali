.class public Lnet/gotev/uploadservice/okhttp/b;
.super Ljava/lang/Object;
.source "OkHttpStack.java"

# interfaces
.implements Lnet/gotev/uploadservice/a/c;


# instance fields
.field private a:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1e

    const/4 v1, 0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 21
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0xf

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/okhttp/b;->a:Lokhttp3/OkHttpClient;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lnet/gotev/uploadservice/okhttp/c;

    iget-object v1, p0, Lnet/gotev/uploadservice/okhttp/b;->a:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1, p1, p2}, Lnet/gotev/uploadservice/okhttp/c;-><init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
