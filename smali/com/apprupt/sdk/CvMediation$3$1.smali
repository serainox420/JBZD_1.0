.class Lcom/apprupt/sdk/CvMediation$3$1;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediation$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvMediation$3;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation$3;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$3$1;->a:Lcom/apprupt/sdk/CvMediation$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$3$1;->a:Lcom/apprupt/sdk/CvMediation$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$3;->b:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v0}, Lcom/apprupt/sdk/CvMediation;->b(Lcom/apprupt/sdk/CvMediation;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$3$1;->a:Lcom/apprupt/sdk/CvMediation$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$3;->b:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v0}, Lcom/apprupt/sdk/CvMediation;->b(Lcom/apprupt/sdk/CvMediation;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvMediation$3$1$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvMediation$3$1$1;-><init>(Lcom/apprupt/sdk/CvMediation$3$1;)V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$CompletionHandler;)Lcom/apprupt/sdk/Q;

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$3$1;->a:Lcom/apprupt/sdk/CvMediation$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$3;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
