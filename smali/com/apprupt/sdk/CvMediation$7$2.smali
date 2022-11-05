.class Lcom/apprupt/sdk/CvMediation$7$2;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediation$7;->a(Lcom/apprupt/sdk/mediation/AdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/mediation/AdWrapper;

.field final synthetic b:Lcom/apprupt/sdk/CvMediation$7;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation$7;Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$7$2;->b:Lcom/apprupt/sdk/CvMediation$7;

    iput-object p2, p0, Lcom/apprupt/sdk/CvMediation$7$2;->a:Lcom/apprupt/sdk/mediation/AdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    invoke-static {}, Lcom/apprupt/sdk/CvMediation;->c()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvMediation$7$2;->b:Lcom/apprupt/sdk/CvMediation$7;

    iget-object v1, v1, Lcom/apprupt/sdk/CvMediation$7;->b:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v1, v1, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-static {}, Lcom/apprupt/sdk/CvMediation;->c()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvMediation$7$2;->b:Lcom/apprupt/sdk/CvMediation$7;

    iget-object v1, v1, Lcom/apprupt/sdk/CvMediation$7;->b:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v1, v1, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 270
    :goto_0
    iget-object v1, p0, Lcom/apprupt/sdk/CvMediation$7$2;->a:Lcom/apprupt/sdk/mediation/AdWrapper;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$7$2;->b:Lcom/apprupt/sdk/CvMediation$7;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$7;->a:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$7$2;->b:Lcom/apprupt/sdk/CvMediation$7;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$7;->a:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    new-instance v1, Lcom/apprupt/sdk/CvPreloaderResponse;

    invoke-direct {v1}, Lcom/apprupt/sdk/CvPreloaderResponse;-><init>()V

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvContentManager$PreloaderListener;->onPreloaderFinish(Lcom/apprupt/sdk/CvPreloaderResponse;)V

    .line 272
    :cond_0
    return-void

    .line 267
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-static {}, Lcom/apprupt/sdk/CvMediation;->c()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/CvMediation$7$2;->b:Lcom/apprupt/sdk/CvMediation$7;

    iget-object v2, v2, Lcom/apprupt/sdk/CvMediation$7;->b:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v2, v2, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
