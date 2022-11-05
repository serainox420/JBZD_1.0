.class Lcom/google/android/gms/internal/zzbls$zzj;
.super Lcom/google/android/gms/internal/zzabv;

# interfaces
.implements Lcom/google/android/gms/internal/zzbmc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzabv",
        "<",
        "Lcom/google/android/gms/internal/zzblt;",
        "TResultT;>;",
        "Lcom/google/android/gms/internal/zzbmc",
        "<TResultT;>;"
    }
.end annotation


# instance fields
.field private zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TResultT;>;"
        }
    .end annotation
.end field

.field private zzbXZ:Lcom/google/android/gms/internal/zzbmd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbmd",
            "<TResultT;TCallbackT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbmd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbmd",
            "<TResultT;TCallbackT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzabv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbls$zzj;->zzbXZ:Lcom/google/android/gms/internal/zzbmd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzj;->zzbXZ:Lcom/google/android/gms/internal/zzbmd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbmd;->zza(Lcom/google/android/gms/internal/zzbmc;)Lcom/google/android/gms/internal/zzbmd;

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

    check-cast p1, Lcom/google/android/gms/internal/zzblt;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbls$zzj;->zza(Lcom/google/android/gms/internal/zzblt;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzblt;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzblt;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TResultT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbls$zzj;->zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzj;->zzbXZ:Lcom/google/android/gms/internal/zzbmd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzblt;->zzVP()Lcom/google/android/gms/internal/zzblz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbmd;->zza(Lcom/google/android/gms/internal/zzblz;)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzj;->zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const-string v1, "doExecute must be called before onComplete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzj;->zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzblv;->zzce(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzj;->zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
