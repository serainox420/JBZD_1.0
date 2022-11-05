.class Lcom/smaato/soma/internal/a$1;
.super Lcom/smaato/soma/l;
.source "DefaultFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/a;->a(Landroid/content/Context;Lcom/smaato/soma/j;)Lcom/smaato/soma/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Lcom/smaato/soma/internal/requests/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/smaato/soma/j;

.field final synthetic c:Lcom/smaato/soma/internal/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/a;Landroid/content/Context;Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/smaato/soma/internal/a$1;->c:Lcom/smaato/soma/internal/a;

    iput-object p2, p0, Lcom/smaato/soma/internal/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/smaato/soma/internal/a$1;->b:Lcom/smaato/soma/j;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/smaato/soma/internal/requests/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/a$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/smaato/soma/internal/a$1;->b:Lcom/smaato/soma/j;

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/internal/requests/a;-><init>(Landroid/content/Context;Lcom/smaato/soma/j;)V

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
    .line 80
    invoke-virtual {p0}, Lcom/smaato/soma/internal/a$1;->a()Lcom/smaato/soma/internal/requests/a;

    move-result-object v0

    return-object v0
.end method
