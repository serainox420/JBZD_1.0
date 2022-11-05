.class public final Lcom/google/android/gms/internal/zzbts$zze;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzbts$zze;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

.field public zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

.field public zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

.field public zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

.field public zzcmz:Lcom/google/android/gms/internal/zzbts$zza;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbts$zze;->zzacr()Lcom/google/android/gms/internal/zzbts$zze;

    return-void
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbts$zze;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbts$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    if-nez v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbts$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbts$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbts$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbts$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbts$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbts$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbts$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbts$zza;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbts$zza;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbts$zza;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbts$zzc;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    array-length v0, v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzacr()Lcom/google/android/gms/internal/zzbts$zze;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    invoke-static {}, Lcom/google/android/gms/internal/zzbts$zzf;->zzacs()[Lcom/google/android/gms/internal/zzbts$zzf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcuR:I

    return-object p0
.end method

.method public zzag(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbts$zze;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbts$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbts$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzbts$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbts$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzbts$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbts$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzbts$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbts$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzbts$zzf;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/zzbts$zzf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzbts$zzf;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    array-length v0, v0

    goto :goto_1

    :cond_7
    new-instance v3, Lcom/google/android/gms/internal/zzbts$zzf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzbts$zzf;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbts$zze;->zzag(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbts$zze;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    return v0
.end method
