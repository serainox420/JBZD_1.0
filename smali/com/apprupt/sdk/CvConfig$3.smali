.class Lcom/apprupt/sdk/CvConfig$3;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvConfig$Listener;

.field final synthetic b:Lcom/apprupt/sdk/CvConfig;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$3;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->b(Lcom/apprupt/sdk/CvConfig;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$3;->a:Lcom/apprupt/sdk/CvConfig$Listener;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method
