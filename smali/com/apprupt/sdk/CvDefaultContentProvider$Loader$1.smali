.class Lcom/apprupt/sdk/CvDefaultContentProvider$Loader$1;
.super Ljava/lang/Object;
.source "CvDefaultContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->a(Ljava/lang/String;Ljava/lang/Exception;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvContentResponse;

.field final synthetic b:Lcom/apprupt/sdk/CvContentManager$ContentListener;

.field final synthetic c:Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;Lcom/apprupt/sdk/CvContentResponse;Lcom/apprupt/sdk/CvContentManager$ContentListener;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader$1;->c:Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;

    iput-object p2, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader$1;->a:Lcom/apprupt/sdk/CvContentResponse;

    iput-object p3, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader$1;->b:Lcom/apprupt/sdk/CvContentManager$ContentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 191
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Calling callback with error"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader$1;->c:Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;

    iget-object v1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader$1;->a:Lcom/apprupt/sdk/CvContentResponse;

    iget-object v2, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader$1;->b:Lcom/apprupt/sdk/CvContentManager$ContentListener;

    invoke-static {v0, v1, v2}, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->a(Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;Lcom/apprupt/sdk/CvContentResponse;Lcom/apprupt/sdk/CvContentManager$ContentListener;)V

    .line 193
    return-void
.end method
