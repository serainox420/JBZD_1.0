.class Lcom/google/android/gms/internal/zzapm$7$1;
.super Lcom/google/android/gms/internal/zzaol$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapm$7;->zza(Lcom/google/android/gms/internal/zzaog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaUU:Lcom/google/android/gms/internal/zzapm$7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapm$7;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapm$7$1;->zzaUU:Lcom/google/android/gms/internal/zzapm$7;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaol$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/DailyTotalResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapm$7$1;->zzaUU:Lcom/google/android/gms/internal/zzapm$7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzapm$7;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
