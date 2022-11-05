.class Lcom/openx/model/video/VideoAdManager$5;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoAdManager;->setErrorViewLink(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoAdManager;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoAdManager;)V
    .locals 0

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1561
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v2}, Lcom/openx/model/video/VideoAdManager;->access$2102(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 1562
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2200(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1563
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2300(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1565
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2400(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1566
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2500(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;->videoPlayerClosed()V

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1568
    :cond_1
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2600(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1570
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2700(Lcom/openx/model/video/VideoAdManager;)V

    .line 1581
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->threadResume()V

    .line 1583
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2900(Lcom/openx/model/video/VideoAdManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1585
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$3200(Lcom/openx/model/video/VideoAdManager;)V

    goto :goto_0

    .line 1572
    :cond_3
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2800(Lcom/openx/model/video/VideoAdManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2800(Lcom/openx/model/video/VideoAdManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$2900(Lcom/openx/model/video/VideoAdManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1}, Lcom/openx/model/video/VideoAdManager;->access$2800(Lcom/openx/model/video/VideoAdManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1574
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v2}, Lcom/openx/model/video/VideoAdManager;->access$3002(Lcom/openx/model/video/VideoAdManager;I)I

    .line 1575
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v2}, Lcom/openx/model/video/VideoAdManager;->access$3102(Lcom/openx/model/video/VideoAdManager;I)I

    .line 1577
    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2800(Lcom/openx/model/video/VideoAdManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$2800(Lcom/openx/model/video/VideoAdManager;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v3}, Lcom/openx/model/video/VideoAdManager;->access$2900(Lcom/openx/model/video/VideoAdManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/openx/model/video/VideoAdManager;->access$2902(Lcom/openx/model/video/VideoAdManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1586
    :cond_4
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2900(Lcom/openx/model/video/VideoAdManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$3300(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$5;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$3400(Lcom/openx/model/video/VideoAdManager;)V

    .line 1588
    const-string v0, "VideoAdManager"

    const-string v1, "native video: try loading the ad again, in case of error"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
