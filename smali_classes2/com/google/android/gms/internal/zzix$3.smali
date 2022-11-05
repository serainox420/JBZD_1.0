.class Lcom/google/android/gms/internal/zzix$3;
.super Lcom/google/android/gms/internal/zzle$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzix;->zzc(Lcom/google/android/gms/ads/internal/zzm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzIN:Lcom/google/android/gms/internal/zzix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzix;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzix$3;->zzIN:Lcom/google/android/gms/internal/zzix;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzle$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzld;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix$3;->zzIN:Lcom/google/android/gms/internal/zzix;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzix;->zza(Lcom/google/android/gms/internal/zzix;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzix$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzix$3$1;-><init>(Lcom/google/android/gms/internal/zzix$3;Lcom/google/android/gms/internal/zzld;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
