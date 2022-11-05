.class Lcom/smartadserver/android/library/ui/a$18$1;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$18;->onStateChanged(Lcom/smartadserver/android/library/ui/SASAdView$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/smartadserver/android/library/ui/a$18;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$18;FFII)V
    .locals 0

    .prologue
    .line 2175
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iput p2, p0, Lcom/smartadserver/android/library/ui/a$18$1;->a:F

    iput p3, p0, Lcom/smartadserver/android/library/ui/a$18$1;->b:F

    iput p4, p0, Lcom/smartadserver/android/library/ui/a$18$1;->c:I

    iput p5, p0, Lcom/smartadserver/android/library/ui/a$18$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2178
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2180
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v0

    .line 2181
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v1

    .line 2183
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    const-string v3, "x"

    new-array v4, v9, [F

    iget v5, p0, Lcom/smartadserver/android/library/ui/a$18$1;->a:F

    aput v5, v4, v7

    aput v10, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2185
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    const-string v4, "y"

    new-array v5, v9, [F

    iget v6, p0, Lcom/smartadserver/android/library/ui/a$18$1;->b:F

    aput v6, v5, v7

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2187
    new-array v4, v9, [I

    iget v5, p0, Lcom/smartadserver/android/library/ui/a$18$1;->c:I

    aput v5, v4, v7

    aput v1, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2188
    new-instance v4, Lcom/smartadserver/android/library/ui/a$18$1$1;

    invoke-direct {v4, p0}, Lcom/smartadserver/android/library/ui/a$18$1$1;-><init>(Lcom/smartadserver/android/library/ui/a$18$1;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2196
    new-array v4, v9, [I

    iget v5, p0, Lcom/smartadserver/android/library/ui/a$18$1;->d:I

    aput v5, v4, v7

    aput v0, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2197
    new-instance v4, Lcom/smartadserver/android/library/ui/a$18$1$2;

    invoke-direct {v4, p0}, Lcom/smartadserver/android/library/ui/a$18$1$2;-><init>(Lcom/smartadserver/android/library/ui/a$18$1;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2205
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2206
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2211
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->M(Lcom/smartadserver/android/library/ui/a;)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2213
    new-instance v0, Lcom/smartadserver/android/library/ui/a$18$1$3;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/a$18$1$3;-><init>(Lcom/smartadserver/android/library/ui/a$18$1;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2238
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 2239
    return-void
.end method
