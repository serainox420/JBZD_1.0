.class public Lcom/google/android/gms/internal/zzaxk;
.super Ljava/lang/Object;


# direct methods
.method static zza(Lcom/google/android/gms/nearby/connection/zzg;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/connection/zzg;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/gms/internal/zzaxi;",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Outgoing Payload %d has unknown type %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v1, "NearbyConnections"

    const-string v2, "Unknown payload type!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :pswitch_0
    new-instance v1, Lcom/google/android/gms/internal/zzaxi;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->getType()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->zzNV()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzaxi;-><init>(JI[BLandroid/os/ParcelFileDescriptor;Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->zzNW()Lcom/google/android/gms/nearby/connection/zzg$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/zzg$zza;->zzNY()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v7, 0x0

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/zzaxi;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->getType()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->zzNW()Lcom/google/android/gms/nearby/connection/zzg$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/zzg$zza;->zzNZ()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->zzNW()Lcom/google/android/gms/nearby/connection/zzg$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/zzg$zza;->getSize()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzaxi;-><init>(JI[BLandroid/os/ParcelFileDescriptor;Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->zzNW()Lcom/google/android/gms/nearby/connection/zzg$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/connection/zzg$zza;->zzNY()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_2
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    new-instance v1, Lcom/google/android/gms/internal/zzaxi;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->getType()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v0, v6

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    aget-object v10, v11, v10

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzaxi;-><init>(JI[BLandroid/os/ParcelFileDescriptor;Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;)V

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnections"

    const-string v2, "Unable to create PFD pipe for streaming payload %d from client to service."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/zzg;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static zza(Lcom/google/android/gms/internal/zzaxi;)Lcom/google/android/gms/nearby/connection/zzg;
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxi;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxi;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "NearbyConnections"

    const-string v1, "Incoming ParcelablePayload %d has unknown type %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxi;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxi;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxi;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/nearby/connection/zzg;->zzb([BJ)Lcom/google/android/gms/nearby/connection/zzg;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxi;->zzOt()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxi;->zzOu()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/nearby/connection/zzg$zza;->zza(Ljava/io/File;J)Lcom/google/android/gms/nearby/connection/zzg$zza;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/nearby/connection/zzg;->zza(Lcom/google/android/gms/nearby/connection/zzg$zza;J)Lcom/google/android/gms/nearby/connection/zzg;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v5, "NearbyConnections"

    const-string v6, "Failed to create Payload from ParcelablePayload: Java file not found at "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v5, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxi;->zzOs()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/zzg$zza;->zzb(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/zzg$zza;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/nearby/connection/zzg;->zza(Lcom/google/android/gms/nearby/connection/zzg$zza;J)Lcom/google/android/gms/nearby/connection/zzg;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxi;->zzOs()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/nearby/connection/zzg$zzb;->zzc(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/zzg$zzb;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/nearby/connection/zzg;->zza(Lcom/google/android/gms/nearby/connection/zzg$zzb;J)Lcom/google/android/gms/nearby/connection/zzg;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
