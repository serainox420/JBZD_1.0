.class public Lcom/commit451/youtubeextractor/e;
.super Lcom/commit451/youtubeextractor/a;
.source "YouTubeExtractor.java"

# interfaces
.implements Lcom/commit451/youtubeextractor/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/commit451/youtubeextractor/a",
        "<",
        "Lcom/commit451/youtubeextractor/b;",
        ">;",
        "Lcom/commit451/youtubeextractor/b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/commit451/youtubeextractor/e;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/commit451/youtubeextractor/b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/commit451/youtubeextractor/a;-><init>(Ljava/lang/Class;Lokhttp3/OkHttpClient$Builder;Lretrofit2/CallAdapter$Factory;)V

    .line 39
    return-void
.end method

.method public static b()Lcom/commit451/youtubeextractor/e;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/commit451/youtubeextractor/e;

    invoke-direct {v0}, Lcom/commit451/youtubeextractor/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lretrofit2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/commit451/youtubeextractor/YouTubeExtractionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/commit451/youtubeextractor/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/commit451/youtubeextractor/b;

    invoke-interface {v0, p1}, Lcom/commit451/youtubeextractor/b;->a(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method
