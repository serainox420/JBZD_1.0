.class Lcom/google/android/gms/internal/zzbsk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbsk$zzc;,
        Lcom/google/android/gms/internal/zzbsk$zza;,
        Lcom/google/android/gms/internal/zzbsk$zzb;
    }
.end annotation


# direct methods
.method static zzb(B)Lcom/google/android/gms/internal/zzbsk$zzb;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbsk$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbsk$zza;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbsk$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbsk$zzc;-><init>()V

    goto :goto_0
.end method
