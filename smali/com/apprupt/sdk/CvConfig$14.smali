.class Lcom/apprupt/sdk/CvConfig$14;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$SuccessHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvConfig;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvConfig;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->l(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/SerialExecutor;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvConfig$14$1;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvConfig$14$1;-><init>(Lcom/apprupt/sdk/CvConfig$14;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method
