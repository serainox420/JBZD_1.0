.class Lcom/smaato/soma/internal/requests/settings/a$6;
.super Lcom/smaato/soma/l;
.source "DeviceDataCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/requests/settings/a;->j()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/requests/settings/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/requests/settings/a;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/a$6;->a:Lcom/smaato/soma/internal/requests/settings/a;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a$6;->a:Lcom/smaato/soma/internal/requests/settings/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/settings/a;->a(Lcom/smaato/soma/internal/requests/settings/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 507
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/a$6;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
