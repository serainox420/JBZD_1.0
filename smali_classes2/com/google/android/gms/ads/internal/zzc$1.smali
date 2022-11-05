.class Lcom/google/android/gms/ads/internal/zzc$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzjj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsH:Lcom/google/android/gms/ads/internal/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$1;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$1;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$1;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzsu:Lcom/google/android/gms/internal/zzcs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$1;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$1;->zzsH:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzcs;->zza(Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzpb;Landroid/view/View;Lcom/google/android/gms/internal/zzjj;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0
.end method
