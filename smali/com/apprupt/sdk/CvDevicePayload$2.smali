.class Lcom/apprupt/sdk/CvDevicePayload$2;
.super Ljava/lang/Object;
.source "CvDevicePayload.java"

# interfaces
.implements Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvDevicePayload;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvDevicePayload;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDevicePayload;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/apprupt/sdk/CvDevicePayload$2;->a:Lcom/apprupt/sdk/CvDevicePayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload$2;->a:Lcom/apprupt/sdk/CvDevicePayload;

    invoke-static {v0}, Lcom/apprupt/sdk/CvDevicePayload;->a(Lcom/apprupt/sdk/CvDevicePayload;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "GOT PAYLOAD RESULT, PASSING FWD"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload$2;->a:Lcom/apprupt/sdk/CvDevicePayload;

    invoke-static {v0}, Lcom/apprupt/sdk/CvDevicePayload;->b(Lcom/apprupt/sdk/CvDevicePayload;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvDevicePayload$2$1;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvDevicePayload$2$1;-><init>(Lcom/apprupt/sdk/CvDevicePayload$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method
