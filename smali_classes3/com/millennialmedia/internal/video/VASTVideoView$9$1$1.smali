.class Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$9$1;)V
    .locals 0

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;->a:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;->a:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->b:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$9;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 1062
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;->a:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->b:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$9;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->j(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->companionClickThrough:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;->a:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->b:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$9;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->j(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->companionClickThrough:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;->a:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->b:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$9;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->n(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 1067
    return-void
.end method
