.class Lcom/apprupt/sdk/CvAdWrapper$2;
.super Ljava/lang/Object;
.source "CvAdWrapper.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$FailureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/SimpleJSON;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvAdWrapper;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvAdWrapper;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper$2;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    instance-of v0, p1, Lcom/apprupt/sdk/CvAdWrapper$Fallback;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$2;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvAdWrapper;->b(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$2;->a:Lcom/apprupt/sdk/CvAdWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Falling to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$2;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->a()Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "interstitial"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$2;->a:Lcom/apprupt/sdk/CvAdWrapper;

    iget-object v0, v0, Lcom/apprupt/sdk/CvAdWrapper;->a:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/apprupt/sdk/CvAdWrapper$2;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v2}, Lcom/apprupt/sdk/CvAdWrapper;->b(Lcom/apprupt/sdk/CvAdWrapper;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 87
    :goto_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$2;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$2;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvMediator;->c(Lcom/apprupt/sdk/mediation/AdWrapper;)V

    .line 88
    return-void

    .line 81
    :cond_0
    const-string v0, "inline"

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$2;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$2;->a:Lcom/apprupt/sdk/CvAdWrapper;

    iget-object v0, v0, Lcom/apprupt/sdk/CvAdWrapper;->a:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot process ad"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/apprupt/sdk/CvAdWrapper$2;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v2}, Lcom/apprupt/sdk/CvAdWrapper;->b(Lcom/apprupt/sdk/CvAdWrapper;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_1
.end method
