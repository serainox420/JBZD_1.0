.class Lcom/apprupt/sdk/CvAdWrapper$8;
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
    .line 197
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper$8;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    check-cast p1, Lcom/apprupt/sdk/SimpleJSON;

    .line 201
    const-string v0, "html"

    invoke-virtual {p1, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 203
    :cond_0
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$Error;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$8;->a:Lcom/apprupt/sdk/CvAdWrapper;

    const-string v2, "Malformed ad data (content is empty)."

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAdWrapper$Error;-><init>(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$8;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v1, v0}, Lcom/apprupt/sdk/CvAdWrapper;->c(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    invoke-interface {p2, p1}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 207
    return-void
.end method
