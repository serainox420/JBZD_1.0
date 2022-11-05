.class Lcom/google/android/gms/internal/zzbpp$1;
.super Lcom/google/android/gms/internal/zzbrr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpp;->zzr(Lcom/google/android/gms/internal/zzbph;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcdL:Lcom/google/android/gms/internal/zzbph;

.field final synthetic zzcfF:Lcom/google/android/gms/internal/zzbpp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpp;Lcom/google/android/gms/internal/zzbph;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpp$1;->zzcfF:Lcom/google/android/gms/internal/zzbpp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpp$1;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbrr$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpp$1;->zzcfF:Lcom/google/android/gms/internal/zzbpp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpp$1;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzbpp;->zzh(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    return-void
.end method
