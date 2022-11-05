.class Lcom/smaato/soma/internal/requests/a$3;
.super Lcom/smaato/soma/l;
.source "AdDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/requests/a;->setLocationUpdateEnabled(Z)V
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

.field final synthetic b:Lcom/smaato/soma/internal/requests/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/requests/a;Z)V
    .locals 0

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/a$3;->b:Lcom/smaato/soma/internal/requests/a;

    iput-boolean p2, p0, Lcom/smaato/soma/internal/requests/a$3;->a:Z

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
    .line 1256
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$3;->b:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->e(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/internal/requests/settings/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smaato/soma/internal/requests/a$3;->a:Z

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/settings/c;->a(Z)V

    .line 1257
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$3;->b:Lcom/smaato/soma/internal/requests/a;

    iget-boolean v1, p0, Lcom/smaato/soma/internal/requests/a$3;->a:Z

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/requests/a;->a(Lcom/smaato/soma/internal/requests/a;Z)Z

    .line 1258
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
    .line 1253
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
