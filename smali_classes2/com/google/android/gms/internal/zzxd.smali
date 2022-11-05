.class public Lcom/google/android/gms/internal/zzxd;
.super Landroid/support/v7/media/g$a;


# static fields
.field private static final zzapV:Lcom/google/android/gms/internal/zzyz;


# instance fields
.field private final zzaqX:Lcom/google/android/gms/internal/zzxa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzyz;

    const-string v1, "MediaRouterCallback"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzyz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzxd;->zzapV:Lcom/google/android/gms/internal/zzyz;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzxa;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/media/g$a;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzxa;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxd;->zzaqX:Lcom/google/android/gms/internal/zzxa;

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxd;->zzaqX:Lcom/google/android/gms/internal/zzxa;

    invoke-virtual {p2}, Landroid/support/v7/media/g$g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/media/g$g;->u()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzxa;->zzc(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzxd;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onRouteAdded"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/internal/zzxa;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onRouteChanged(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxd;->zzaqX:Lcom/google/android/gms/internal/zzxa;

    invoke-virtual {p2}, Landroid/support/v7/media/g$g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/media/g$g;->u()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzxa;->zzd(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzxd;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onRouteChanged"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/internal/zzxa;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onRouteRemoved(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxd;->zzaqX:Lcom/google/android/gms/internal/zzxa;

    invoke-virtual {p2}, Landroid/support/v7/media/g$g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/media/g$g;->u()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzxa;->zze(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzxd;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onRouteRemoved"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/internal/zzxa;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onRouteSelected(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxd;->zzaqX:Lcom/google/android/gms/internal/zzxa;

    invoke-virtual {p2}, Landroid/support/v7/media/g$g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/media/g$g;->u()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzxa;->zzf(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzxd;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onRouteSelected"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/internal/zzxa;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onRouteUnselected(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;I)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxd;->zzaqX:Lcom/google/android/gms/internal/zzxa;

    invoke-virtual {p2}, Landroid/support/v7/media/g$g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/media/g$g;->u()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/internal/zzxa;->zza(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzxd;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onRouteUnselected"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/internal/zzxa;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
