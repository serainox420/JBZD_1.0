.class Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$7;
.super Landroid/widget/LinearLayout;
.source "SASNativeVideoControlsLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$7;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 587
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$7;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->measure(II)V

    .line 589
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$7;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->measure(II)V

    .line 591
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$7;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$7;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 592
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$7;->getMeasuredHeight()I

    move-result v2

    .line 595
    sub-int/2addr v2, v1

    .line 596
    if-gez v2, :cond_0

    .line 597
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 599
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 601
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$7;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$7;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->j(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$7;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;Z)V

    .line 603
    return-void
.end method
