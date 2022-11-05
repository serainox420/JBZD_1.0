.class Lcom/google/android/gms/internal/zzazv$zzb$1;
.super Lcom/google/android/gms/internal/zzazr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzazv$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbDs:Lcom/google/android/gms/internal/zzazv$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazv$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazv$zzb$1;->zzbDs:Lcom/google/android/gms/internal/zzazv$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazr;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazv$zzb$1;->zzbDs:Lcom/google/android/gms/internal/zzazv$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzazv$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzazv$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzazv$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
