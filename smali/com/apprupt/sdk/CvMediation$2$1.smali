.class Lcom/apprupt/sdk/CvMediation$2$1;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$FailureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediation$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvMediation$2;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation$2;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$2$1;->a:Lcom/apprupt/sdk/CvMediation$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Lcom/apprupt/sdk/CvMediation;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Cannot initialize mediaition"

    aput-object v3, v1, v2

    invoke-interface {v0, p1, v1}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method
