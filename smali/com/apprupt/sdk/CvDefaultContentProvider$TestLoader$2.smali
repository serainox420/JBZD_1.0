.class Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader$2;
.super Ljava/lang/Object;
.source "CvDefaultContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvPreloaderResponse;

.field final synthetic b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

.field final synthetic c:Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;Lcom/apprupt/sdk/CvPreloaderResponse;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader$2;->c:Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;

    iput-object p2, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader$2;->a:Lcom/apprupt/sdk/CvPreloaderResponse;

    iput-object p3, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader$2;->b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader$2;->c:Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;

    iget-object v1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader$2;->a:Lcom/apprupt/sdk/CvPreloaderResponse;

    iget-object v2, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader$2;->b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    invoke-static {v0, v1, v2}, Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;->a(Lcom/apprupt/sdk/CvDefaultContentProvider$TestLoader;Lcom/apprupt/sdk/CvPreloaderResponse;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;)V

    .line 274
    return-void
.end method
