.class Lcom/apprupt/sdk/CvMediation$6;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvMediation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvMediation;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$6;->a:Lcom/apprupt/sdk/CvMediation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    check-cast p1, Lcom/apprupt/sdk/SimpleJSON;

    .line 195
    invoke-static {}, Lcom/apprupt/sdk/CvMediation;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Processing ve config..."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->d:Lcom/apprupt/sdk/CvValueExchange;

    const-string v1, "valueExchange"

    invoke-virtual {p1, v1}, Lcom/apprupt/sdk/SimpleJSON;->e(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvValueExchange;->a(Lcom/apprupt/sdk/SimpleJSON;)V

    .line 197
    invoke-interface {p2, p1}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 198
    return-void
.end method
