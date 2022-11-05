.class public final Lcom/google/android/gms/internal/zzbwv$zzb;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbwv$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzbwv$zzb;",
        ">;"
    }
.end annotation


# instance fields
.field public zzctK:J

.field public zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

.field public zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

.field public zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

.field public zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

.field public zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

.field public zzcti:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuR:I

    return-void
.end method

.method public static zzae([B)Lcom/google/android/gms/internal/zzbwv$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbxs;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbwv$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwv$zzb;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzbxt;->zza(Lcom/google/android/gms/internal/zzbxt;[B)Lcom/google/android/gms/internal/zzbxt;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwv$zzb;

    return-object v0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbwv$zzb;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbwv$zzb;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    if-nez v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    if-nez v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbwv$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbwv$zzd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbwv$zze;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbwv$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbwv$zzb$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbwv$zzc;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbwv$zzd;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbwv$zze;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbwv$zza;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbwv$zzb$zza;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzat(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbwv$zzb;
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_3
    iput v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbwv$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwv$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzbwv$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwv$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzbwv$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwv$zze;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzbwv$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwv$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwv$zzb$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xe -> :sswitch_3
        0xf -> :sswitch_3
        0x10 -> :sswitch_3
        0x11 -> :sswitch_3
        0x12 -> :sswitch_3
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_3
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1b -> :sswitch_3
        0x1c -> :sswitch_3
        0x1d -> :sswitch_3
        0x1e -> :sswitch_3
        0x1f -> :sswitch_3
        0x20 -> :sswitch_3
        0x22 -> :sswitch_3
        0x23 -> :sswitch_3
        0x24 -> :sswitch_3
        0x25 -> :sswitch_3
        0x26 -> :sswitch_3
        0x27 -> :sswitch_3
        0x28 -> :sswitch_3
        0x29 -> :sswitch_3
        0x2a -> :sswitch_3
        0x2b -> :sswitch_3
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_3
        0x2713 -> :sswitch_3
        0x2714 -> :sswitch_3
        0x2715 -> :sswitch_3
        0x2716 -> :sswitch_3
        0x2717 -> :sswitch_3
        0x2718 -> :sswitch_3
        0x2719 -> :sswitch_3
        0x1869f -> :sswitch_3
    .end sparse-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbwv$zzb;->zzat(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbwv$zzb;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method
