.class public Lcom/google/android/gms/internal/zzbdp;
.super Lcom/google/android/gms/internal/zzbcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 6
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v0, p2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v0, p2, v2

    aget-object v4, p2, v1

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbiz;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbiy;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzbiw;

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    instance-of v3, v4, Lcom/google/android/gms/internal/zzbiz;

    if-nez v3, :cond_2

    instance-of v3, v4, Lcom/google/android/gms/internal/zzbiy;

    if-nez v3, :cond_2

    instance-of v3, v4, Lcom/google/android/gms/internal/zzbiw;

    if-eqz v3, :cond_9

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    :goto_2
    instance-of v4, v0, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v4, :cond_3

    instance-of v4, v3, Lcom/google/android/gms/internal/zzbjb;

    if-nez v4, :cond_7

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_4
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/zzbiu;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiu;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_4
    move v2, v1

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    move-object v3, v4

    goto :goto_2
.end method
