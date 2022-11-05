.class Lcom/smaato/soma/internal/requests/c$a$2;
.super Lcom/smaato/soma/l;
.source "HttpConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/requests/c$a;->a(Lcom/smaato/soma/p;)V
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
.field final synthetic a:Lcom/smaato/soma/p;

.field final synthetic b:Lcom/smaato/soma/internal/requests/c$a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/requests/c$a;Lcom/smaato/soma/p;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/c$a$2;->b:Lcom/smaato/soma/internal/requests/c$a;

    iput-object p2, p0, Lcom/smaato/soma/internal/requests/c$a$2;->a:Lcom/smaato/soma/p;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/internal/requests/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Load async finished!"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 214
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/c$a$2;->b:Lcom/smaato/soma/internal/requests/c$a;

    iget-object v0, v0, Lcom/smaato/soma/internal/requests/c$a;->a:Lcom/smaato/soma/internal/requests/c;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/c;->a(Lcom/smaato/soma/internal/requests/c;)Lcom/smaato/soma/internal/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/c$a$2;->b:Lcom/smaato/soma/internal/requests/c$a;

    iget-object v0, v0, Lcom/smaato/soma/internal/requests/c$a;->a:Lcom/smaato/soma/internal/requests/c;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/c;->a(Lcom/smaato/soma/internal/requests/c;)Lcom/smaato/soma/internal/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/c$a$2;->a:Lcom/smaato/soma/p;

    invoke-interface {v0, v1}, Lcom/smaato/soma/internal/c/b;->b(Lcom/smaato/soma/p;)V

    .line 217
    :cond_0
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
    .line 207
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/c$a$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
