.class public abstract Lcom/google/android/gms/location/places/internal/zzab;
.super Lcom/google/android/gms/common/data/zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method protected zzO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->zzdf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->zzdh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method protected zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator",
            "<TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzab;->zzc(Ljava/lang/String;[B)[B

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    goto :goto_0
.end method

.method protected zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator",
            "<TE;>;",
            "Ljava/util/List",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzab;->zzc(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzblo;->zzT([B)Lcom/google/android/gms/internal/zzblo;

    move-result-object v1

    iget-object v0, v1, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-static {v4, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbxs; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object p3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SafeDataBufferRef"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SafeDataBufferRef"

    const-string v2, "Cannot parse byte[]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected zzb(Ljava/lang/String;F)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->zzdf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->zzdh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->getFloat(Ljava/lang/String;)F

    move-result p2

    :cond_0
    return p2
.end method

.method protected zzb(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzab;->zzc(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzblo;->zzT([B)Lcom/google/android/gms/internal/zzblo;

    move-result-object v2

    iget-object v0, v2, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v2, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    iget-object v3, v2, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, v2, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbxs; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SafeDataBufferRef"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SafeDataBufferRef"

    const-string v2, "Cannot parse byte[]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected zzc(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzab;->zzc(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzblo;->zzT([B)Lcom/google/android/gms/internal/zzblo;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbxs; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SafeDataBufferRef"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SafeDataBufferRef"

    const-string v2, "Cannot parse byte[]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected zzc(Ljava/lang/String;[B)[B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->zzdf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->zzdh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method protected zzk(Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->zzdf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->zzdh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    :cond_0
    return p2
.end method

.method protected zzy(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->zzdf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->zzdh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzab;->getInteger(Ljava/lang/String;)I

    move-result p2

    :cond_0
    return p2
.end method
