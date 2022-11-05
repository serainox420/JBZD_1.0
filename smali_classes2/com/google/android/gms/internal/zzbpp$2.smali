.class Lcom/google/android/gms/internal/zzbpp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbpp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpp;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpp$zzb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcfG:Lcom/google/android/gms/internal/zzbph;

.field final synthetic zzcfH:Lcom/google/android/gms/internal/zzbpp$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpp;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpp$zzb;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpp$2;->zzcfG:Lcom/google/android/gms/internal/zzbph;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpp$2;->zzcfH:Lcom/google/android/gms/internal/zzbpp$zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbpp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp$2;->zzcfG:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpp$2;->zzcfH:Lcom/google/android/gms/internal/zzbpp$zzb;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/zzbpp;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpp$zzb;)V

    return-void
.end method
