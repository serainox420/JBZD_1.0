.class Lcom/millennialmedia/internal/video/MMVideoView$7;
.super Ljava/lang/Object;
.source "MMVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/MMVideoView;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/MMVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$7;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$7;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->i(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/MMVideoView$MediaController;->onPause()V

    .line 650
    return-void
.end method
