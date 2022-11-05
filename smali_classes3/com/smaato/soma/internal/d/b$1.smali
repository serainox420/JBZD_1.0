.class Lcom/smaato/soma/internal/d/b$1;
.super Lcom/smaato/soma/l;
.source "SkipAdButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/d/b;-><init>(Landroid/content/Context;Z)V
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

.field final synthetic b:Lcom/smaato/soma/internal/d/b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/d/b;Z)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/smaato/soma/internal/d/b$1;->b:Lcom/smaato/soma/internal/d/b;

    iput-boolean p2, p0, Lcom/smaato/soma/internal/d/b$1;->a:Z

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
    .line 34
    iget-object v0, p0, Lcom/smaato/soma/internal/d/b$1;->b:Lcom/smaato/soma/internal/d/b;

    iget-boolean v1, p0, Lcom/smaato/soma/internal/d/b$1;->a:Z

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/d/b;->a(Lcom/smaato/soma/internal/d/b;Z)V

    .line 35
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
    .line 31
    invoke-virtual {p0}, Lcom/smaato/soma/internal/d/b$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
