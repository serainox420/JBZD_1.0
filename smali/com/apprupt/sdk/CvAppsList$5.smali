.class Lcom/apprupt/sdk/CvAppsList$5;
.super Ljava/lang/Object;
.source "CvAppsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvAppsList;->b(Lcom/apprupt/sdk/CvAppsList$MultiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvAppsList$MultiListener;

.field final synthetic b:Lcom/apprupt/sdk/CvAppsList;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvAppsList;Lcom/apprupt/sdk/CvAppsList$MultiListener;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/apprupt/sdk/CvAppsList$5;->b:Lcom/apprupt/sdk/CvAppsList;

    iput-object p2, p0, Lcom/apprupt/sdk/CvAppsList$5;->a:Lcom/apprupt/sdk/CvAppsList$MultiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList$5;->b:Lcom/apprupt/sdk/CvAppsList;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAppsList;->d(Lcom/apprupt/sdk/CvAppsList;)V

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/apprupt/sdk/CvAppsList$5$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvAppsList$5$1;-><init>(Lcom/apprupt/sdk/CvAppsList$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method
