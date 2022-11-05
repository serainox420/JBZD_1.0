.class Lcom/google/android/gms/internal/zzyo$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzyo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzavS:Lcom/google/android/gms/internal/zzyo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzyo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyo$zza;->zzavS:Lcom/google/android/gms/internal/zzyo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzyo;Lcom/google/android/gms/internal/zzyo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzyo$zza;-><init>(Lcom/google/android/gms/internal/zzyo;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyo$zza;->zzavS:Lcom/google/android/gms/internal/zzyo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzyo;->zzavR:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyo$zza;->zzavS:Lcom/google/android/gms/internal/zzyo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzyo;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyo$zza;->zzavS:Lcom/google/android/gms/internal/zzyo;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzyo;->zzF(J)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyo$zza;->zzavS:Lcom/google/android/gms/internal/zzyo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzyo;->zzaq(Z)V

    return-void
.end method
