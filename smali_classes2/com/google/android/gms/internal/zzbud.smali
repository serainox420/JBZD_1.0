.class public Lcom/google/android/gms/internal/zzbud;
.super Ljava/lang/Object;


# static fields
.field private static final zzcoJ:Ljava/lang/Object;

.field static volatile zzcoK:Lcom/google/android/gms/internal/zzbud;


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzcli:Lcom/google/firebase/a;

.field private zzcoL:Lcom/google/android/gms/internal/zzbuc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbud;->zzcoJ:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/google/firebase/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/firebase/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbud;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbud;->zzcli:Lcom/google/firebase/a;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbud;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRU:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    const-string v2, "com.google.android.gms.firebasestorage"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzb;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v1, "com.google.firebase.storage.network.NetworkRequestFactoryImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzdT(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbuc$zza;->zzfT(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbuc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbud;->zzcoL:Lcom/google/android/gms/internal/zzbuc;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbud;->zzcoL:Lcom/google/android/gms/internal/zzbuc;

    if-nez v0, :cond_0

    const-string v0, "NetworkRqFactoryProxy"

    const-string v1, "Unable to load Firebase Storage Network layer."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkRqFactoryProxy"

    const-string v2, "NetworkRequestFactoryProxy failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private zzf(Lcom/google/android/gms/internal/zzbue;)Lcom/google/android/gms/internal/zzbue;
    .locals 2

    const-string v0, "x-firebase-gmpid"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbud;->zzcli:Lcom/google/firebase/a;

    invoke-virtual {v1}, Lcom/google/firebase/a;->c()Lcom/google/firebase/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbue;->zzaD(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static zzj(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbud;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbud;->zzcoK:Lcom/google/android/gms/internal/zzbud;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzbud;->zzcoJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbud;->zzcoK:Lcom/google/android/gms/internal/zzbud;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbud;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbud;-><init>(Lcom/google/firebase/a;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbud;->zzcoK:Lcom/google/android/gms/internal/zzbud;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzbud;->zzcoK:Lcom/google/android/gms/internal/zzbud;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public zzA(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbud;->zzcoL:Lcom/google/android/gms/internal/zzbuc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbuc;->zzA(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkRqFactoryProxy"

    const-string v2, "getDefaultURL failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzC(Landroid/net/Uri;)Lcom/google/android/gms/internal/zzbue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbue;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbud;->zzcoL:Lcom/google/android/gms/internal/zzbuc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbud;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/zzbuc;->zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/zzbub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbue;-><init>(Lcom/google/android/gms/internal/zzbub;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbud;->zzf(Lcom/google/android/gms/internal/zzbue;)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0

    return-object v0
.end method

.method public zzD(Landroid/net/Uri;)Lcom/google/android/gms/internal/zzbue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbue;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbud;->zzcoL:Lcom/google/android/gms/internal/zzbuc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbud;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/zzbuc;->zzb(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/zzbub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbue;-><init>(Lcom/google/android/gms/internal/zzbub;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbud;->zzf(Lcom/google/android/gms/internal/zzbue;)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/net/Uri;J)Lcom/google/android/gms/internal/zzbue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbue;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbud;->zzcoL:Lcom/google/android/gms/internal/zzbuc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbud;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Lcom/google/android/gms/internal/zzbuc;->zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;J)Lcom/google/android/gms/internal/zzbub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbue;-><init>(Lcom/google/android/gms/internal/zzbub;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbud;->zzf(Lcom/google/android/gms/internal/zzbue;)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbue;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbud;->zzcoL:Lcom/google/android/gms/internal/zzbuc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbud;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lcom/google/android/gms/internal/zzbuc;->zzb(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbue;-><init>(Lcom/google/android/gms/internal/zzbub;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbud;->zzf(Lcom/google/android/gms/internal/zzbue;)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/net/Uri;Ljava/lang/String;[BJIZ)Lcom/google/android/gms/internal/zzbue;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbue;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbud;->zzcoL:Lcom/google/android/gms/internal/zzbuc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbud;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v2, p1

    move-object v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/internal/zzbuc;->zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;JIZ)Lcom/google/android/gms/internal/zzbub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbue;-><init>(Lcom/google/android/gms/internal/zzbub;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbud;->zzf(Lcom/google/android/gms/internal/zzbue;)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/net/Uri;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzbue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbue;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbud;->zzcoL:Lcom/google/android/gms/internal/zzbuc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbud;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/gms/internal/zzbuc;->zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/zzbub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbue;-><init>(Lcom/google/android/gms/internal/zzbub;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbud;->zzf(Lcom/google/android/gms/internal/zzbue;)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbue;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbud;->zzcoL:Lcom/google/android/gms/internal/zzbuc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbud;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, p3}, Lcom/google/android/gms/internal/zzbuc;->zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbue;-><init>(Lcom/google/android/gms/internal/zzbub;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbud;->zzf(Lcom/google/android/gms/internal/zzbue;)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0

    return-object v0
.end method

.method public zzade()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbud;->zzcoL:Lcom/google/android/gms/internal/zzbuc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbuc;->zzade()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkRqFactoryProxy"

    const-string v2, "getBackendAuthority failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzb(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbue;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbud;->zzcoL:Lcom/google/android/gms/internal/zzbuc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbud;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lcom/google/android/gms/internal/zzbuc;->zzc(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbue;-><init>(Lcom/google/android/gms/internal/zzbub;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbud;->zzf(Lcom/google/android/gms/internal/zzbue;)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0

    return-object v0
.end method
