.class Lcom/smaato/soma/bannerutilities/g$b$6;
.super Lcom/smaato/soma/l;
.source "VideoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/g$b;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/bannerutilities/g$b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g$b;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$b$6;->a:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$6;->a:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-static {v0}, Lcom/smaato/soma/bannerutilities/g$b;->c(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$6;->a:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-static {v1}, Lcom/smaato/soma/bannerutilities/g$b;->a(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 469
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$6;->a:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-static {v0}, Lcom/smaato/soma/bannerutilities/g$b;->d(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 470
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 465
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/g$b$6;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
