.class Lcom/apprupt/sdk/CvAppsList$5$1;
.super Ljava/lang/Object;
.source "CvAppsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvAppsList$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvAppsList$5;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvAppsList$5;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/apprupt/sdk/CvAppsList$5$1;->a:Lcom/apprupt/sdk/CvAppsList$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList$5$1;->a:Lcom/apprupt/sdk/CvAppsList$5;

    iget-object v0, v0, Lcom/apprupt/sdk/CvAppsList$5;->a:Lcom/apprupt/sdk/CvAppsList$MultiListener;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAppsList$5$1;->a:Lcom/apprupt/sdk/CvAppsList$5;

    iget-object v1, v1, Lcom/apprupt/sdk/CvAppsList$5;->b:Lcom/apprupt/sdk/CvAppsList;

    invoke-static {v1}, Lcom/apprupt/sdk/CvAppsList;->e(Lcom/apprupt/sdk/CvAppsList;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvAppsList$MultiListener;->a(Ljava/util/Set;)V

    .line 158
    return-void
.end method
