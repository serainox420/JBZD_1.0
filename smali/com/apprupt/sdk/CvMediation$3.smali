.class Lcom/apprupt/sdk/CvMediation$3;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediation;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/apprupt/sdk/CvMediation;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$3;->b:Lcom/apprupt/sdk/CvMediation;

    iput-object p2, p0, Lcom/apprupt/sdk/CvMediation$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$3;->b:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v0}, Lcom/apprupt/sdk/CvMediation;->c(Lcom/apprupt/sdk/CvMediation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvMediation$3$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvMediation$3$1;-><init>(Lcom/apprupt/sdk/CvMediation$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method
