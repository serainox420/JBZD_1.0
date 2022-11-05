.class Lcom/smaato/soma/internal/VideoPlayerView$1;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/smaato/soma/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/VideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/smaato/soma/internal/VideoPlayerView$1;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smaato/soma/VideoInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StartingVideoFailed;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    invoke-interface {p1}, Lcom/smaato/soma/VideoInterface;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    throw v0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    new-instance v1, Lcom/smaato/soma/exception/StartingVideoFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/StartingVideoFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lcom/smaato/soma/VideoInterface;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
