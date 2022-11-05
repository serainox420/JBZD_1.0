.class Lcom/apprupt/sdk/CvDevicePayload$3;
.super Ljava/lang/Object;
.source "CvDevicePayload.java"

# interfaces
.implements Lcom/apprupt/sdk/URLRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvDevicePayload;->a()V
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
    .line 121
    iput-object p1, p0, Lcom/apprupt/sdk/CvDevicePayload$3;->a:Lcom/apprupt/sdk/CvDevicePayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload$3;->a:Lcom/apprupt/sdk/CvDevicePayload;

    invoke-static {v0}, Lcom/apprupt/sdk/CvDevicePayload;->b(Lcom/apprupt/sdk/CvDevicePayload;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvDevicePayload$3$1;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvDevicePayload$3$1;-><init>(Lcom/apprupt/sdk/CvDevicePayload$3;Lcom/apprupt/sdk/URLRequest$URLResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method
