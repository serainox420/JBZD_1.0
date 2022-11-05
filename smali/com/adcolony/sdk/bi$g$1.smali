.class Lcom/adcolony/sdk/bi$g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bi$g;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/bi$g;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bi$g;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/adcolony/sdk/bi$g$1;->b:Lcom/adcolony/sdk/bi$g;

    iput-object p2, p0, Lcom/adcolony/sdk/bi$g$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 642
    iget-object v0, p0, Lcom/adcolony/sdk/bi$g$1;->a:Ljava/util/Map;

    const-string v1, "x"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bi$g$1;->a:Ljava/util/Map;

    const-string v1, "y"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/adcolony/sdk/bi$g$1;->a:Ljava/util/Map;

    const-string v1, "x"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 644
    iget-object v1, p0, Lcom/adcolony/sdk/bi$g$1;->a:Ljava/util/Map;

    const-string v2, "y"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 645
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 646
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 648
    int-to-float v0, v0

    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 649
    iget-object v2, p0, Lcom/adcolony/sdk/bi$g$1;->b:Lcom/adcolony/sdk/bi$g;

    iget-object v2, v2, Lcom/adcolony/sdk/bi$g;->a:Lcom/adcolony/sdk/bi;

    iget-object v2, v2, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 651
    int-to-float v0, v1

    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 652
    iget-object v1, p0, Lcom/adcolony/sdk/bi$g$1;->b:Lcom/adcolony/sdk/bi$g;

    iget-object v1, v1, Lcom/adcolony/sdk/bi$g;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 654
    iget-object v0, p0, Lcom/adcolony/sdk/bi$g$1;->b:Lcom/adcolony/sdk/bi$g;

    iget-object v0, v0, Lcom/adcolony/sdk/bi$g;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bi$g$1;->a:Ljava/util/Map;

    const-string v1, "enabled"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/adcolony/sdk/bi$g$1;->a:Ljava/util/Map;

    const-string v1, "enabled"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 658
    if-eqz v0, :cond_2

    .line 659
    iget-object v0, p0, Lcom/adcolony/sdk/bi$g$1;->b:Lcom/adcolony/sdk/bi$g;

    iget-object v0, v0, Lcom/adcolony/sdk/bi$g;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/adcolony/sdk/bi$g$1;->b:Lcom/adcolony/sdk/bi$g;

    invoke-static {v0}, Lcom/adcolony/sdk/bi$g;->a(Lcom/adcolony/sdk/bi$g;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 662
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 663
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 664
    iget-object v1, p0, Lcom/adcolony/sdk/bi$g$1;->b:Lcom/adcolony/sdk/bi$g;

    iget-object v1, v1, Lcom/adcolony/sdk/bi$g;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 665
    iget-object v0, p0, Lcom/adcolony/sdk/bi$g$1;->b:Lcom/adcolony/sdk/bi$g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/bi$g;->a(Lcom/adcolony/sdk/bi$g;Z)Z

    .line 671
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/bi$g$1;->b:Lcom/adcolony/sdk/bi$g;

    iget-object v0, v0, Lcom/adcolony/sdk/bi$g;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$g$1;->b:Lcom/adcolony/sdk/bi$g;

    iget-object v1, v1, Lcom/adcolony/sdk/bi$g;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    return-void

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/bi$g$1;->b:Lcom/adcolony/sdk/bi$g;

    iget-object v0, v0, Lcom/adcolony/sdk/bi$g;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
