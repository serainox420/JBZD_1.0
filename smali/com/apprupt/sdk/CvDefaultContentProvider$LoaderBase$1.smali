.class Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;
.super Ljava/lang/Object;
.source "CvDefaultContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->e()Lcom/apprupt/sdk/CvContentManager$ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;->a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Waiting for device payload /"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;->a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;

    iget-object v3, v3, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v3, v3, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;->a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;

    iget-object v0, v0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->b:Landroid/content/Context;

    new-instance v1, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1$1;-><init>(Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;)V

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvDevicePayload;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvDevicePayload$Listener;)V

    .line 56
    return-void
.end method
