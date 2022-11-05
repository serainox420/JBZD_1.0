.class public Lcom/google/android/gms/tagmanager/TagManagerApiImpl;
.super Lcom/google/android/gms/tagmanager/zzbc$zza;


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field private zzbIx:Lcom/google/android/gms/internal/zzbcj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzbc$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/zzbcj;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)Lcom/google/android/gms/internal/zzbcj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManagerApiImpl;->zzbIx:Lcom/google/android/gms/internal/zzbcj;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManagerApiImpl;->zzbIx:Lcom/google/android/gms/internal/zzbcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbcj;->initialize()V

    return-void
.end method

.method public preview(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Deprecated. Please use previewIntent instead."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    return-void
.end method

.method public previewIntent(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)V
    .locals 4

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/google/android/gms/internal/zzbcj;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)Lcom/google/android/gms/internal/zzbcj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/tagmanager/TagManagerApiImpl;->zzbIx:Lcom/google/android/gms/internal/zzbcj;

    new-instance v2, Lcom/google/android/gms/internal/zzbby;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/TagManagerApiImpl;->zzbIx:Lcom/google/android/gms/internal/zzbcj;

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/google/android/gms/internal/zzbby;-><init>(Landroid/content/Intent;Landroid/content/Context;Landroid/content/Context;Lcom/google/android/gms/internal/zzbcj;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbby;->zzSf()V

    return-void
.end method
