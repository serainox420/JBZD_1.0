.class Lcom/apprupt/sdk/CvConfig$2;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvConfig$Listener;

.field final synthetic b:Lcom/apprupt/sdk/CvConfig;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvConfig;Lcom/apprupt/sdk/CvConfig$Listener;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$2;->b:Lcom/apprupt/sdk/CvConfig;

    iput-object p2, p0, Lcom/apprupt/sdk/CvConfig$2;->a:Lcom/apprupt/sdk/CvConfig$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$2;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->b(Lcom/apprupt/sdk/CvConfig;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$2;->a:Lcom/apprupt/sdk/CvConfig$Listener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$2;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->c(Lcom/apprupt/sdk/CvConfig;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$2;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v1}, Lcom/apprupt/sdk/CvConfig;->d(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Q;

    move-result-object v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$2;->b:Lcom/apprupt/sdk/CvConfig;

    new-instance v2, Lcom/apprupt/sdk/CvConfig$2$1;

    invoke-direct {v2, p0, v0}, Lcom/apprupt/sdk/CvConfig$2$1;-><init>(Lcom/apprupt/sdk/CvConfig$2;I)V

    invoke-virtual {v1, v2}, Lcom/apprupt/sdk/CvConfig;->a(Ljava/lang/Runnable;)V

    .line 84
    :cond_0
    return-void
.end method
