.class Lcom/adcolony/sdk/ca$d$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$d$a;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/ca$d$a;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$d$a;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/adcolony/sdk/ca$d$a$1;->b:Lcom/adcolony/sdk/ca$d$a;

    iput-object p2, p0, Lcom/adcolony/sdk/ca$d$a$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a$1;->a:Ljava/util/Map;

    const-string v1, "x"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a$1;->a:Ljava/util/Map;

    const-string v1, "y"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a$1;->a:Ljava/util/Map;

    const-string v1, "x"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 411
    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$a$1;->a:Ljava/util/Map;

    const-string v2, "y"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 412
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 413
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 415
    int-to-float v0, v0

    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 416
    iget-object v2, p0, Lcom/adcolony/sdk/ca$d$a$1;->b:Lcom/adcolony/sdk/ca$d$a;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$d;->e:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 418
    int-to-float v0, v1

    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 419
    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$a$1;->b:Lcom/adcolony/sdk/ca$d$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->e:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 421
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a$1;->b:Lcom/adcolony/sdk/ca$d$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->e:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a$1;->b:Lcom/adcolony/sdk/ca$d$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$a$1;->b:Lcom/adcolony/sdk/ca$d$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a$1;->a:Ljava/util/Map;

    const-string v1, "enabled"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a$1;->a:Ljava/util/Map;

    const-string v1, "enabled"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 426
    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a$1;->b:Lcom/adcolony/sdk/ca$d$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a$1;->b:Lcom/adcolony/sdk/ca$d$a;

    invoke-static {v0}, Lcom/adcolony/sdk/ca$d$a;->a(Lcom/adcolony/sdk/ca$d$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 431
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 432
    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$a$1;->b:Lcom/adcolony/sdk/ca$d$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 433
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a$1;->b:Lcom/adcolony/sdk/ca$d$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/ca$d$a;->a(Lcom/adcolony/sdk/ca$d$a;Z)Z

    .line 439
    :cond_1
    :goto_0
    return-void

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a$1;->b:Lcom/adcolony/sdk/ca$d$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
