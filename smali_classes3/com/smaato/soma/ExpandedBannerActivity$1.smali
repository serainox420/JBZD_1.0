.class Lcom/smaato/soma/ExpandedBannerActivity$1;
.super Lcom/smaato/soma/l;
.source "ExpandedBannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/ExpandedBannerActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/smaato/soma/ExpandedBannerActivity;


# direct methods
.method constructor <init>(Lcom/smaato/soma/ExpandedBannerActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/smaato/soma/ExpandedBannerActivity$1;->a:Lcom/smaato/soma/ExpandedBannerActivity;

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
    .line 231
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$1;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-static {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Lcom/smaato/soma/ExpandedBannerActivity;)Lcom/smaato/soma/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerStateListener()Lcom/smaato/soma/g;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity$1;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-static {v1}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Lcom/smaato/soma/ExpandedBannerActivity;)Lcom/smaato/soma/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    .line 233
    if-eqz v0, :cond_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$1;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-static {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->b(Lcom/smaato/soma/ExpandedBannerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v0

    const-string v1, "expanded"

    .line 239
    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/connector/a;->a(Ljava/lang/String;)V

    .line 242
    :cond_1
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
    .line 227
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
