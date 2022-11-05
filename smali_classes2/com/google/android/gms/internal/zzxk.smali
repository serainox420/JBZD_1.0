.class public Lcom/google/android/gms/internal/zzxk;
.super Landroid/view/View;


# instance fields
.field private zzaoo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzatq:I

.field private zzatr:I

.field private zzats:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzxk;->zzatr:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxk;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzxk;->zza(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzxk;->zzatq:I

    return-void
.end method

.method private static zza(Landroid/content/Context;D)I
    .locals 3

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxk;->zzaoo:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxk;->zzaoo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxk;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxk;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxk;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxk;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxk;->zzaoo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/AdBreakInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakInfo;->getPlaybackPositionInMs()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzxk;->zzatr:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    long-to-double v4, v4

    int-to-double v6, v2

    mul-double/2addr v4, v6

    iget v0, p0, Lcom/google/android/gms/internal/zzxk;->zzatr:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    double-to-int v0, v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxk;->getPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    int-to-float v4, v1

    iget v5, p0, Lcom/google/android/gms/internal/zzxk;->zzatq:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/gms/internal/zzxk;->zzats:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzb(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzxk;->zzaoo:Ljava/util/List;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxk;->zzats:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxk;->zzats:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxk;->zzats:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxk;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzcf(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzxk;->zzatr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
