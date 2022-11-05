.class Lcom/apprupt/sdk/CvConfig$6;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$SuccessHandler;


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
    .line 153
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$6;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 156
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$6;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Config loaded successfully"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$6;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/apprupt/sdk/CvConfig;->b(Lcom/apprupt/sdk/CvConfig;J)J

    .line 158
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$6;->a:Lcom/apprupt/sdk/CvConfig;

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$6;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v1}, Lcom/apprupt/sdk/CvConfig;->j(Lcom/apprupt/sdk/CvConfig;)J

    move-result-wide v2

    const-wide/32 v4, 0x1b77400

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;J)J

    .line 159
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$6;->a:Lcom/apprupt/sdk/CvConfig;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig;->h:Lcom/apprupt/sdk/Q$SuccessHandler;

    invoke-interface {v0, p1}, Lcom/apprupt/sdk/Q$SuccessHandler;->a(Ljava/lang/Object;)V

    .line 160
    return-void
.end method
