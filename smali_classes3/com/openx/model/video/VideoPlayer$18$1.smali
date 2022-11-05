.class Lcom/openx/model/video/VideoPlayer$18$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/model/video/VideoPlayer$18;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoPlayer$18;)V
    .locals 0

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$18$1;->this$1:Lcom/openx/model/video/VideoPlayer$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1635
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$18$1;->this$1:Lcom/openx/model/video/VideoPlayer$18;

    iget-object v2, v2, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v2}, Lcom/openx/model/video/VideoPlayer;->access$2900(Lcom/openx/model/video/VideoPlayer;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1639
    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$18$1;->this$1:Lcom/openx/model/video/VideoPlayer$18;

    iget-object v2, v2, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v2}, Lcom/openx/model/video/VideoPlayer;->access$3100(Lcom/openx/model/video/VideoPlayer;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18$1;->this$1:Lcom/openx/model/video/VideoPlayer$18;

    iget-object v0, v0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3200(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1642
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1643
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1644
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1645
    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$18$1;->this$1:Lcom/openx/model/video/VideoPlayer$18;

    iget-object v1, v1, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v1}, Lcom/openx/model/video/VideoPlayer;->access$3200(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1647
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$18$1;->this$1:Lcom/openx/model/video/VideoPlayer$18;

    iget-object v0, v0, Lcom/openx/model/video/VideoPlayer$18;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3300(Lcom/openx/model/video/VideoPlayer;)V

    .line 1649
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1630
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1625
    return-void
.end method
