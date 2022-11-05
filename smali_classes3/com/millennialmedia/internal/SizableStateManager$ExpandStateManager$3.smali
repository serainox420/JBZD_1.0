.class Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;
.super Lcom/millennialmedia/internal/MMActivity$MMActivityListener;
.source "SizableStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    iput-object p2, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    iput-object p3, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 4

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 450
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-static {v1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->b(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)Lcom/millennialmedia/internal/MMActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    iget-object v0, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager;->b(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onExpanding()V

    .line 455
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    iget v1, v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->width:I

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    iget v2, v2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 458
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 459
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    const/4 v0, 0x1

    .line 463
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    iget-object v1, v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a:Lcom/millennialmedia/internal/SizableStateManager;

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->b:Landroid/view/View;

    sget-object v3, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_EXPANDED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/SizableStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager;Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-static {v1, p1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;Lcom/millennialmedia/internal/MMActivity;)Lcom/millennialmedia/internal/MMActivity;

    .line 468
    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->b:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 469
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->e()V

    .line 471
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->showCloseIndicator:Z

    if-eqz v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c()V

    .line 477
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->showLoadingSpinner:Z

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a()V

    .line 480
    :cond_2
    return-void

    .line 473
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V

    goto :goto_0
.end method

.method public onDestroy(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    iget-object v0, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a:Lcom/millennialmedia/internal/SizableStateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager;->restoreDefaultState(Z)V

    .line 488
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;Lcom/millennialmedia/internal/MMActivity;)Lcom/millennialmedia/internal/MMActivity;

    .line 490
    :cond_0
    return-void
.end method

.method public onLaunchFailed()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;->c:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    iget-object v0, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager;->b(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onExpandFailed()V

    .line 497
    return-void
.end method
