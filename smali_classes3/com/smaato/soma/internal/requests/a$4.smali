.class Lcom/smaato/soma/internal/requests/a$4;
.super Lcom/smaato/soma/l;
.source "AdDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/requests/a;->a(Lcom/smaato/soma/c;)V
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
.field final synthetic a:Lcom/smaato/soma/c;

.field final synthetic b:Lcom/smaato/soma/internal/requests/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/requests/a;Lcom/smaato/soma/c;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/a$4;->b:Lcom/smaato/soma/internal/requests/a;

    iput-object p2, p0, Lcom/smaato/soma/internal/requests/a$4;->a:Lcom/smaato/soma/c;

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
    .line 348
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$4;->b:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->a(Lcom/smaato/soma/internal/requests/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$4;->a:Lcom/smaato/soma/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
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
    .line 345
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
