.class Lcom/smaato/soma/internal/e/a$4$1$1$1$1;
.super Lcom/smaato/soma/l;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/e/a$4$1$1$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/smaato/soma/internal/e/a$4$1$1$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/e/a$4$1$1$1;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$4$1$1$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1$1$1;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 319
    const-string v0, ""

    .line 320
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$4$1$1$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1$1$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$4$1$1$1;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "Contains provocative or suggestive imagery"

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$4$1$1$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1$1$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4$1$1$1;->g:Lcom/smaato/soma/internal/e/a$4$1$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$4;->c:Lcom/smaato/soma/internal/e/a;

    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$4$1$1$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1$1$1;

    iget-object v2, v2, Lcom/smaato/soma/internal/e/a$4$1$1$1;->g:Lcom/smaato/soma/internal/e/a$4$1$1;

    iget-object v2, v2, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v2, v2, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v2, v2, Lcom/smaato/soma/internal/e/a$4;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/smaato/soma/internal/e/a$4$1$1$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1$1$1;

    iget-object v3, v3, Lcom/smaato/soma/internal/e/a$4$1$1$1;->g:Lcom/smaato/soma/internal/e/a$4$1$1;

    iget-object v3, v3, Lcom/smaato/soma/internal/e/a$4$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1;

    iget-object v3, v3, Lcom/smaato/soma/internal/e/a$4$1;->a:Lcom/smaato/soma/internal/e/a$4;

    iget-object v3, v3, Lcom/smaato/soma/internal/e/a$4;->b:Lcom/smaato/soma/p;

    invoke-virtual {v1, v2, v3, v0}, Lcom/smaato/soma/internal/e/a;->a(Landroid/content/Context;Lcom/smaato/soma/p;Ljava/lang/String;)V

    .line 338
    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$4$1$1$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1$1$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$4$1$1$1;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    const-string v0, "Is misleading (e.g. simulates a dialog or app component)"

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$4$1$1$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1$1$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$4$1$1$1;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    const-string v0, "Is shaky, flashing or flickering"

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$4$1$1$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1$1$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$4$1$1$1;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    const-string v0, "Contains inappropriate content"

    goto :goto_0

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$4$1$1$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1$1$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$4$1$1$1;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    const-string v0, "Automatically triggers unwanted behavior (redirects/downloads)"

    goto :goto_0

    .line 330
    :cond_4
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$4$1$1$1$1;->a:Lcom/smaato/soma/internal/e/a$4$1$1$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$4$1$1$1;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 331
    const-string v0, "Automatically plays audio or video"

    goto :goto_0

    .line 333
    :cond_5
    const-string v0, "Not specified"

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
    .line 316
    invoke-virtual {p0}, Lcom/smaato/soma/internal/e/a$4$1$1$1$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
