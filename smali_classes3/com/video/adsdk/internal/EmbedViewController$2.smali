.class Lcom/video/adsdk/internal/EmbedViewController$2;
.super Ljava/lang/Object;
.source "EmbedViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/EmbedViewController;->finishAdvertising()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/EmbedViewController;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/EmbedViewController;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/video/adsdk/internal/EmbedViewController$2;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$2;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v0}, Lcom/video/adsdk/internal/EmbedViewController;->access$200(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$2;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v0}, Lcom/video/adsdk/internal/EmbedViewController;->access$100(Lcom/video/adsdk/internal/EmbedViewController;)Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/internal/ADVideoView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 96
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$2;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v0}, Lcom/video/adsdk/internal/EmbedViewController;->access$200(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$2;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v0}, Lcom/video/adsdk/internal/EmbedViewController;->access$100(Lcom/video/adsdk/internal/EmbedViewController;)Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/internal/ADVideoView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    if-ltz v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$2;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v0}, Lcom/video/adsdk/internal/EmbedViewController;->access$200(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/video/adsdk/internal/EmbedViewController$2;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v2}, Lcom/video/adsdk/internal/EmbedViewController;->access$000(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
