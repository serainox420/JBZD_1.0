.class public abstract Landroid/support/design/widget/b;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/b$b;,
        Landroid/support/design/widget/b$f;,
        Landroid/support/design/widget/b$d;,
        Landroid/support/design/widget/b$e;,
        Landroid/support/design/widget/b$c;,
        Landroid/support/design/widget/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/design/widget/b",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Landroid/os/Handler;


# instance fields
.field final b:Landroid/support/design/widget/b$f;

.field final c:Landroid/support/design/widget/o$a;

.field private final d:Landroid/view/ViewGroup;

.field private final e:Landroid/support/design/widget/b$c;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/b$a",
            "<TB;>;>;"
        }
    .end annotation
.end field

.field private final g:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/b$1;

    invoke-direct {v2}, Landroid/support/design/widget/b$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/b;->a:Landroid/os/Handler;

    .line 186
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/b;)Landroid/support/design/widget/b$c;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/design/widget/b;->e:Landroid/support/design/widget/b$c;

    return-object v0
.end method

.method private d(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 530
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-static {v0}, Landroid/support/v4/view/ai;->r(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    .line 532
    invoke-virtual {v1}, Landroid/support/design/widget/b$f;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->c(F)Landroid/support/v4/view/az;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    .line 533
    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/az;

    move-result-object v0

    .line 534
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/az;->a(J)Landroid/support/v4/view/az;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/b$8;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/b$8;-><init>(Landroid/support/design/widget/b;I)V

    .line 535
    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Landroid/support/v4/view/az;->c()V

    .line 565
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0}, Landroid/support/design/widget/b$f;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$anim;->design_snackbar_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 549
    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 550
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 551
    new-instance v1, Landroid/support/design/widget/b$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/b$2;-><init>(Landroid/support/design/widget/b;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 563
    iget-object v1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/b$f;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 2

    .prologue
    .line 326
    invoke-static {}, Landroid/support/design/widget/o;->a()Landroid/support/design/widget/o;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/o$a;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/o;->a(Landroid/support/design/widget/o$a;I)V

    .line 327
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 380
    invoke-static {}, Landroid/support/design/widget/o;->a()Landroid/support/design/widget/o;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/o$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/o;->e(Landroid/support/design/widget/o$a;)Z

    move-result v0

    return v0
.end method

.method final b()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0}, Landroid/support/design/widget/b$f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0}, Landroid/support/design/widget/b$f;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 400
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$c;

    if-eqz v1, :cond_0

    .line 402
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$c;

    .line 404
    new-instance v1, Landroid/support/design/widget/b$b;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$b;-><init>(Landroid/support/design/widget/b;)V

    .line 405
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Landroid/support/design/widget/b$b;->a(F)V

    .line 406
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/support/design/widget/b$b;->b(F)V

    .line 407
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/b$b;->a(I)V

    .line 408
    new-instance v2, Landroid/support/design/widget/b$3;

    invoke-direct {v2, p0}, Landroid/support/design/widget/b$3;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/b$b;->a(Landroid/support/design/widget/SwipeDismissBehavior$a;)V

    .line 431
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$c;->a(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 433
    const/16 v1, 0x50

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$c;->g:I

    .line 436
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/b;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 439
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    new-instance v1, Landroid/support/design/widget/b$4;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$4;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/b$f;->setOnAttachStateChangeListener(Landroid/support/design/widget/b$d;)V

    .line 461
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-static {v0}, Landroid/support/v4/view/ai;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    invoke-virtual {p0}, Landroid/support/design/widget/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    invoke-virtual {p0}, Landroid/support/design/widget/b;->c()V

    .line 486
    :goto_0
    return-void

    .line 467
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/b;->d()V

    goto :goto_0

    .line 471
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    new-instance v1, Landroid/support/design/widget/b$5;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$5;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/b$f;->setOnLayoutChangeListener(Landroid/support/design/widget/b$e;)V

    goto :goto_0
.end method

.method final b(I)V
    .locals 1

    .prologue
    .line 568
    invoke-virtual {p0}, Landroid/support/design/widget/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0}, Landroid/support/design/widget/b$f;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 569
    invoke-direct {p0, p1}, Landroid/support/design/widget/b;->d(I)V

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/b;->c(I)V

    goto :goto_0
.end method

.method c()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 489
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 490
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    iget-object v1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v1}, Landroid/support/design/widget/b$f;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 491
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-static {v0}, Landroid/support/v4/view/ai;->r(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v0

    const/4 v1, 0x0

    .line 492
    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->c(F)Landroid/support/v4/view/az;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    .line 493
    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/az;

    move-result-object v0

    .line 494
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/az;->a(J)Landroid/support/v4/view/az;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/b$6;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$6;-><init>(Landroid/support/design/widget/b;)V

    .line 495
    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Landroid/support/v4/view/az;->c()V

    .line 527
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0}, Landroid/support/design/widget/b$f;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$anim;->design_snackbar_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 511
    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 512
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 513
    new-instance v1, Landroid/support/design/widget/b$7;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$7;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 525
    iget-object v1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/b$f;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method c(I)V
    .locals 2

    .prologue
    .line 590
    invoke-static {}, Landroid/support/design/widget/o;->a()Landroid/support/design/widget/o;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/o$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/o;->a(Landroid/support/design/widget/o$a;)V

    .line 591
    iget-object v0, p0, Landroid/support/design/widget/b;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Landroid/support/design/widget/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 595
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 596
    iget-object v0, p0, Landroid/support/design/widget/b;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/b$a;

    invoke-virtual {v0, p0, p1}, Landroid/support/design/widget/b$a;->a(Ljava/lang/Object;I)V

    .line 595
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 599
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 605
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/b$f;->setVisibility(I)V

    .line 608
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0}, Landroid/support/design/widget/b$f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 609
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 610
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/b;->b:Landroid/support/design/widget/b$f;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 612
    :cond_2
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 577
    invoke-static {}, Landroid/support/design/widget/o;->a()Landroid/support/design/widget/o;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b;->c:Landroid/support/design/widget/o$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/o;->b(Landroid/support/design/widget/o$a;)V

    .line 578
    iget-object v0, p0, Landroid/support/design/widget/b;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Landroid/support/design/widget/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 582
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 583
    iget-object v0, p0, Landroid/support/design/widget/b;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/b$a;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/b$a;->a(Ljava/lang/Object;)V

    .line 582
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 586
    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Landroid/support/design/widget/b;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
