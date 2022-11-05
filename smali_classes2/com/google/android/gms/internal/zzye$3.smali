.class Lcom/google/android/gms/internal/zzye$3;
.super Lcom/google/android/gms/internal/zzye$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzye;->sendGameRequest(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzavm:Lcom/google/android/gms/internal/zzye;

.field final synthetic zzavp:Ljava/lang/String;

.field final synthetic zzavq:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzye;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzye$3;->zzavm:Lcom/google/android/gms/internal/zzye;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzye$3;->zzavp:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzye$3;->zzavq:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzye$zza;-><init>(Lcom/google/android/gms/internal/zzye;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzye$3;->zzavm:Lcom/google/android/gms/internal/zzye;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzye$3;->zzavp:Ljava/lang/String;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzye$3;->zzavq:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzye$3;->zzuq()Lcom/google/android/gms/internal/zzzc;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzye;->zza(Lcom/google/android/gms/internal/zzye;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzzc;)V

    return-void
.end method
