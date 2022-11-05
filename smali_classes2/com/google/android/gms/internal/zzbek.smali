.class public Lcom/google/android/gms/internal/zzbek;
.super Lcom/google/android/gms/internal/zzbcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 5
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

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v0, p2, v2

    check-cast v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbcd;->has(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v2, p2, v1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    instance-of v3, v1, Lcom/google/android/gms/internal/zzbiy;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    check-cast v1, Lcom/google/android/gms/internal/zzbiy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbiy;->zzTi()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbit;->zzTh()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbit;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzbcd;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbit;)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbjc;->zza(Lcom/google/android/gms/internal/zzbcd;Ljava/util/List;)Lcom/google/android/gms/internal/zzbix;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/zzbix;->zzbMP:Lcom/google/android/gms/internal/zzbix;

    if-ne v2, v4, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbix;->zzTp()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    goto :goto_1
.end method
