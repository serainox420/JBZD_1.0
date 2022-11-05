.class Lcom/apprupt/sdk/CvDevicePayload$3$1;
.super Ljava/lang/Object;
.source "CvDevicePayload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvDevicePayload$3;->a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/URLRequest$URLResponse;

.field final synthetic b:Lcom/apprupt/sdk/CvDevicePayload$3;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDevicePayload$3;Lcom/apprupt/sdk/URLRequest$URLResponse;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/apprupt/sdk/CvDevicePayload$3$1;->b:Lcom/apprupt/sdk/CvDevicePayload$3;

    iput-object p2, p0, Lcom/apprupt/sdk/CvDevicePayload$3$1;->a:Lcom/apprupt/sdk/URLRequest$URLResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload$3$1;->b:Lcom/apprupt/sdk/CvDevicePayload$3;

    iget-object v1, v0, Lcom/apprupt/sdk/CvDevicePayload$3;->a:Lcom/apprupt/sdk/CvDevicePayload;

    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload$3$1;->a:Lcom/apprupt/sdk/URLRequest$URLResponse;

    iget-boolean v0, v0, Lcom/apprupt/sdk/URLRequest$URLResponse;->d:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lcom/apprupt/sdk/CvDevicePayload;->b(Ljava/lang/String;)V

    .line 127
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload$3$1;->a:Lcom/apprupt/sdk/URLRequest$URLResponse;

    iget-object v0, v0, Lcom/apprupt/sdk/URLRequest$URLResponse;->c:Ljava/lang/String;

    goto :goto_0
.end method
