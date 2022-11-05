.class public final Lcom/google/android/gms/internal/zzblo;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzblo;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbWx:[Ljava/lang/String;

.field public zzbWy:[I

.field public zzbWz:[[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzblo;->zzUT()Lcom/google/android/gms/internal/zzblo;

    return-void
.end method

.method public static zzT([B)Lcom/google/android/gms/internal/zzblo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbxs;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzblo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzblo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzbxt;->zza(Lcom/google/android/gms/internal/zzbxt;[B)Lcom/google/android/gms/internal/zzbxt;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzblo;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzblo;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzblo;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->zza([[B[[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzblo;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzblo;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzblo;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->zzb([[B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public zzUT()Lcom/google/android/gms/internal/zzblo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcvb:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuW:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcvc:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzblo;->zzcuR:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzbxm;->zzb(I[B)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzab(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzblo;
    .locals 5
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    array-length v0, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzra(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->getPosition()I

    move-result v2

    move v0, v1

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeC()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbxl;->zzrc(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    if-nez v2, :cond_9

    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    array-length v2, v2

    goto :goto_6

    :cond_a
    iput-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbxl;->zzrb(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    if-nez v0, :cond_c

    move v0, v1

    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_9
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    array-length v0, v0

    goto :goto_8

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzblo;->zzab(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzblo;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzblo;->zzbWx:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbxm;->zzkb(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, v4, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbxm;->zzrg(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWy:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    array-length v4, v4

    if-ge v1, v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/zzblo;->zzbWz:[[B

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbxm;->zzai([B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_6
    return v0

    :cond_7
    move v0, v4

    goto :goto_1
.end method
