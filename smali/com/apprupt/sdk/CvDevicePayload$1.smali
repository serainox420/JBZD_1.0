.class Lcom/apprupt/sdk/CvDevicePayload$1;
.super Ljava/lang/Object;
.source "CvDevicePayload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvDevicePayload;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/apprupt/sdk/CvDevicePayload;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDevicePayload;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/apprupt/sdk/CvDevicePayload$1;->b:Lcom/apprupt/sdk/CvDevicePayload;

    iput-object p2, p0, Lcom/apprupt/sdk/CvDevicePayload$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload$1;->b:Lcom/apprupt/sdk/CvDevicePayload;

    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayload$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvDevicePayload;->a(Lcom/apprupt/sdk/CvDevicePayload;Landroid/content/Context;)V

    .line 75
    return-void
.end method
