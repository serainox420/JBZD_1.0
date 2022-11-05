.class Lcom/google/android/gms/internal/zzazv$zze$1;
.super Lcom/google/android/gms/internal/zzazr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzazv$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbDv:Lcom/google/android/gms/internal/zzazv$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazv$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazv$zze$1;->zzbDv:Lcom/google/android/gms/internal/zzazv$zze;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazr;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazv$zze$1;->zzbDv:Lcom/google/android/gms/internal/zzazv$zze;

    new-instance v1, Lcom/google/android/gms/internal/zzazv$zzh;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzazv$zzh;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzazv$zze;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
