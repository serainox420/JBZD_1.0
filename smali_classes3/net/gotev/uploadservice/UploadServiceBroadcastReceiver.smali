.class public Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UploadServiceBroadcastReceiver.java"

# interfaces
.implements Lnet/gotev/uploadservice/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public a(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public a(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;Lnet/gotev/uploadservice/ServerResponse;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public b(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 25
    if-eqz p2, :cond_0

    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const-string v0, "broadcastData"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/BroadcastData;

    .line 30
    if-nez v0, :cond_2

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing intent parameter: broadcastData"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_2
    sget-object v1, Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver$1;->a:[I

    invoke-virtual {v0}, Lnet/gotev/uploadservice/BroadcastData;->b()Lnet/gotev/uploadservice/BroadcastData$Status;

    move-result-object v2

    invoke-virtual {v2}, Lnet/gotev/uploadservice/BroadcastData$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 37
    :pswitch_0
    invoke-virtual {v0}, Lnet/gotev/uploadservice/BroadcastData;->d()Lnet/gotev/uploadservice/UploadInfo;

    move-result-object v1

    invoke-virtual {v0}, Lnet/gotev/uploadservice/BroadcastData;->c()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver;->a(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;Ljava/lang/Exception;)V

    goto :goto_0

    .line 41
    :pswitch_1
    invoke-virtual {v0}, Lnet/gotev/uploadservice/BroadcastData;->d()Lnet/gotev/uploadservice/UploadInfo;

    move-result-object v1

    invoke-virtual {v0}, Lnet/gotev/uploadservice/BroadcastData;->e()Lnet/gotev/uploadservice/ServerResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver;->a(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;Lnet/gotev/uploadservice/ServerResponse;)V

    goto :goto_0

    .line 45
    :pswitch_2
    invoke-virtual {v0}, Lnet/gotev/uploadservice/BroadcastData;->d()Lnet/gotev/uploadservice/UploadInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver;->a(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;)V

    goto :goto_0

    .line 49
    :pswitch_3
    invoke-virtual {v0}, Lnet/gotev/uploadservice/BroadcastData;->d()Lnet/gotev/uploadservice/UploadInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver;->b(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
