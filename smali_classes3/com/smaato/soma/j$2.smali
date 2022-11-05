.class Lcom/smaato/soma/j$2;
.super Lcom/smaato/soma/l;
.source "BaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/j;->getAdSettings()Lcom/smaato/soma/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Lcom/smaato/soma/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/j;


# direct methods
.method constructor <init>(Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/smaato/soma/j$2;->a:Lcom/smaato/soma/j;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/smaato/soma/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/smaato/soma/j$2;->a:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getAdDownloader()Lcom/smaato/soma/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/b;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

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
    .line 383
    invoke-virtual {p0}, Lcom/smaato/soma/j$2;->a()Lcom/smaato/soma/d;

    move-result-object v0

    return-object v0
.end method
