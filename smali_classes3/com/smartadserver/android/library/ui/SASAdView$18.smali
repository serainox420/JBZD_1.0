.class Lcom/smartadserver/android/library/ui/SASAdView$18;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;I)V
    .locals 0

    .prologue
    .line 2942
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2961
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .prologue
    const v6, 0x7fffffff

    const/4 v5, 0x0

    .line 2948
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->D(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2949
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->D(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 2950
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->D(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2951
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->A(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2952
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget v3, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->a:I

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->k(Lcom/smartadserver/android/library/ui/SASAdView;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->setY(F)V

    .line 2953
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2, v5}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;I)I

    .line 2954
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2, v6}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;I)I

    .line 2955
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2, v6}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Lcom/smartadserver/android/library/ui/SASAdView;I)I

    .line 2956
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2957
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$18;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0, v5}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;Z)Z

    .line 2958
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2964
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2944
    return-void
.end method
