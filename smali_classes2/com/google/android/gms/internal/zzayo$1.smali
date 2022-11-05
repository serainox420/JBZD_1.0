.class Lcom/google/android/gms/internal/zzayo$1;
.super Lcom/google/android/gms/internal/zzaym;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzayo;->onPermissionChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaym",
        "<",
        "Lcom/google/android/gms/nearby/messages/StatusCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbBt:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayo;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzayo$1;->zzbBt:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaym;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/nearby/messages/StatusCallback;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzayo$1;->zzbBt:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/messages/StatusCallback;->onPermissionChanged(Z)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/messages/StatusCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzayo$1;->zzb(Lcom/google/android/gms/nearby/messages/StatusCallback;)V

    return-void
.end method
