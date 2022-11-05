.class Lcom/apprupt/sdk/CvAdWrapper$1;
.super Ljava/lang/Object;
.source "CvAdWrapper.java"

# interfaces
.implements Lcom/apprupt/sdk/CvContentManager$ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvAdWrapper;->k()V
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
    .line 47
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper$1;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/CvContentResponse;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    iget-boolean v0, p1, Lcom/apprupt/sdk/CvContentResponse;->a:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$1;->a:Lcom/apprupt/sdk/CvAdWrapper;

    iget-object v0, v0, Lcom/apprupt/sdk/CvAdWrapper;->a:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Cannot load ad:"

    aput-object v2, v1, v3

    iget-object v2, p1, Lcom/apprupt/sdk/CvContentResponse;->b:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$1;->a:Lcom/apprupt/sdk/CvAdWrapper;

    iget-object v1, p1, Lcom/apprupt/sdk/CvContentResponse;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$1;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$1;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvMediator;->c(Lcom/apprupt/sdk/mediation/AdWrapper;)V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$1;->a:Lcom/apprupt/sdk/CvAdWrapper;

    iget-object v0, v0, Lcom/apprupt/sdk/CvAdWrapper;->a:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Ad contents loaded"

    aput-object v2, v1, v3

    iget v2, p1, Lcom/apprupt/sdk/CvContentResponse;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p1, Lcom/apprupt/sdk/CvContentResponse;->d:Ljava/lang/Exception;

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/apprupt/sdk/CvContentResponse;->e:Lorg/json/JSONObject;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$1;->a:Lcom/apprupt/sdk/CvAdWrapper;

    new-instance v1, Lcom/apprupt/sdk/SimpleJSON;

    iget-object v2, p1, Lcom/apprupt/sdk/CvContentResponse;->e:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lcom/apprupt/sdk/SimpleJSON;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;Lcom/apprupt/sdk/SimpleJSON;)V

    goto :goto_0
.end method
