.class Lcom/apprupt/sdk/CvConfig$5$1;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$FailureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvConfig$5;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvConfig$5;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvConfig$5;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$5$1;->a:Lcom/apprupt/sdk/CvConfig$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$5$1;->a:Lcom/apprupt/sdk/CvConfig$5;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$5;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Cannot restore mCfg"

    aput-object v3, v1, v2

    invoke-interface {v0, p1, v1}, Lcom/apprupt/sdk/Logger$log;->b(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$5$1;->a:Lcom/apprupt/sdk/CvConfig$5;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$5;->a:Lcom/apprupt/sdk/CvConfig;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig;->h:Lcom/apprupt/sdk/Q$SuccessHandler;

    new-instance v1, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v1}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Q$SuccessHandler;->a(Ljava/lang/Object;)V

    .line 148
    return-void
.end method
