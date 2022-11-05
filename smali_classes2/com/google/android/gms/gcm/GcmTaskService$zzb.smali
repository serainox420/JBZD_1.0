.class Lcom/google/android/gms/gcm/GcmTaskService$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/GcmTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mTag:Ljava/lang/String;

.field private final zzbgA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbgB:Lcom/google/android/gms/gcm/zzb;

.field final synthetic zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mTag:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/gcm/zzb$zza;->zzcV(Landroid/os/IBinder;)Lcom/google/android/gms/gcm/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgB:Lcom/google/android/gms/gcm/zzb;

    iput-object p4, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mExtras:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgA:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Messenger;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mMessenger:Landroid/os/Messenger;

    iput-object p4, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mExtras:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgA:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgB:Lcom/google/android/gms/gcm/zzb;

    return-void
.end method

.method private zzGR()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzjB(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzGR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mMessenger:Landroid/os/Messenger;

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzjC(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgB:Lcom/google/android/gms/gcm/zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/gcm/zzb;->zzjD(I)V

    goto :goto_0
.end method

.method private zzjC(I)Landroid/os/Message;
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "component"

    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;

    invoke-static {v3}, Lcom/google/android/gms/gcm/GcmTaskService;->zzb(Lcom/google/android/gms/gcm/GcmTaskService;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "tag"

    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/gcm/TaskParams;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mExtras:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgA:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/TaskParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/GcmTaskService;->onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I

    move-result v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzjB(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzGR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/GcmTaskService;->zza(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "GcmTaskService"

    const-string v2, "Error reporting result of operation to scheduler for "

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzGR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/GcmTaskService;->zza(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzGR()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;->mTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/gcm/GcmTaskService;->zza(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;)V

    :cond_2
    throw v0
.end method
