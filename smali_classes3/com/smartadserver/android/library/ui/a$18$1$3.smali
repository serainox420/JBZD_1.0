.class Lcom/smartadserver/android/library/ui/a$18$1$3;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$18$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$18$1;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$18$1;)V
    .locals 0

    .prologue
    .line 2213
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$18$1$3;->a:Lcom/smartadserver/android/library/ui/a$18$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2232
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2220
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$18$1$3;->a:Lcom/smartadserver/android/library/ui/a$18$1;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setVisibility(I)V

    .line 2223
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$18$1$3;->a:Lcom/smartadserver/android/library/ui/a$18$1;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2224
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2225
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2226
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$18$1$3;->a:Lcom/smartadserver/android/library/ui/a$18$1;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2228
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$18$1$3;->a:Lcom/smartadserver/android/library/ui/a$18$1;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$18$1$3;->a:Lcom/smartadserver/android/library/ui/a$18$1;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->N(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Lcom/smartadserver/android/library/ui/SASAdView$d;)Z

    .line 2229
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2235
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2216
    return-void
.end method
