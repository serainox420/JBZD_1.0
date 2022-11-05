.class Lcom/smaato/soma/j$21;
.super Lcom/smaato/soma/l;
.source "BaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/j;->setLocationUpdateEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/smaato/soma/j;


# direct methods
.method constructor <init>(Lcom/smaato/soma/j;Z)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/smaato/soma/j$21;->b:Lcom/smaato/soma/j;

    iput-boolean p2, p0, Lcom/smaato/soma/j$21;->a:Z

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/smaato/soma/j$21;->b:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getAdDownloader()Lcom/smaato/soma/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smaato/soma/j$21;->a:Z

    invoke-interface {v0, v1}, Lcom/smaato/soma/b;->setLocationUpdateEnabled(Z)V

    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/smaato/soma/j$21;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
