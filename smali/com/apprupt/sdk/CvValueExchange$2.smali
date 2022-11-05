.class Lcom/apprupt/sdk/CvValueExchange$2;
.super Ljava/lang/Object;
.source "CvValueExchange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvValueExchange;->a(Landroid/content/Context;ILcom/apprupt/sdk/CvContentManager$PreloaderListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/apprupt/sdk/CvValueExchange;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvValueExchange;ILcom/apprupt/sdk/CvContentManager$PreloaderListener;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/apprupt/sdk/CvValueExchange$2;->f:Lcom/apprupt/sdk/CvValueExchange;

    iput p2, p0, Lcom/apprupt/sdk/CvValueExchange$2;->a:I

    iput-object p3, p0, Lcom/apprupt/sdk/CvValueExchange$2;->b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    iput-object p4, p0, Lcom/apprupt/sdk/CvValueExchange$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/apprupt/sdk/CvValueExchange$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/apprupt/sdk/CvValueExchange$2;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 245
    invoke-static {}, Lcom/apprupt/sdk/CvValueExchange;->c()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Preparing for ve..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 246
    new-instance v0, Lcom/apprupt/sdk/CvValueExchange$2$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvValueExchange$2$1;-><init>(Lcom/apprupt/sdk/CvValueExchange$2;)V

    invoke-static {v0, v4}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 274
    return-void
.end method
