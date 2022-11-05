.class Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1$1;
.super Ljava/lang/Object;
.source "CvDefaultContentProvider.java"

# interfaces
.implements Lcom/apprupt/sdk/CvDevicePayload$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1$1;->a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Got payload /"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1$1;->a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;

    iget-object v3, v3, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;->a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;

    iget-object v3, v3, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v3, v3, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1$1;->a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase$1;->a:Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;

    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;->b(Ljava/lang/String;)V

    .line 54
    return-void
.end method
