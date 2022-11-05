.class public final Lcom/google/android/gms/internal/zzbts$zzc;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzbts$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcmu:I

.field public zzcmv:Z

.field public zzcmw:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbts$zzc;->zzaco()Lcom/google/android/gms/internal/zzbts$zzc;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbts$zzc;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbts$zzc;

    iget v2, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmu:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmu:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmv:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmv:Z

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmw:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmw:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbts$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbts$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbts$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

    iget v1, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmu:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmv:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmw:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmw:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmu:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmu:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmv:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmv:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzg(IZ)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmw:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmw:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzc(IJ)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzaco()Lcom/google/android/gms/internal/zzbts$zzc;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmu:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmv:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmw:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcuR:I

    return-object p0
.end method

.method public zzae(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbts$zzc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmu:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeu()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmv:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmw:J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbts$zzc;->zzae(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbts$zzc;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmu:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmu:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmv:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmv:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzh(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmw:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmw:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzg(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method
