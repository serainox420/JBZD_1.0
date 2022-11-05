.class Lcom/google/android/gms/internal/zzbcj$zzb;
.super Lcom/google/android/gms/internal/zzbbr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbcj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzbKN:Lcom/google/android/gms/internal/zzbcj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbcj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcj$zzb;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbbr$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbcj;Lcom/google/android/gms/internal/zzbcj$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbcj$zzb;-><init>(Lcom/google/android/gms/internal/zzbcj;)V

    return-void
.end method


# virtual methods
.method public zza(ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj$zzb;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcj;->zzf(Lcom/google/android/gms/internal/zzbcj;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbcj$zzb$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzbcj$zzb$1;-><init>(Lcom/google/android/gms/internal/zzbcj$zzb;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
