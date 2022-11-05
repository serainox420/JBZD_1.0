.class final Lcom/google/android/gms/internal/zzbpn$2;
.super Lcom/google/android/gms/internal/zzbrr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbsc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcfA:Ljava/util/Map;

.field final synthetic zzcfB:Lcom/google/android/gms/internal/zzbpo;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzbpo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpn$2;->zzcfA:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpn$2;->zzcfB:Lcom/google/android/gms/internal/zzbpo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrr$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpn$2;->zzcfA:Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpn$2;->zzcfB:Lcom/google/android/gms/internal/zzbpo;

    new-instance v2, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzbpo;->zzg(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    :cond_0
    return-void
.end method
