.class Lcom/smaato/soma/video/c$7;
.super Lcom/smaato/soma/l;
.source "VASTView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/c;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
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
.field final synthetic a:Lcom/smaato/soma/video/c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/c;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/smaato/soma/video/c$7;->a:Lcom/smaato/soma/video/c;

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
    .line 362
    iget-object v0, p0, Lcom/smaato/soma/video/c$7;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/internal/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/d/c;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/smaato/soma/video/c$7;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/smaato/soma/video/c$7;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0}, Lcom/smaato/soma/video/c;->l(Lcom/smaato/soma/video/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/smaato/soma/video/c$7;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->d()Z

    .line 375
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/video/c$7;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->d()Z

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/smaato/soma/video/c$7;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
