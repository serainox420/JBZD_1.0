.class Lcom/google/android/gms/safetynet/SafetyNetClient$2$1;
.super Lcom/google/android/gms/internal/zzazr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/safetynet/SafetyNetClient$2;->zza(Lcom/google/android/gms/internal/zzazw;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaBg:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/safetynet/SafetyNetClient$2;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/safetynet/SafetyNetClient$2$1;->zzaBg:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazr;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbC(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/safetynet/SafetyNetClient$2$1;->zzaBg:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzabw;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
