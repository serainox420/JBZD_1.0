.class public Lcom/google/android/gms/internal/zzayo;
.super Lcom/google/android/gms/nearby/messages/internal/zzq$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzayj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzq$zza;",
        "Lcom/google/android/gms/internal/zzayj",
        "<",
        "Lcom/google/android/gms/nearby/messages/StatusCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbBp:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzq$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayo;->zzbBp:Lcom/google/android/gms/internal/zzabh;

    return-void
.end method


# virtual methods
.method public onPermissionChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayo;->zzbBp:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzayo$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzayo$1;-><init>(Lcom/google/android/gms/internal/zzayo;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method

.method public zzOP()Lcom/google/android/gms/internal/zzabh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayo;->zzbBp:Lcom/google/android/gms/internal/zzabh;

    return-object v0
.end method
