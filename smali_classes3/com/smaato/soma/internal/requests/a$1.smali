.class Lcom/smaato/soma/internal/requests/a$1;
.super Lcom/smaato/soma/l;
.source "AdDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/requests/a;->e()V
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
.field final synthetic a:Lcom/smaato/soma/internal/requests/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/requests/a;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/a$1;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lcom/smaato/soma/q;->c()Lcom/smaato/soma/q;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$1;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/requests/a;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/d;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$1;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/requests/a;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/d;->b()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/smaato/soma/q;->a(JJ)V

    .line 278
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$1;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$1;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/requests/a;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/internal/requests/a$1;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v2}, Lcom/smaato/soma/internal/requests/a;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/requests/a;->b(Lcom/smaato/soma/d;Lcom/smaato/soma/internal/requests/settings/UserSettings;)Z

    .line 279
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
    .line 273
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
