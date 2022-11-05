.class Lcom/google/android/gms/internal/zzapl$1$1;
.super Lcom/google/android/gms/internal/zzaor$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapl$1;->zza(Lcom/google/android/gms/internal/zzaof;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaUK:Lcom/google/android/gms/internal/zzapl$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapl$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapl$1$1;->zzaUK:Lcom/google/android/gms/internal/zzapl$1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaor$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/GoalsResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapl$1$1;->zzaUK:Lcom/google/android/gms/internal/zzapl$1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzapl$1;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
