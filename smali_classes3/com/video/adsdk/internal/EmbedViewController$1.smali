.class Lcom/video/adsdk/internal/EmbedViewController$1;
.super Ljava/lang/Object;
.source "EmbedViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/EmbedViewController;->displayAdvertising()V
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
    .line 33
    iput-object p1, p0, Lcom/video/adsdk/internal/EmbedViewController$1;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$1;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v0}, Lcom/video/adsdk/internal/EmbedViewController;->access$000(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 38
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$1;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v0}, Lcom/video/adsdk/internal/EmbedViewController;->access$100(Lcom/video/adsdk/internal/EmbedViewController;)Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$1;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    iget-object v1, p0, Lcom/video/adsdk/internal/EmbedViewController$1;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v1}, Lcom/video/adsdk/internal/EmbedViewController;->access$000(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/video/adsdk/utils/ViewGroupUtils;->getParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/video/adsdk/internal/EmbedViewController;->access$202(Lcom/video/adsdk/internal/EmbedViewController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 41
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$1;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v0}, Lcom/video/adsdk/internal/EmbedViewController;->access$200(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/video/adsdk/internal/EmbedViewController$1;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v1}, Lcom/video/adsdk/internal/EmbedViewController;->access$000(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 42
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$1;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v0}, Lcom/video/adsdk/internal/EmbedViewController;->access$200(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/video/adsdk/internal/EmbedViewController$1;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v2}, Lcom/video/adsdk/internal/EmbedViewController;->access$000(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$1;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v0}, Lcom/video/adsdk/internal/EmbedViewController;->access$200(Lcom/video/adsdk/internal/EmbedViewController;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$1;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    invoke-static {v0}, Lcom/video/adsdk/internal/EmbedViewController;->access$100(Lcom/video/adsdk/internal/EmbedViewController;)Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/internal/ADVideoView;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 45
    return-void
.end method
