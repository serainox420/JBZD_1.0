.class public final Lcom/revmob/ads/a/e;
.super Lcom/revmob/ads/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/revmob/ads/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v0
.end method

.method public final b()Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v0
.end method

.method public final c()Landroid/view/animation/Animation;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    return-object v0
.end method

.method public final d()Landroid/view/animation/Animation;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x40000000    # 2.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    return-object v0
.end method

.method public final e()Landroid/view/animation/Animation;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x40000000    # 2.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    return-object v0
.end method

.method public final f()Landroid/view/animation/Animation;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40000000    # -2.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    return-object v0
.end method

.method public final g()Landroid/view/animation/Animation;
    .locals 9

    const/4 v5, 0x1

    const/high16 v2, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    return-object v0
.end method

.method public final h()Landroid/view/animation/Animation;
    .locals 9

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    return-object v0
.end method

.method public final i()Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/RotateAnimation;-><init>(FF)V

    return-object v0
.end method

.method public final j()Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/RotateAnimation;-><init>(FF)V

    return-object v0
.end method
