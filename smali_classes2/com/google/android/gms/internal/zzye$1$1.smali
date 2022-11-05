.class Lcom/google/android/gms/internal/zzye$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzye$1;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzavn:Lcom/google/android/gms/internal/zzye$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzye$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzye$1$1;->zzavn:Lcom/google/android/gms/internal/zzye$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzye$1$1;->zzavn:Lcom/google/android/gms/internal/zzye$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzye$1;->zzavm:Lcom/google/android/gms/internal/zzye;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzye;->zzcP(Ljava/lang/String;)V

    return-void
.end method
