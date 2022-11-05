.class public final Lcom/google/android/gms/internal/zzbwx;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzbwx;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcsS:I

.field public zzcsT:J

.field public zzcud:I

.field public zzcue:I

.field public zzcuf:I

.field public zzcug:D

.field public zzcuh:D

.field public zzcui:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuR:I

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbwx;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbwx;

    iget v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zza(ID)V

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zza(ID)V

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_7
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzaz(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbwx;
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

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x31 -> :sswitch_6
        0x39 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbwx;->zzaz(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbwx;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .locals 10

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzb(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzb(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method
