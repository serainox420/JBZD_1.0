.class Lcom/smaato/soma/b/c$1;
.super Lcom/smaato/soma/l;
.source "ToasterLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/b/c;->onWindowFocusChanged(Z)V
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

.field final synthetic b:Lcom/smaato/soma/b/c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/b/c;Z)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/smaato/soma/b/c$1;->b:Lcom/smaato/soma/b/c;

    iput-boolean p2, p0, Lcom/smaato/soma/b/c$1;->a:Z

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
    .line 74
    iget-boolean v0, p0, Lcom/smaato/soma/b/c$1;->a:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a;->m()V

    .line 78
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
    .line 70
    invoke-virtual {p0}, Lcom/smaato/soma/b/c$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
