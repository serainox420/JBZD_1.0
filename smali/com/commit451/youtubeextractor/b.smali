.class public interface abstract Lcom/commit451/youtubeextractor/b;
.super Ljava/lang/Object;
.source "YouTube.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "video_id"
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/GET;
        value = "get_video_info?el=info&ps=default&gl=US"
    .end annotation
.end method
