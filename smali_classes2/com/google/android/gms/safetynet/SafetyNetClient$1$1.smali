.class Lcom/google/android/gms/safetynet/SafetyNetClient$1$1;
.super Lcom/google/android/gms/internal/zzazr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/safetynet/SafetyNetClient$1;->zza(Lcom/google/android/gms/internal/zzazw;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaBg:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/safetynet/SafetyNetClient$1;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/safetynet/SafetyNetClient$1$1;->zzaBg:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazr;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/safetynet/SafetyNetClient$1$1;->zzaBg:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzabw;->zza(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
