.class Lcom/apprupt/sdk/CvDevicePayload$2$1;
.super Ljava/lang/Object;
.source "CvDevicePayload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvDevicePayload$2;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apprupt/sdk/CvDevicePayload$2;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDevicePayload$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/apprupt/sdk/CvDevicePayload$2$1;->b:Lcom/apprupt/sdk/CvDevicePayload$2;

    iput-object p2, p0, Lcom/apprupt/sdk/CvDevicePayload$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload$2$1;->b:Lcom/apprupt/sdk/CvDevicePayload$2;

    iget-object v0, v0, Lcom/apprupt/sdk/CvDevicePayload$2;->a:Lcom/apprupt/sdk/CvDevicePayload;

    invoke-static {v0}, Lcom/apprupt/sdk/CvDevicePayload;->a(Lcom/apprupt/sdk/CvDevicePayload;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "GOT PAYLOAD RESULT, PASSING FWD2"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload$2$1;->b:Lcom/apprupt/sdk/CvDevicePayload$2;

    iget-object v0, v0, Lcom/apprupt/sdk/CvDevicePayload$2;->a:Lcom/apprupt/sdk/CvDevicePayload;

    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayload$2$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvDevicePayload;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayload$2$1;->b:Lcom/apprupt/sdk/CvDevicePayload$2;

    iget-object v1, v1, Lcom/apprupt/sdk/CvDevicePayload$2;->a:Lcom/apprupt/sdk/CvDevicePayload;

    invoke-static {v1}, Lcom/apprupt/sdk/CvDevicePayload;->a(Lcom/apprupt/sdk/CvDevicePayload;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Error"

    aput-object v3, v2, v4

    invoke-interface {v1, v0, v2}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
