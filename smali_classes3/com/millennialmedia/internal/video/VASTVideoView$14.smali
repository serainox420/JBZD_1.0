.class Lcom/millennialmedia/internal/video/VASTVideoView$14;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->a:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1329
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 1332
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->a:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->a:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->a:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    .line 1336
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->a:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Z)V

    .line 1337
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;Z)V

    .line 1344
    :goto_0
    return-void

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->a:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    invoke-static {v0, v1, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Z)V

    .line 1342
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->b:Ljava/util/List;

    invoke-static {v0, v1, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;Z)V

    goto :goto_0
.end method
