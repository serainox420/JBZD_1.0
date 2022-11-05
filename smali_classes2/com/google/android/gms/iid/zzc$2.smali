.class Lcom/google/android/gms/iid/zzc$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/iid/zzc;->zzHm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbie:Lcom/google/android/gms/iid/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/iid/zzc$2;->zzbie:Lcom/google/android/gms/iid/zzc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "InstanceID/Rpc"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InstanceID/Rpc"

    const-string v1, "Received GSF callback via dynamic receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/iid/zzc$2;->zzbie:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/iid/zzc;->zzs(Landroid/content/Intent;)V

    return-void
.end method
