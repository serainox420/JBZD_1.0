.class Lcom/openx/model/video/VideoAdManager$2;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoAdManager;->createOnGLobalLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isOutOfBounds:Z

.field final synthetic this$0:Lcom/openx/model/video/VideoAdManager;

.field final synthetic val$bottomHeight:I

.field final synthetic val$statusBarHeight:I


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoAdManager;II)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    iput p2, p0, Lcom/openx/model/video/VideoAdManager$2;->val$statusBarHeight:I

    iput p3, p0, Lcom/openx/model/video/VideoAdManager$2;->val$bottomHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 825
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v3}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/VideoView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v4}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 827
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 829
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$100(Lcom/openx/model/video/VideoAdManager;)I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 832
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v5}, Lcom/openx/model/video/VideoAdManager;->access$102(Lcom/openx/model/video/VideoAdManager;I)I

    .line 834
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 836
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    const-string v0, "VAST"

    const-string v1, "new removingListener > 16"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-static {}, Lcom/openx/model/video/VideoAdManager;->access$300()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/openx/model/video/VideoAdManager$2$1;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoAdManager$2$1;-><init>(Lcom/openx/model/video/VideoAdManager$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 874
    :cond_0
    :goto_0
    const-string v0, "VAST"

    const-string v1, "onGlobalLayout threadStop"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->threadStop()V

    .line 930
    :cond_1
    :goto_1
    return-void

    .line 855
    :cond_2
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    const-string v0, "VAST"

    const-string v1, "new removingListener"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-static {}, Lcom/openx/model/video/VideoAdManager;->access$300()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/openx/model/video/VideoAdManager$2$2;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoAdManager$2$2;-><init>(Lcom/openx/model/video/VideoAdManager$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 880
    :cond_3
    iget-boolean v1, p0, Lcom/openx/model/video/VideoAdManager$2;->isOutOfBounds:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$400(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/openx/model/video/VideoAdManager$2;->val$statusBarHeight:I

    if-le v1, v2, :cond_4

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/openx/model/video/VideoAdManager$2;->val$bottomHeight:I

    if-le v1, v2, :cond_7

    :cond_4
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v1}, Lcom/openx/model/video/VideoAdManager;->canAutoPlay()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$500(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    .line 885
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$600(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v1

    if-ne v1, v5, :cond_6

    .line 887
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/openx/model/video/VideoAdManager;->access$702(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 890
    :cond_6
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 892
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/openx/model/video/VideoAdManager$2;->isOutOfBounds:Z

    .line 895
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/openx/model/video/VideoAdManager;->access$802(Lcom/openx/model/video/VideoAdManager;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 904
    :cond_7
    :goto_2
    iget-boolean v1, p0, Lcom/openx/model/video/VideoAdManager$2;->isOutOfBounds:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$400(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/openx/model/video/VideoAdManager$2;->val$statusBarHeight:I

    if-le v1, v2, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/openx/model/video/VideoAdManager$2;->val$bottomHeight:I

    if-ge v0, v1, :cond_1

    .line 907
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$800(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->canAutoPlay()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$500(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$600(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-ne v0, v5, :cond_9

    .line 915
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$702(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 918
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoAdManager$2;->isOutOfBounds:Z

    .line 919
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 926
    :goto_3
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$2;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->threadResume()V

    goto/16 :goto_1

    .line 921
    :catch_0
    move-exception v0

    goto :goto_3

    .line 897
    :catch_1
    move-exception v1

    goto :goto_2
.end method
