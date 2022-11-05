.class Lcom/openx/model/video/VideoPlayer$18;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->fadeOutBar()V
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
    .line 1601
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1606
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$700(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1608
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1500(Lcom/openx/model/video/VideoPlayer;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/openx/android_sdk_openx/R$anim;->openx_slide_up_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1610
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1611
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1613
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1614
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1615
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1617
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1500(Lcom/openx/model/video/VideoPlayer;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/openx/android_sdk_openx/R$anim;->openx_slide_down_out:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1618
    iget-object v3, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v3}, Lcom/openx/model/video/VideoPlayer;->access$1500(Lcom/openx/model/video/VideoPlayer;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/openx/android_sdk_openx/R$anim;->openx_slide_skip_down_out:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1620
    new-instance v4, Lcom/openx/model/video/VideoPlayer$18$1;

    invoke-direct {v4, p0}, Lcom/openx/model/video/VideoPlayer$18$1;-><init>(Lcom/openx/model/video/VideoPlayer$18;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1652
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1654
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1655
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1657
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$900(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1659
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    iget-object v0, v0, Lcom/openx/model/video/VideoPlayer;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1661
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    iget-object v0, v0, Lcom/openx/model/video/VideoPlayer;->bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1662
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3400(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1664
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3100(Lcom/openx/model/video/VideoPlayer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3200(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3200(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3500(Lcom/openx/model/video/VideoPlayer;)V

    .line 1680
    :cond_1
    :goto_0
    return-void

    .line 1677
    :cond_2
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0, v5}, Lcom/openx/model/video/VideoPlayer;->access$702(Lcom/openx/model/video/VideoPlayer;Z)Z

    goto :goto_0
.end method
