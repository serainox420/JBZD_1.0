.class Lcom/google/android/gms/internal/zzbpr$zzb;
.super Lcom/google/android/gms/internal/zzbpc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private zzcdH:Lcom/google/android/gms/internal/zzbrc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbrc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$zzb;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbpr$zzb;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbpr$zzb;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbpr$zzb;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$zzb;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$zzb;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->hashCode()I

    move-result v0

    return v0
.end method

.method public zzYn()Lcom/google/android/gms/internal/zzbrc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$zzb;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbpc;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbpr$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbpr$zzb;-><init>(Lcom/google/android/gms/internal/zzbrc;)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqw;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqx;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/firebase/database/c;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqy$zza;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbpc;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbpr$zzb;

    return v0
.end method
