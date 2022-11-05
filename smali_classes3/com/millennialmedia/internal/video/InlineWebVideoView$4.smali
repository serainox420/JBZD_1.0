.class Lcom/millennialmedia/internal/video/InlineWebVideoView$4;
.super Lcom/millennialmedia/internal/MMActivity$MMActivityListener;
.source "InlineWebVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x1

    .line 645
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onCreate(Lcom/millennialmedia/internal/MMActivity;)V

    .line 647
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 649
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 652
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->f(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 653
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->f(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 655
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->f(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/internal/video/InlineWebVideoView$4$1;

    invoke-direct {v2, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$4$1;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$4;Lcom/millennialmedia/internal/MMActivity;)V

    .line 656
    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 667
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1, v5}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)V

    .line 669
    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->d(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 672
    if-eqz v0, :cond_0

    .line 673
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "expand"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    :cond_0
    return-void
.end method

.method public onDestroy(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 695
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 697
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->k(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->m(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->j(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v3

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v4}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->l(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 699
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->f(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 700
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->f(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 702
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->f(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v0

    new-instance v2, Lcom/millennialmedia/internal/video/InlineWebVideoView$4$2;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$4$2;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$4;)V

    .line 703
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 714
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0, v5}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)V

    .line 716
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->d(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 717
    if-eqz v0, :cond_0

    .line 718
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "collapse"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    :cond_0
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onDestroy(Lcom/millennialmedia/internal/MMActivity;)V

    .line 723
    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0

    .prologue
    .line 688
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onPause(Lcom/millennialmedia/internal/MMActivity;)V

    .line 689
    return-void
.end method

.method public onResume(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0

    .prologue
    .line 681
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onResume(Lcom/millennialmedia/internal/MMActivity;)V

    .line 682
    return-void
.end method
