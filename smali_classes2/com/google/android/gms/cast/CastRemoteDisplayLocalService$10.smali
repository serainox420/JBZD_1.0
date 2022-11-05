.class Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;)Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzanT:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$10;->zzanT:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$10;->zzanT:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$10;->zzanT:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzf(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzss()Lcom/google/android/gms/internal/zzyz;

    move-result-object v0

    const-string v1, "[Instance: %s] ConnectionSuspended %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
