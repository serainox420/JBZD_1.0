.class public final Lcom/google/android/gms/internal/zzko;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# direct methods
.method public static zzI(I)Lcom/google/ads/AdRequest$Gender;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza(Lcom/google/ads/AdRequest$ErrorCode;)I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzko$1;->zzLN:[I

    invoke-virtual {p0}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static zzc(Lcom/google/android/gms/internal/zzeg;)Lcom/google/ads/a;
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x0

    new-array v1, v4, [Lcom/google/ads/a;

    sget-object v2, Lcom/google/ads/a;->a:Lcom/google/ads/a;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Lcom/google/ads/a;->b:Lcom/google/ads/a;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/ads/a;->c:Lcom/google/ads/a;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/ads/a;->d:Lcom/google/ads/a;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/ads/a;->e:Lcom/google/ads/a;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/ads/a;->f:Lcom/google/ads/a;

    aput-object v3, v1, v2

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/ads/a;->a()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/zzeg;->width:I

    if-ne v2, v3, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/ads/a;->b()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/zzeg;->height:I

    if-ne v2, v3, :cond_0

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/ads/a;

    iget v1, p0, Lcom/google/android/gms/internal/zzeg;->width:I

    iget v2, p0, Lcom/google/android/gms/internal/zzeg;->height:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/a;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_1
.end method

.method public static zzr(Lcom/google/android/gms/internal/zzec;)Lcom/google/ads/mediation/b;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyV:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzyV:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v0, Lcom/google/ads/mediation/b;

    new-instance v1, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzec;->zzyT:J

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    iget v2, p0, Lcom/google/android/gms/internal/zzec;->zzyU:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzko;->zzI(I)Lcom/google/ads/AdRequest$Gender;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzec;->zzyW:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/zzec;->zzzb:Landroid/location/Location;

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/b;-><init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
