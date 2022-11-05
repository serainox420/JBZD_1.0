.class Lcom/google/android/gms/internal/zzboy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzboy;->zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)Lcom/google/android/gms/internal/zzboy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbqq$zza",
        "<",
        "Lcom/google/android/gms/internal/zzbsc;",
        "Lcom/google/android/gms/internal/zzboy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcdL:Lcom/google/android/gms/internal/zzbph;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboy;Lcom/google/android/gms/internal/zzbph;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzboy$1;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzboy;)Lcom/google/android/gms/internal/zzboy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboy$1;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/google/android/gms/internal/zzboy;->zze(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/zzbsc;

    check-cast p3, Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzboy$1;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzboy;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    return-object v0
.end method
