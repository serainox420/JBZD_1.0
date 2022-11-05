.class Lcom/apprupt/sdk/CvConfig$8;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Task;


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
    .line 203
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$8;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$8;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Requesting config"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 207
    check-cast p1, Lcom/apprupt/sdk/CvUnderscore;

    .line 208
    invoke-static {}, Lcom/apprupt/sdk/CvConfig;->d()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Resolve: load config, result: <URLRequest>"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 209
    const-string v0, "/mCfg"

    invoke-static {v0}, Lcom/apprupt/sdk/CvUrl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/URLRequest;->b(Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    const-string v1, "_"

    .line 210
    invoke-virtual {p1}, Lcom/apprupt/sdk/CvUnderscore;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/URLRequest;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/URLRequest;->c()Lcom/apprupt/sdk/Q$Task;

    move-result-object v0

    .line 209
    invoke-interface {p2, v0}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 211
    return-void
.end method
