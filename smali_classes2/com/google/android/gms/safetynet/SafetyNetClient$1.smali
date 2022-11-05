.class Lcom/google/android/gms/safetynet/SafetyNetClient$1;
.super Lcom/google/android/gms/internal/zzabv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/safetynet/SafetyNetClient;->isAdmEnabled()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzabv",
        "<",
        "Lcom/google/android/gms/internal/zzazw;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/safetynet/SafetyNetClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzabv;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzazw;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/safetynet/SafetyNetClient$1;->zza(Lcom/google/android/gms/internal/zzazw;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzazw;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzazw;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/safetynet/SafetyNetClient$1$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/safetynet/SafetyNetClient$1$1;-><init>(Lcom/google/android/gms/safetynet/SafetyNetClient$1;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzazw;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzazu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzazu;->zzf(Lcom/google/android/gms/internal/zzazt;)V

    return-void
.end method
