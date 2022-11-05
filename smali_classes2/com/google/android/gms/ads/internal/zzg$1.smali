.class Lcom/google/android/gms/ads/internal/zzg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzg;->zza(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzpb;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsT:Lcom/google/android/gms/ads/internal/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzg$1;->zzsT:Lcom/google/android/gms/ads/internal/zzg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg$1;->zzsT:Lcom/google/android/gms/ads/internal/zzg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg$1;->zzsT:Lcom/google/android/gms/ads/internal/zzg;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzg;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzg;->zzf(Lcom/google/android/gms/internal/zzpb;)V

    return-void
.end method
