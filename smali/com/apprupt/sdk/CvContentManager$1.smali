.class Lcom/apprupt/sdk/CvContentManager$1;
.super Ljava/lang/Object;
.source "CvContentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/apprupt/sdk/CvContentManager$1;->a:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    new-instance v1, Lcom/apprupt/sdk/CvPreloaderResponse;

    invoke-direct {v1}, Lcom/apprupt/sdk/CvPreloaderResponse;-><init>()V

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvContentManager$PreloaderListener;->onPreloaderFinish(Lcom/apprupt/sdk/CvPreloaderResponse;)V

    .line 108
    return-void
.end method
