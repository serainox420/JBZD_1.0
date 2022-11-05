.class public Lcom/google/android/gms/internal/zzbfd;
.super Lcom/google/android/gms/internal/zzbcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
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

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v0, p2

    if-eq v0, v1, :cond_0

    array-length v0, p2

    if-ne v0, v4, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v0, p2, v2

    check-cast v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    array-length v3, p2

    if-ne v3, v4, :cond_1

    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbcr;->zzc(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v2

    double-to-int v2, v2

    :cond_1
    if-ltz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v2, v1, :cond_5

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    :goto_2
    return-object v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2
.end method
