.class Lcom/inmobi/monetization/internal/d;
.super Ljava/lang/Object;
.source "AnimationController.java"


# instance fields
.field private a:Lcom/inmobi/monetization/internal/BannerAd;

.field private b:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Lcom/inmobi/monetization/internal/BannerAd;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    .line 21
    iput-object p2, p0, Lcom/inmobi/monetization/internal/d;->b:Landroid/view/animation/Animation$AnimationListener;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/commons/AnimationType;)V
    .locals 8

    .prologue
    .line 30
    sget-object v0, Lcom/inmobi/commons/AnimationType;->ANIMATION_ALPHA:Lcom/inmobi/commons/AnimationType;

    if-ne p1, v0, :cond_1

    .line 31
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 32
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 34
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 35
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 36
    iget-object v2, p0, Lcom/inmobi/monetization/internal/d;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 37
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 38
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 40
    iget-object v2, p0, Lcom/inmobi/monetization/internal/d;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 41
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 42
    iget-object v2, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v2, v0}, Lcom/inmobi/monetization/internal/BannerAd;->a(Landroid/view/animation/Animation;)V

    .line 43
    iget-object v0, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/BannerAd;->b(Landroid/view/animation/Animation;)V

    .line 82
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/BannerAd;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/BannerAd;->c(Landroid/view/animation/Animation;)V

    .line 83
    return-void

    .line 44
    :cond_1
    sget-object v0, Lcom/inmobi/commons/AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/commons/AnimationType;

    if-ne p1, v0, :cond_2

    .line 45
    new-instance v0, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v3, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v3}, Lcom/inmobi/monetization/internal/BannerAd;->b()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v4}, Lcom/inmobi/monetization/internal/BannerAd;->c()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 48
    new-instance v1, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimation;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v4, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v4}, Lcom/inmobi/monetization/internal/BannerAd;->b()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v5}, Lcom/inmobi/monetization/internal/BannerAd;->c()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 52
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimation;->setDuration(J)V

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimation;->setFillAfter(Z)V

    .line 54
    iget-object v2, p0, Lcom/inmobi/monetization/internal/d;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 55
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 56
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimation;->setDuration(J)V

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimation;->setFillAfter(Z)V

    .line 58
    iget-object v2, p0, Lcom/inmobi/monetization/internal/d;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 59
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 60
    iget-object v2, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v2, v0}, Lcom/inmobi/monetization/internal/BannerAd;->a(Landroid/view/animation/Animation;)V

    .line 61
    iget-object v0, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/BannerAd;->b(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 63
    :cond_2
    sget-object v0, Lcom/inmobi/commons/AnimationType;->ROTATE_VERTICAL_AXIS:Lcom/inmobi/commons/AnimationType;

    if-ne p1, v0, :cond_0

    .line 64
    new-instance v0, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimationVert;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v3, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v3}, Lcom/inmobi/monetization/internal/BannerAd;->b()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v4}, Lcom/inmobi/monetization/internal/BannerAd;->c()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimationVert;-><init>(FFFFFZ)V

    .line 67
    new-instance v1, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimationVert;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v4, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v4}, Lcom/inmobi/monetization/internal/BannerAd;->b()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v5}, Lcom/inmobi/monetization/internal/BannerAd;->c()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimationVert;-><init>(FFFFFZ)V

    .line 71
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimationVert;->setDuration(J)V

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimationVert;->setFillAfter(Z)V

    .line 73
    iget-object v2, p0, Lcom/inmobi/monetization/internal/d;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimationVert;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 74
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimationVert;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 75
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimationVert;->setDuration(J)V

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimationVert;->setFillAfter(Z)V

    .line 77
    iget-object v2, p0, Lcom/inmobi/monetization/internal/d;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimationVert;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 78
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/inmobi/monetization/internal/anim/Rotate3dAnimationVert;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 79
    iget-object v2, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v2, v0}, Lcom/inmobi/monetization/internal/BannerAd;->a(Landroid/view/animation/Animation;)V

    .line 80
    iget-object v0, p0, Lcom/inmobi/monetization/internal/d;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/BannerAd;->b(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method
