.class public Lcom/google/android/gms/internal/zzbfa;
.super Lcom/google/android/gms/internal/zzbcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbcd;",
            "[",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;)",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;"
        }
    .end annotation

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v0, p2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v2

    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_4

    cmpl-double v0, v4, v6

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    goto :goto_2

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    goto :goto_2

    :cond_6
    cmpl-double v0, v2, v6

    if-nez v0, :cond_7

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_7

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    rem-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    goto :goto_2
.end method
