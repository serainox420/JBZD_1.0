.class Lcom/apprupt/sdk/CvConfig$5;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$FailureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvConfig;->e()V
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
    .line 136
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$5;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 139
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$5;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Cannot load mCfg"

    aput-object v3, v1, v2

    invoke-interface {v0, p1, v1}, Lcom/apprupt/sdk/Logger$log;->b(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$5;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;J)J

    .line 141
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$5;->a:Lcom/apprupt/sdk/CvConfig;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig;->g:Lcom/apprupt/sdk/Q$Task;

    invoke-static {v0}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$5;->a:Lcom/apprupt/sdk/CvConfig;

    iget-object v1, v1, Lcom/apprupt/sdk/CvConfig;->e:Lcom/apprupt/sdk/Q$Task;

    .line 142
    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvConfig$5$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvConfig$5$1;-><init>(Lcom/apprupt/sdk/CvConfig$5;)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$FailureHandler;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$5;->a:Lcom/apprupt/sdk/CvConfig;

    iget-object v1, v1, Lcom/apprupt/sdk/CvConfig;->h:Lcom/apprupt/sdk/Q$SuccessHandler;

    .line 149
    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$SuccessHandler;)Lcom/apprupt/sdk/Q;

    .line 150
    return-void
.end method
