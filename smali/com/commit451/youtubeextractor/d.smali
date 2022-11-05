.class Lcom/commit451/youtubeextractor/d;
.super Lretrofit2/Converter$Factory;
.source "YouTubeExtractionConverterFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    return-void
.end method

.method public static a()Lcom/commit451/youtubeextractor/d;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/commit451/youtubeextractor/d;

    invoke-direct {v0}, Lcom/commit451/youtubeextractor/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 24
    const-class v0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    if-ne p1, v0, :cond_0

    .line 25
    new-instance v0, Lcom/commit451/youtubeextractor/c;

    invoke-virtual {p3}, Lretrofit2/Retrofit;->baseUrl()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/commit451/youtubeextractor/c;-><init>(Lokhttp3/HttpUrl;)V

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
