.class Lcom/smaato/soma/j$4;
.super Lcom/smaato/soma/l;
.source "BaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/j;->setUserSettings(Lcom/smaato/soma/internal/requests/settings/UserSettings;)V
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
.field final synthetic a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

.field final synthetic b:Lcom/smaato/soma/j;


# direct methods
.method constructor <init>(Lcom/smaato/soma/j;Lcom/smaato/soma/internal/requests/settings/UserSettings;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/smaato/soma/j$4;->b:Lcom/smaato/soma/j;

    iput-object p2, p0, Lcom/smaato/soma/j$4;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

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
    .line 413
    iget-object v0, p0, Lcom/smaato/soma/j$4;->b:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getAdDownloader()Lcom/smaato/soma/b;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/j$4;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    invoke-interface {v0, v1}, Lcom/smaato/soma/b;->setUserSettings(Lcom/smaato/soma/internal/requests/settings/UserSettings;)V

    .line 414
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
    .line 410
    invoke-virtual {p0}, Lcom/smaato/soma/j$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
