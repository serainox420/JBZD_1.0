.class public Lcom/google/android/gms/internal/zzbll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private zzbWj:[F

.field private zzbWk:[F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzblm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzblm;-><init>()V

    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/zzblm;->moveTo(FF)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzblm;->cubicTo(FFFFFF)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbll;->zza(Lcom/google/android/gms/internal/zzblm;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzblm;)V
    .locals 9

    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3b03126f    # 0.002f

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzblm;->zzj(F)[F

    move-result-object v6

    array-length v2, v6

    div-int/lit8 v7, v2, 0x3

    const/4 v2, 0x1

    aget v2, v6, v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget v2, v6, v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    array-length v2, v6

    add-int/lit8 v2, v2, -0x2

    aget v2, v6, v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    aget v2, v6, v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbll;->zzbWj:[F

    new-array v2, v7, [F

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbll;->zzbWk:[F

    move v2, v1

    move v4, v1

    move v1, v0

    :goto_0
    if-ge v0, v7, :cond_4

    add-int/lit8 v5, v1, 0x1

    aget v3, v6, v1

    add-int/lit8 v8, v5, 0x1

    aget v5, v6, v5

    add-int/lit8 v1, v8, 0x1

    aget v8, v6, v8

    cmpl-float v2, v3, v2

    if-nez v2, :cond_2

    cmpl-float v2, v5, v4

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Path cannot have discontinuity in the X axis."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    cmpg-float v2, v5, v4

    if-gez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Path cannot loop back on itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbll;->zzbWj:[F

    aput v5, v2, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbll;->zzbWk:[F

    aput v8, v2, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v4, v5

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbll;->zzbWj:[F

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    :goto_1
    sub-int v0, v1, v2

    const/4 v4, 0x1

    if-le v0, v4, :cond_3

    add-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbll;->zzbWj:[F

    aget v4, v4, v0

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    move v1, v2

    :goto_2
    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbll;->zzbWj:[F

    aget v0, v0, v1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbll;->zzbWj:[F

    aget v4, v4, v2

    sub-float/2addr v0, v4

    cmpl-float v3, v0, v3

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbll;->zzbWk:[F

    aget v0, v0, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbll;->zzbWj:[F

    aget v3, v3, v2

    sub-float v3, p1, v3

    div-float v0, v3, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbll;->zzbWk:[F

    aget v2, v3, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbll;->zzbWk:[F

    aget v1, v3, v1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_0
.end method
