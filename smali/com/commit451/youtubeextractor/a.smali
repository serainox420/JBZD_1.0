.class public abstract Lcom/commit451/youtubeextractor/a;
.super Ljava/lang/Object;
.source "BaseExtractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/commit451/youtubeextractor/f;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lokhttp3/OkHttpClient$Builder;Lretrofit2/CallAdapter$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lokhttp3/OkHttpClient$Builder;",
            "Lretrofit2/CallAdapter$Factory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/commit451/youtubeextractor/f;

    invoke-direct {v0}, Lcom/commit451/youtubeextractor/f;-><init>()V

    iput-object v0, p0, Lcom/commit451/youtubeextractor/a;->b:Lcom/commit451/youtubeextractor/f;

    .line 30
    if-nez p2, :cond_0

    .line 31
    new-instance p2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/commit451/youtubeextractor/a;->b:Lcom/commit451/youtubeextractor/f;

    invoke-virtual {p2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 35
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 37
    const-string v1, "https://www.youtube.com/"

    .line 38
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 40
    invoke-static {}, Lcom/commit451/youtubeextractor/d;->a()Lcom/commit451/youtubeextractor/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 42
    if-eqz p3, :cond_1

    .line 43
    invoke-virtual {v0, p3}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 46
    :cond_1
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/commit451/youtubeextractor/a;->a:Ljava/lang/Object;

    .line 47
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/commit451/youtubeextractor/a;->a:Ljava/lang/Object;

    return-object v0
.end method
