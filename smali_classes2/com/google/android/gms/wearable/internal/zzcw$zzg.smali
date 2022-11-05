.class final Lcom/google/android/gms/wearable/internal/zzcw$zzg;
.super Lcom/google/android/gms/wearable/internal/zzcw$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzcw$zzb",
        "<",
        "Lcom/google/android/gms/wearable/CapabilityApi$GetCapabilityResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$GetCapabilityResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzb;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wearable/internal/zzav;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzn$zze;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/zzav;->statusCode:I

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzcr;->zzik(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzn$zzc;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzav;->zzbUu:Lcom/google/android/gms/wearable/internal/zzo;

    invoke-direct {v2, v3}, Lcom/google/android/gms/wearable/internal/zzn$zzc;-><init>(Lcom/google/android/gms/wearable/CapabilityInfo;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzn$zze;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/CapabilityInfo;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzcw$zzg;->zzaa(Ljava/lang/Object;)V

    return-void
.end method
