.class Lcom/openx/model/video/VideoAdManager$2$1;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoAdManager$2;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/model/video/VideoAdManager$2;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoAdManager$2;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$2$1;->this$1:Lcom/openx/model/video/VideoAdManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2$1;->this$1:Lcom/openx/model/video/VideoAdManager$2;

    iget-object v0, v0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$2$1;->this$1:Lcom/openx/model/video/VideoAdManager$2;

    iget-object v1, v1, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$200(Lcom/openx/model/video/VideoAdManager;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 848
    return-void
.end method
