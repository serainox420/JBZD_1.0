.class Lcom/apprupt/sdk/CvConfig$1;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvConfig;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/apprupt/sdk/CvConfig;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvConfig;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$1;->b:Lcom/apprupt/sdk/CvConfig;

    iput-object p2, p0, Lcom/apprupt/sdk/CvConfig$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$1;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Config initialized"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$1;->b:Lcom/apprupt/sdk/CvConfig;

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;Landroid/content/Context;)Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$1;->b:Lcom/apprupt/sdk/CvConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvConfig;->a(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method
