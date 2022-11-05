.class Lcom/openx/model/video/VideoPlayer$19;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->videoInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoPlayer;)V
    .locals 0

    .prologue
    .line 1724
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1728
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3600(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1731
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1700(Lcom/openx/model/video/VideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v1}, Lcom/openx/model/video/VideoPlayer;->access$3700(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1732
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0, v4}, Lcom/openx/model/video/VideoPlayer;->access$202(Lcom/openx/model/video/VideoPlayer;Z)Z

    .line 1734
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$200(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3700(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->run()V

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$800(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/view/video/PublisherVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/video/PublisherVideoView;->invalidate()V

    .line 1741
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3100(Lcom/openx/model/video/VideoPlayer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3800(Lcom/openx/model/video/VideoPlayer;)I

    move-result v0

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v1}, Lcom/openx/model/video/VideoPlayer;->access$3100(Lcom/openx/model/video/VideoPlayer;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1742
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipCounter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v2}, Lcom/openx/model/video/VideoPlayer;->access$3800(Lcom/openx/model/video/VideoPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " skipOffset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v2}, Lcom/openx/model/video/VideoPlayer;->access$3100(Lcom/openx/model/video/VideoPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1745
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    iget-object v2, v2, Lcom/openx/model/video/VideoPlayer;->bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1746
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1747
    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v1}, Lcom/openx/model/video/VideoPlayer;->access$3200(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1749
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3900(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/video/CustomVideoAdProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1750
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v1}, Lcom/openx/model/video/VideoPlayer;->access$3900(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/video/CustomVideoAdProperties;

    move-result-object v1

    iget-object v1, v1, Lcom/openx/model/video/CustomVideoAdProperties;->skipText:Ljava/lang/String;

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v2}, Lcom/openx/model/video/VideoPlayer;->access$3100(Lcom/openx/model/video/VideoPlayer;)I

    move-result v2

    iget-object v3, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v3}, Lcom/openx/model/video/VideoPlayer;->access$3800(Lcom/openx/model/video/VideoPlayer;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/openx/model/video/VideoPlayer;->access$4000(Lcom/openx/model/video/VideoPlayer;Ljava/lang/String;II)V

    .line 1758
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v1}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoPlayer;->access$4102(Lcom/openx/model/video/VideoPlayer;I)I

    .line 1759
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v1}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoPlayer;->access$4202(Lcom/openx/model/video/VideoPlayer;I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    :goto_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0, v4}, Lcom/openx/model/video/VideoPlayer;->access$4102(Lcom/openx/model/video/VideoPlayer;I)I

    .line 1765
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0, v4}, Lcom/openx/model/video/VideoPlayer;->access$4202(Lcom/openx/model/video/VideoPlayer;I)I

    .line 1767
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1769
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$800(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/view/video/PublisherVideoView;

    move-result-object v0

    new-instance v1, Lcom/openx/model/video/VideoPlayer$19$1;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$19$1;-><init>(Lcom/openx/model/video/VideoPlayer$19;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/video/PublisherVideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1789
    :cond_2
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$4400(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1790
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {v0, v5, v4}, Lcom/openx/model/video/VideoPlayer;->toggleFullOrCollapsed(ZZ)V

    .line 1791
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0, v4}, Lcom/openx/model/video/VideoPlayer;->access$4402(Lcom/openx/model/video/VideoPlayer;Z)Z

    .line 1794
    :cond_3
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1800(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1795
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {v0, v5, v4}, Lcom/openx/model/video/VideoPlayer;->toggleFullOrCollapsed(ZZ)V

    .line 1799
    :goto_1
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3300(Lcom/openx/model/video/VideoPlayer;)V

    .line 1802
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1804
    :try_start_1
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1500(Lcom/openx/model/video/VideoPlayer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1811
    :cond_4
    :goto_2
    return-void

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE: videoInit 1"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1797
    :cond_5
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-virtual {v0, v4, v4}, Lcom/openx/model/video/VideoPlayer;->toggleFullOrCollapsed(ZZ)V

    goto :goto_1

    .line 1805
    :catch_1
    move-exception v0

    .line 1806
    const-string v0, "VideoPlayer"

    const-string v1, "Could not request audio manager focus"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
