.class Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private centerX:F

.field private centerY:F

.field private final zzaqV:Landroid/graphics/Paint;

.field private zzaqW:F

.field private final zzara:Landroid/graphics/Rect;

.field private final zzarv:Landroid/graphics/Paint;

.field private final zzarw:I

.field private final zzarx:I

.field private zzary:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzaqV:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzarv:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzara:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzary:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$dimen;->cast_libraries_material_featurehighlight_inner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzarw:I

    sget v1, Lcom/google/android/gms/R$integer;->cast_libraries_material_featurehighlight_pulse_base_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzarx:I

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzaqV:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzarv:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzarv:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->centerX:F

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->centerY:F

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzaqW:F

    iget v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzary:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->invalidateSelf()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzarv:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->invalidateSelf()V

    return-void
.end method

.method public zzc(Landroid/graphics/Rect;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzara:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzara:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->centerX:F

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzara:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->centerY:F

    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzarw:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzara:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzara:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzaqW:F

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->invalidateSelf()V

    return-void
.end method

.method public zztk()Landroid/animation/Animator;
    .locals 4

    const/4 v3, 0x2

    const-string v0, "scale"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbli;->zzUM()Lcom/google/android/gms/internal/zzbll;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public zztl()Landroid/animation/Animator;
    .locals 10

    const-wide/16 v8, 0x1f4

    const/4 v6, 0x2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v1, "scale"

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "scale"

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v3, "pulseScale"

    new-array v4, v6, [F

    fill-array-data v4, :array_2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v4, "pulseAlpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/google/android/gms/internal/zzbli;->zzUO()Lcom/google/android/gms/internal/zzbll;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblg;->zzc(Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_1
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x40000000    # 2.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public zztm()Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zztn()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public zztn()Landroid/animation/Animator;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "scale"

    new-array v1, v6, [F

    aput v7, v1, v5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v6, [F

    aput v7, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v2, "pulseScale"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v3, "pulseAlpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbli;->zzUN()Lcom/google/android/gms/internal/zzbll;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
