.class final Lcom/google/android/gms/internal/zzbpn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbpp$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbpp;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcfA:Ljava/util/Map;

.field final synthetic zzcfz:Lcom/google/android/gms/internal/zzbpp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpp;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpn$1;->zzcfz:Lcom/google/android/gms/internal/zzbpp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpn$1;->zzcfA:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzf(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpn$1;->zzcfz:Lcom/google/android/gms/internal/zzbpp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpn$1;->zzcfA:Ljava/util/Map;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbpp;->zzh(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    return-void
.end method
