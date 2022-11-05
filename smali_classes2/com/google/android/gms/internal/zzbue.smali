.class public Lcom/google/android/gms/internal/zzbue;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private zzbNH:Ljava/lang/Exception;

.field private zzcoM:Lcom/google/android/gms/internal/zzbub;

.field private zzcoN:I

.field private zzcoO:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    return-void
.end method

.method private zzcB(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoN:I

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Network subsystem is unavailable"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoO:Ljava/lang/Exception;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoO:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoO:Ljava/lang/Exception;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzbNH:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzbNH:Ljava/lang/Exception;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbub;->zzadb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzbNH:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "getException failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResultCode()I
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoN:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoN:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbub;->getResultCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzbNH:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "getResultCode failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbub;->zzacX()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzbNH:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "getStream failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoN:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoO:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbub;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzbNH:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "reset failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TTResult;>;TTResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbue;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbue;->zzadc()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbue;->getResultCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/gms/internal/zzbue;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public zzaD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbub;->zzaD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "NetworkRequestProxy"

    const-string v3, "Caught remote exception setting custom header:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public zzacW()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbub;->zzacW()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzbNH:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "performRequestEnd failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzacZ()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbub;->zzacZ()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzbNH:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "getRawResult failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzadc()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzbue;->zzcoN:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbue;->zzcoO:Ljava/lang/Exception;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbub;->zzadc()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbue;->zzbNH:Ljava/lang/Exception;

    const-string v2, "NetworkRequestProxy"

    const-string v3, "isResultSuccess failed with a RemoteException:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzadd()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbub;->zzadd()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzbNH:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "getResultingContentLength failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzadf()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbub;->zzacY()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public zzd(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbue;->zzcB(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbub;->zzjM(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzbNH:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "performRequest failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzjN(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbub;->zzjN(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzbNH:Ljava/lang/Exception;

    const-string v1, "NetworkRequestProxy"

    const-string v2, "performRequestStart failed with a RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zzjO(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbue;->zzcoM:Lcom/google/android/gms/internal/zzbub;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbub;->zzjO(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "NetworkRequestProxy"

    const-string v3, "getResultString failed with a RemoteException:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
