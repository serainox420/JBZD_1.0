.class Lcom/google/android/gms/internal/zzbqs$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbqs;->zza(Lcom/google/android/gms/internal/zzbqs$zzb;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbqs$zzb",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzchG:Lcom/google/android/gms/internal/zzbqs$zzb;

.field final synthetic zzchH:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbqs;Lcom/google/android/gms/internal/zzbqs$zzb;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqs$1;->zzchG:Lcom/google/android/gms/internal/zzbqs$zzb;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbqs$1;->zzchH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(Lcom/google/android/gms/internal/zzbqs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqs",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqs$1;->zzchG:Lcom/google/android/gms/internal/zzbqs$zzb;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbqs$1;->zzchH:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbqs;->zza(Lcom/google/android/gms/internal/zzbqs$zzb;ZZ)V

    return-void
.end method
