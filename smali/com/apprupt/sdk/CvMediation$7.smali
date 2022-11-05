.class Lcom/apprupt/sdk/CvMediation$7;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Lcom/apprupt/sdk/CvMediator$Completion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediation;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;Z[Ljava/lang/String;)Lcom/apprupt/sdk/CvMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

.field final synthetic b:Lcom/apprupt/sdk/CvContentOptions;

.field final synthetic c:Lcom/apprupt/sdk/CvMediation;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;Lcom/apprupt/sdk/CvContentOptions;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$7;->c:Lcom/apprupt/sdk/CvMediation;

    iput-object p2, p0, Lcom/apprupt/sdk/CvMediation$7;->a:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    iput-object p3, p0, Lcom/apprupt/sdk/CvMediation$7;->b:Lcom/apprupt/sdk/CvContentOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lcom/apprupt/sdk/CvMediation$7$2;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvMediation$7$2;-><init>(Lcom/apprupt/sdk/CvMediation$7;Lcom/apprupt/sdk/mediation/AdWrapper;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 274
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lcom/apprupt/sdk/CvMediation$7$1;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvMediation$7$1;-><init>(Lcom/apprupt/sdk/CvMediation$7;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 256
    return-void
.end method
