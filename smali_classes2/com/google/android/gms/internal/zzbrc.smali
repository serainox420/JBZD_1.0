.class public Lcom/google/android/gms/internal/zzbrc;
.super Ljava/lang/Object;


# instance fields
.field private final zzcag:Lcom/google/android/gms/internal/zzbph;

.field private final zzcak:Lcom/google/android/gms/internal/zzbrb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrc;->zzcag:Lcom/google/android/gms/internal/zzbph;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrc;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    return-void
.end method

.method public static zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbrc;

    sget-object v1, Lcom/google/android/gms/internal/zzbrb;->zzcie:Lcom/google/android/gms/internal/zzbrb;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbrc;-><init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbrc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbrc;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaE(Ljava/util/Map;)Lcom/google/android/gms/internal/zzbrb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbrc;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzbrc;-><init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/zzbrc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrc;->zzcag:Lcom/google/android/gms/internal/zzbph;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbrc;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbph;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrc;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbrc;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbrb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrc;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrc;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrb;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDefault()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrc;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrb;->isDefault()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrc;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrc;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzWM()Lcom/google/android/gms/internal/zzbph;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrc;->zzcag:Lcom/google/android/gms/internal/zzbph;

    return-object v0
.end method

.method public zzaaj()Lcom/google/android/gms/internal/zzbrw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrc;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrb;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v0

    return-object v0
.end method

.method public zzaan()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrc;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrb;->zzaan()Z

    move-result v0

    return v0
.end method

.method public zzaaq()Lcom/google/android/gms/internal/zzbrb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrc;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    return-object v0
.end method
