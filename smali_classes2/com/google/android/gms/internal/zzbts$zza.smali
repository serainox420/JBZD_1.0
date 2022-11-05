.class public final Lcom/google/android/gms/internal/zzbts$zza;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzbts$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public timestamp:J

.field public zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

.field public zzcmr:[[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbts$zza;->zzacl()Lcom/google/android/gms/internal/zzbts$zza;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbts$zza;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbts$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->timestamp:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbts$zza;->timestamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->zza([[B[[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbts$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbts$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbts$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->timestamp:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbts$zza;->timestamp:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->zzb([[B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->timestamp:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzc(IJ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzbxm;->zzb(I[B)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzac(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbts$zza;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzbts$zzd;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzbts$zzd;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzbts$zzd;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzbts$zzd;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzbts$zzd;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaet()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->timestamp:J

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    array-length v0, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public zzacl()Lcom/google/android/gms/internal/zzbts$zza;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzbts$zzd;->zzacp()[Lcom/google/android/gms/internal/zzbts$zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->timestamp:J

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcvc:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcuR:I

    return-object p0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbts$zza;->zzac(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbts$zza;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbts$zza;->timestamp:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzbxm;->zzg(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    array-length v4, v4

    if-ge v1, v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbxm;->zzai([B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method
