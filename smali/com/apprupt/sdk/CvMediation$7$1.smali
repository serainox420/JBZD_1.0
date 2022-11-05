.class Lcom/apprupt/sdk/CvMediation$7$1;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediation$7;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apprupt/sdk/CvMediation$7;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation$7;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$7$1;->b:Lcom/apprupt/sdk/CvMediation$7;

    iput-object p2, p0, Lcom/apprupt/sdk/CvMediation$7$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$7$1;->b:Lcom/apprupt/sdk/CvMediation$7;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$7;->a:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$7$1;->b:Lcom/apprupt/sdk/CvMediation$7;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$7;->a:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    new-instance v1, Lcom/apprupt/sdk/CvPreloaderResponse;

    iget-object v2, p0, Lcom/apprupt/sdk/CvMediation$7$1;->a:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/apprupt/sdk/CvPreloaderResponse;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvContentManager$PreloaderListener;->onPreloaderFinish(Lcom/apprupt/sdk/CvPreloaderResponse;)V

    .line 254
    :cond_0
    return-void
.end method
