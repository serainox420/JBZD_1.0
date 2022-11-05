.class public Lcom/millennialmedia/internal/SizableStateManager;
.super Ljava/lang/Object;
.source "SizableStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;,
        Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;,
        Lcom/millennialmedia/internal/SizableStateManager$SizableState;,
        Lcom/millennialmedia/internal/SizableStateManager$RestoreState;,
        Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;,
        Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;,
        Lcom/millennialmedia/internal/SizableStateManager$SizableListener;
    }
.end annotation


# static fields
.field static final a:I

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

.field private d:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

.field private e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

.field private f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/millennialmedia/internal/SizableStateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/SizableStateManager;->b:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/millennialmedia/R$dimen;->mmadsdk_mraid_resize_close_area_size:I

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/millennialmedia/internal/SizableStateManager;->a:I

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/internal/SizableStateManager$SizableListener;)V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->c:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    .line 522
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$RestoreState;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/millennialmedia/internal/SizableStateManager;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V
    .locals 1

    .prologue
    .line 604
    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/millennialmedia/internal/SizableStateManager$1;-><init>(Lcom/millennialmedia/internal/SizableStateManager;Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 626
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/SizableStateManager;Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/SizableStateManager;->a(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V

    return-void
.end method

.method static synthetic b(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->c:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->close()V

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->d:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->d:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->close()V

    goto :goto_0
.end method

.method public expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z
    .locals 1

    .prologue
    .line 740
    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;-><init>(Lcom/millennialmedia/internal/SizableStateManager;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    .line 741
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    const/4 v0, 0x1

    .line 747
    :goto_0
    return v0

    .line 745
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    .line 747
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 703
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v1, :cond_0

    .line 704
    sget-object v1, Lcom/millennialmedia/internal/SizableStateManager;->b:Ljava/lang/String;

    const-string v2, "Cannot expand while expanded"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :goto_0
    return v0

    .line 717
    :cond_0
    if-eqz p3, :cond_1

    .line 718
    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/SizableStateManager;->saveDefaultState(Landroid/view/View;)V

    .line 723
    :goto_1
    new-instance v1, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    .line 724
    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setImmersive(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object v1

    iget v2, p2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->orientation:I

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setOrientation(I)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object v1

    iget-boolean v2, p2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->transparent:Z

    .line 725
    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setTransparent(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object v1

    .line 727
    new-instance v2, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;-><init>(Lcom/millennialmedia/internal/SizableStateManager;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    .line 728
    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v2, p1, p2, v1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 729
    const/4 v0, 0x1

    goto :goto_0

    .line 720
    :cond_1
    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/SizableStateManager;->restoreDefaultState(Z)V

    goto :goto_1

    .line 732
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    goto :goto_0
.end method

.method public hideLoadingSpinner(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->showLoadingSpinner:Z

    .line 647
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->b()V

    .line 650
    :cond_0
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResized()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->d:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resize(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 675
    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v2, :cond_1

    .line 676
    sget-object v1, Lcom/millennialmedia/internal/SizableStateManager;->b:Ljava/lang/String;

    const-string v2, "Cannot resize while expanded"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_0
    :goto_0
    return v0

    .line 681
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager;->d:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    if-nez v2, :cond_3

    move v2, v1

    .line 682
    :goto_1
    if-eqz v2, :cond_2

    .line 683
    new-instance v3, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;-><init>(Lcom/millennialmedia/internal/SizableStateManager;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager;->d:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    .line 686
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager;->d:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    invoke-virtual {v3, p1, p2}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->resize(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 688
    goto :goto_0

    :cond_3
    move v2, v0

    .line 681
    goto :goto_1

    .line 693
    :cond_4
    if-eqz v2, :cond_0

    .line 694
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->d:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    goto :goto_0
.end method

.method public restoreDefaultState(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 557
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    if-eqz v0, :cond_6

    .line 558
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->b(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 559
    if-eqz v0, :cond_3

    .line 560
    if-eqz p1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v1, :cond_5

    .line 562
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->c:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    invoke-interface {v1}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onCollapsing()V

    .line 563
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->c(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_COLLAPSED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    invoke-direct {p0, v1, v2}, Lcom/millennialmedia/internal/SizableStateManager;->a(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V

    .line 571
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 576
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->e(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    .line 577
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    sget-object v1, Lcom/millennialmedia/internal/SizableStateManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No layout params found for view being restored, creating new layout params based on original size: x<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    .line 579
    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->d(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">, y<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->d(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->d(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v4}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->d(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->a(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 584
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->c(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->e(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    :cond_3
    iput-object v5, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    .line 595
    :cond_4
    :goto_1
    iput-object v5, p0, Lcom/millennialmedia/internal/SizableStateManager;->d:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    .line 596
    iput-object v5, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    .line 597
    return-void

    .line 565
    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->c:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->d(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->d(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onUnresizing(II)V

    .line 566
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->c(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_UNRESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    invoke-direct {p0, v1, v2}, Lcom/millennialmedia/internal/SizableStateManager;->a(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V

    goto/16 :goto_0

    .line 589
    :cond_6
    if-eqz p1, :cond_4

    .line 591
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->c:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onCollapsing()V

    .line 592
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->c:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onCollapsed()V

    goto :goto_1
.end method

.method public saveDefaultState(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 539
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;-><init>(Lcom/millennialmedia/internal/SizableStateManager;Lcom/millennialmedia/internal/SizableStateManager$1;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    .line 541
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->a(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/view/View;)Landroid/view/View;

    .line 544
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getViewPositionOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->a(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 545
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->a(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 546
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->b(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 549
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getParentContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->f:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->a(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 552
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a(I)V

    .line 670
    :cond_0
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v0, :cond_0

    .line 656
    if-eqz p1, :cond_1

    .line 657
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->d()V

    goto :goto_0
.end method

.method public showLoadingSpinner(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->showLoadingSpinner:Z

    .line 635
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->e:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a()V

    .line 638
    :cond_0
    return-void
.end method
