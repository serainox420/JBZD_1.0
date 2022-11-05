.class Lcom/google/android/gms/internal/zzye$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzye;->zza(Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzzc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzavm:Lcom/google/android/gms/internal/zzye;

.field final synthetic zzavr:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzye;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzye$4;->zzavm:Lcom/google/android/gms/internal/zzye;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzye$4;->zzavr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzye$4;->zzp(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zzp(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzye$4;->zzavm:Lcom/google/android/gms/internal/zzye;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzye$4;->zzavr:J

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzye;->zzb(JI)V

    :cond_0
    return-void
.end method
