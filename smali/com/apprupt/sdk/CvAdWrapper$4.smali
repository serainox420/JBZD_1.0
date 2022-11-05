.class Lcom/apprupt/sdk/CvAdWrapper$4;
.super Ljava/lang/Object;
.source "CvAdWrapper.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvAdWrapper;
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
    .line 92
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper$4;->a:Lcom/apprupt/sdk/CvAdWrapper;

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
    .line 95
    check-cast p1, Lcom/apprupt/sdk/SimpleJSON;

    .line 96
    const-string v0, "logMessage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 98
    const-string v1, "CVSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n============================================================\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n============================================================"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-interface {p2, p1}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 101
    return-void
.end method
