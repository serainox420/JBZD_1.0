.class Lcom/smartadserver/android/library/ui/a$21;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 2309
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$21;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2338
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2316
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/ui/a$21$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$21$1;-><init>(Lcom/smartadserver/android/library/ui/a$21;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2325
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$21;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2326
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2327
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2328
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$21;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2331
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$21;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/a;->setX(F)V

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$21;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/a;->setY(F)V

    .line 2334
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$21;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 2335
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2341
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2312
    return-void
.end method
