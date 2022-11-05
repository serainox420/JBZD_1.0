.class Lcom/apprupt/sdk/CvDevicePayloadJS$2;
.super Ljava/lang/Object;
.source "CvDevicePayloadJS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvDevicePayloadJS;->onPayload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apprupt/sdk/CvDevicePayloadJS;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDevicePayloadJS;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$2;->b:Lcom/apprupt/sdk/CvDevicePayloadJS;

    iput-object p2, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$2;->b:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v0}, Lcom/apprupt/sdk/CvDevicePayloadJS;->b(Lcom/apprupt/sdk/CvDevicePayloadJS;)Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$2;->b:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v0, v5}, Lcom/apprupt/sdk/CvDevicePayloadJS;->a(Lcom/apprupt/sdk/CvDevicePayloadJS;Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;)Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;

    .line 126
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    :try_start_1
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$2;->b:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v1}, Lcom/apprupt/sdk/CvDevicePayloadJS;->a(Lcom/apprupt/sdk/CvDevicePayloadJS;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Error calling payload listener"

    aput-object v4, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$2;->b:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v0, v5}, Lcom/apprupt/sdk/CvDevicePayloadJS;->a(Lcom/apprupt/sdk/CvDevicePayloadJS;Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;)Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS$2;->b:Lcom/apprupt/sdk/CvDevicePayloadJS;

    invoke-static {v1, v5}, Lcom/apprupt/sdk/CvDevicePayloadJS;->a(Lcom/apprupt/sdk/CvDevicePayloadJS;Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;)Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;

    throw v0
.end method
