.class Lcom/google/android/gms/gcm/GcmTaskService$zza;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/GcmTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/GcmTaskService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private zzc(Landroid/os/Message;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    const-string v0, "tag"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "triggered_uris"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmTaskService;->zza(Lcom/google/android/gms/gcm/GcmTaskService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/gcm/GcmTaskService$zzb;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;

    const-string v7, "extras"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/gcm/GcmTaskService$zzb;-><init>(Lcom/google/android/gms/gcm/GcmTaskService;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Bundle;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private zzd(Landroid/os/Message;)V
    .locals 4

    const-string v0, "GcmTaskService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GcmTaskService"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ignoring unimplemented stop message for now: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    const-string v2, "com.google.android.gms"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/util/zzy;->zzc(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GcmTaskService"

    const-string v1, "unable to verify presence of Google Play Services"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "GcmTaskService"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized message received: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzc(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzd(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmTaskService$zza;->zzbgz:Lcom/google/android/gms/gcm/GcmTaskService;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/GcmTaskService;->onInitializeTasks()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
