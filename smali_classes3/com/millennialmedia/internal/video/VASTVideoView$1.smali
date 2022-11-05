.class Lcom/millennialmedia/internal/video/VASTVideoView$1;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$InLineAd;Ljava/util/List;Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$1;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$1;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->d(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 511
    return-void
.end method
