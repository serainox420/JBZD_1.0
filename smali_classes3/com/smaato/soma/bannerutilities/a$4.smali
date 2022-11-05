.class Lcom/smaato/soma/bannerutilities/a$4;
.super Lcom/smaato/soma/l;
.source "AbstractBannerPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/a;->c()V
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
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/smaato/soma/bannerutilities/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/a;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a$4;->b:Lcom/smaato/soma/bannerutilities/a;

    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/a$4;->a:Landroid/webkit/WebView;

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
    .line 207
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$4;->a:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$4;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 209
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
    .line 204
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
