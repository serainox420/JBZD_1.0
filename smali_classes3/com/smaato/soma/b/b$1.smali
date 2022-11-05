.class Lcom/smaato/soma/b/b$1;
.super Lcom/smaato/soma/l;
.source "CloseButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/b/b;-><init>(Landroid/content/Context;)V
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
.field final synthetic a:Lcom/smaato/soma/b/b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/b/b;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smaato/soma/b/b$1;->a:Lcom/smaato/soma/b/b;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smaato/soma/b/b$1;->a:Lcom/smaato/soma/b/b;

    invoke-static {v0}, Lcom/smaato/soma/b/b;->a(Lcom/smaato/soma/b/b;)V

    .line 33
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
    .line 29
    invoke-virtual {p0}, Lcom/smaato/soma/b/b$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
