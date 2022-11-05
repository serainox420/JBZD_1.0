.class Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;
.super Ljava/lang/Object;
.source "SASNativeVideoControlsLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 757
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->e(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 760
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 761
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setMinWidth(I)V

    .line 762
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setMinWidth(I)V

    .line 763
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 764
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->measure(II)V

    .line 766
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->measure(II)V

    .line 768
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;I)I

    .line 769
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;I)I

    .line 772
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setMinWidth(I)V

    .line 773
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 774
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->measure(II)V

    .line 776
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->d(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;I)I

    .line 778
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;->c:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;Z)V

    .line 779
    return-void
.end method
